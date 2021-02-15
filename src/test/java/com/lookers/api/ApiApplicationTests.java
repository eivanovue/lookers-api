package com.lookers.api;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.lookers.api.exceptions.CarNotFoundException;
import com.lookers.api.model.Car;
import com.lookers.api.services.CarService;
import org.junit.Before;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.transaction.Transactional;
import java.math.BigDecimal;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;


@SpringBootTest
@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
@AutoConfigureMockMvc
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
class ApiApplicationTests {

	@Autowired
	private CarService carService;

	@Before
	void setUp() {
		//Create car entity
		Car car = new Car();
		car.setId(1);
		car.setBrand("AUDI A1 SPORTBACK");
		car.setModel("30 TFSI 110 Sport 5dr");
		car.setRRP(BigDecimal.valueOf(21430));
		car.setPrice(BigDecimal.valueOf(20997));
		car.setSaving(BigDecimal.valueOf(433));
		car.setMileage(10);
		car.setRegistration("NEW (In stock)");
		car.setFuelType("Petrol");
		car.setEngineSize("1L");
		car.setDoors(5);
		car.setBodyStyle("Hatchback");
		car.setImgSrc("https://lkswebprdcdnep4.azureedge.net:443/api/image/stock/7afb2372-7ba7-4ec0-bdc4-c5d7d9cbfb2c?size=800x600&quality=80");
		car.setViewCarUrl("https://www.lookers.co.uk/audi/new-in-stock-car/audi/a1/30-tfsi-110-sport-5dr/id/311524");
		car.setBuyCarUrl("https://www.lookers.co.uk/deal-builder/finance-options/lgar-152216n");
		car.setIdNumber(311524);
		car.setSold(false);

		//persist into the database
		carService.save(car);
	}

	@Test
	void testAddAndRetrieveCar() {
		//test that it exists in the list of cars
		assertThat(carService.getAllCars().isEmpty()).isFalse();
	}

	@Test
	void testDeleteCar(){
		Car car;

		if(carService.getCarById(1).isPresent()){
			car = carService.getCarById(1).get();
			carService.delete(car);
		} else {
			car = null;
		}

		Assertions.assertThrows(CarNotFoundException.class, () -> {
			final Car test = carService.getCarById(1).get();
		});
	}

}
