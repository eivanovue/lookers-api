package com.lookers.api.repository;

import com.lookers.api.model.Car;
import com.lookers.api.model.Scan;
import org.springframework.data.repository.CrudRepository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

public interface ScanRepository extends CrudRepository<Scan, Integer> {

    List<Scan> findAll();

    Optional<Scan> findById(Integer id);

    List<Scan> findAllByScanDateTimeBetween(
            LocalDateTime scanDateTimeStart,
            LocalDateTime scanDateTimeEnd);

    int countByCar(Car car);

    Scan save (Scan scan);

    void delete(Scan scan);
}
