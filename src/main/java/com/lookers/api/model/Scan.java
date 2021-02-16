package com.lookers.api.model;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
public class Scan {

    @Id
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "seq_scan"
    )
    @SequenceGenerator(
            name = "seq_scan",
            initialValue = 7
    )
    private Integer id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="car_id")
    private Car car;

    private LocalDateTime scanDateTime;

    public Scan() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    public LocalDateTime getScanDateTime() {
        return scanDateTime;
    }

    public void setScanDateTime(LocalDateTime scanDateTime) {
        this.scanDateTime = scanDateTime;
    }
}
