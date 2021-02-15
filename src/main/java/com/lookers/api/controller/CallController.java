package com.lookers.api.controller;

import com.lookers.api.form.CallForm;
import com.lookers.api.model.Call;
import com.lookers.api.model.Car;
import com.lookers.api.services.CallService;
import com.lookers.api.services.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class CallController {

    @Autowired
    private CarService carService;

    @Autowired
    private CallService callService;

    /* view booking success screen */
    @GetMapping(value = "/call/view/{id}")
    public ModelAndView callScheduleStatus(@PathVariable Integer id){
        ModelAndView model = new ModelAndView("callSuccess");

        Call call;

        if(callService.getCallById(id).isPresent()){
            call = callService.getCallById(id).get();
            model.addObject("call", call);
        }

        return model;
    }

    /* go to create schedule call view */
    @GetMapping(value = "/call/car/{id}")
    public ModelAndView showCallScheduleForm(@PathVariable Integer id){
        ModelAndView model = new ModelAndView("scheduleCall");

        Car car;

        if(carService.getCarById(id).isPresent()){
            car = carService.getCarById(id).get();
            model.addObject("car", car);
            model.addObject("form", new CallForm());
        }

        return model;
    }

    /* post mapping for creating a scheduled call */
    @PostMapping("/call/car/{id}/create")
    public ModelAndView getCallScheduleForm(@PathVariable Integer id,
                                                @Valid CallForm callForm,
                                                BindingResult bindingResult) {

        /* get corresponding car */
        Car car = null;

        if(carService.getCarById(id).isPresent()) car = carService.getCarById(id).get();

        if (!bindingResult.hasErrors()) {

            /* create call object */
            Call call = new Call();
            call.setName(callForm.getName());
            call.setEmail(callForm.getEmail());
            call.setPhone(callForm.getPhone());
            call.setDate(callForm.getDate());
            call.setTime(callForm.getTime());
            call.setCar(car);

            /* checks */
            if(callService.existsByPhone(call.getPhone())) {
                ModelAndView scheduleCall = new ModelAndView("scheduleCall");
                scheduleCall.addObject("car", car);
                scheduleCall.addObject("unique", false);
                return scheduleCall;
            }

            /* persist to db */
            callService.save(call);

            ModelAndView callSuccess = new ModelAndView("callSuccess");
            callSuccess.setViewName("redirect:/call/view/" + car.getId());
            callSuccess.addObject("call", call);

            return callSuccess;
        }

        ModelAndView scheduleCall = new ModelAndView("scheduleCall");
        scheduleCall.addObject("car", car);

        return scheduleCall;
    }


}
