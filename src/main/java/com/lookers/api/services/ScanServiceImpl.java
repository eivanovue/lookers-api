package com.lookers.api.services;

import com.lookers.api.exceptions.ScanNotFoundException;
import com.lookers.api.model.Car;
import com.lookers.api.model.Scan;
import com.lookers.api.repository.ScanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Service
public class ScanServiceImpl implements ScanService {

    @Autowired
    private ScanRepository scanRepository;

    @Override
    public List<Scan> getAllScans() {
        return scanRepository.findAll();
    }

    @Override
    public Optional<Scan> getScanById(Integer id) {
        if(scanRepository.findById(id).isEmpty()){
            throw new ScanNotFoundException();
        } else {
            return scanRepository.findById(id);
        }
    }

    @Override
    public List<Scan> getScansByDateTimeBetween(LocalDateTime start, LocalDateTime end) {
        if(scanRepository.findAllByScanDateTimeBetween(start, end).isEmpty()){
            throw new ScanNotFoundException();
        } else {
            return scanRepository.findAllByScanDateTimeBetween(start, end);
        }
    }

    @Override
    public int getNumberOfScansToday() {
        var now = LocalDateTime.now();
        return scanRepository.findAllByScanDateTimeBetween(now.minusDays(1), now).size();
    }

    @Override
    public int getNumberOfScansForThePastWeek() {
        var now = LocalDateTime.now();
        return scanRepository.findAllByScanDateTimeBetween(now.minusWeeks(1), now).size();
    }

    @Override
    public int getNumberOfScansForThePastMonth() {
        var now = LocalDateTime.now();
        return scanRepository.findAllByScanDateTimeBetween(now.minusMonths(1), now).size();
    }

    @Override
    public int getNumberOfScansForAllTime() {
        return scanRepository.findAll().size();
    }

    @Override
    public int getNumberOfScansForCar(Car car) {
        return scanRepository.countByCar(car);
    }

    @Override
    public Scan save(Scan scan) {
        return scanRepository.save(scan);
    }

    @Override
    public void delete(Scan scan){
        scanRepository.delete(scan);
    }
}
