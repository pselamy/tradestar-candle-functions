package com.verlumen.tradestar.functions.candles.fission;

import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;

import io.fission.Function;
import io.fission.Context;

public class GetCandles implements Function<Object, Object> {
    @Override
    public ResponseEntity<?> call(RequestEntity req, Context context) {
        return ResponseEntity.ok("Hello World!");
    }
}
