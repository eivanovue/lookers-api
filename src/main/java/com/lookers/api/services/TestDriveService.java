package com.lookers.api.services;

import com.lookers.api.model.TestDrive;

import java.util.List;
import java.util.Optional;

public interface TestDriveService {

    List<TestDrive> getAllTestDrives();

    Optional<TestDrive> getTestDriveById(Integer id);

    boolean existsByPhone(String phone);

    TestDrive save(TestDrive testDrive);

    void delete(TestDrive testDrive);
}
