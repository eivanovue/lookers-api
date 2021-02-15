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
		car.setMileage(13900);
		car.setDoors(2);
		car.setYear(2019);
		car.setDiscount(12);
		car.setPrice(BigDecimal.valueOf(162748));
		car.setPriceAfterDiscount(BigDecimal.valueOf(142950));
		car.setDiscounted(true);
		car.setMake("Bentley");
		car.setModel("Continental GT");
		car.setBody("Coupe");
		car.setEngineSize("6L W12");
		car.setFuelType("Petrol");
		car.setIsRegistered(false);
		car.setImgSrc("https://lkswebprdcdnep4.azureedge.net:443/api/image/stock/f6fb5a5e-3b9c-4847-aabf-2e5fd9a6af4c?size=1024x768&quality=80");
		car.setExtra("First Edition");
		car.setRegistration("NEW (In Stock)");
		car.setTransmissionType("Automatic");
		car.setViewCarUrl("https://www.charleshurstgroup.co.uk/bentley/used-car/bentley/continental-gt/6-0-w12-first-edition-2dr-auto/id/323631");
		car.setBuyCarUrl("https://www.lookers.co.uk/deal-builder/finance-options/h04-4522216");
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
			final Car test = carService.getCarById(2).get();
		});
	}

}
