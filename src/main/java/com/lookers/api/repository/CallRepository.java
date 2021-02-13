package com.lookers.api.repository;

import com.lookers.api.model.Call;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface CallRepository extends CrudRepository<Call, Integer> {

    List<Call> findAll();

    Optional<Call> findById(Integer id);

    Call save (Call call);

    void delete(Call call);
}
