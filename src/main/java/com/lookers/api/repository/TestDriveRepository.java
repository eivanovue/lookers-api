package com.lookers.api.repository;

import com.lookers.api.model.TestDrive;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface TestDriveRepository extends CrudRepository<TestDrive, Integer> {

    List<TestDrive> findAll();

    Optional<TestDrive> findById(Integer id);

    TestDrive save (TestDrive testDrive);

    void delete(TestDrive testDrive);
}
