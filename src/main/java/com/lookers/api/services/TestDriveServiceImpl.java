package com.lookers.api.services;

import com.lookers.api.exceptions.TestDriveNotFoundException;
import com.lookers.api.model.TestDrive;
import com.lookers.api.repository.TestDriveRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TestDriveServiceImpl implements TestDriveService {

    @Autowired
    private TestDriveRepository testDriveRepository;

    @Override
    public List<TestDrive> getAllTestDrives() {
        return testDriveRepository.findAll();
    }

    @Override
    public Optional<TestDrive> getTestDriveById(Integer id) {
        if(testDriveRepository.findById(id).isEmpty()){
            throw new TestDriveNotFoundException();
        } else {
            return testDriveRepository.findById(id);
        }
    }

    @Override
    public TestDrive save(TestDrive testDrive) {
        return testDriveRepository.save(testDrive);
    }

    @Override
    public void delete(TestDrive testDrive){
        testDriveRepository.delete(testDrive);
    }
}
