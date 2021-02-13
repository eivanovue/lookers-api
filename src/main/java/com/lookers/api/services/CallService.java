package com.lookers.api.services;

import com.lookers.api.model.Call;

import java.util.List;
import java.util.Optional;

public interface CallService {

    List<Call> getAllCalls();

    Optional<Call> getCallById(Integer id);

    Call save(Call call);

    void delete(Call call);
}
