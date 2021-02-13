package com.lookers.api.services;

import com.lookers.api.exceptions.CallNotFoundException;
import com.lookers.api.model.Call;
import com.lookers.api.repository.CallRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CallServiceImpl implements CallService {

    @Autowired
    private CallRepository callRepository;

    @Override
    public List<Call> getAllCalls() {
        return callRepository.findAll();
    }

    @Override
    public Optional<Call> getCallById(Integer id) {
        if(callRepository.findById(id).isEmpty()){
            throw new CallNotFoundException();
        } else {
            return callRepository.findById(id);
        }
    }

    @Override
    public Call save(Call call) {
        return callRepository.save(call);
    }

    @Override
    public void delete(Call call){
        callRepository.delete(call);
    }
}
