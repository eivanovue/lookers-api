package com.lookers.api.services;

import com.lookers.api.model.Car;
import com.lookers.api.model.Scan;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

public interface ScanService {

    List<Scan> getAllScans();

    Optional<Scan> getScanById(Integer id);

    List<Scan> getScansByDateTimeBetween(LocalDateTime start, LocalDateTime end);

    int getNumberOfScansToday();

    int getNumberOfScansForThePastWeek();

    int getNumberOfScansForThePastMonth();

    int getNumberOfScansForAllTime();

    int getNumberOfScansForCar(Car car);

    Scan save(Scan scan);

    void delete(Scan scan);
}
