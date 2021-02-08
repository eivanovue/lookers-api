package com.lookers.api.misc;

import java.util.HashMap;
import java.util.Map;

public enum TransmissionType {
    MANUAL("Manual"), AUTOMATIC("Automatic"), SEMI_AUTOMATIC("Semi-automatic");

    private final String label;

    private TransmissionType(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
