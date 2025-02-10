package com.divyan.aquanet.repo;

import com.divyan.aquanet.model.SensorData;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;
import org.springframework.stereotype.Repository;

@Repository
public interface SensorDataRepository extends MongoRepository<SensorData, String> {
}
