package com.karelin.siteSmm.services;

import com.karelin.siteSmm.modules.Example;
import com.karelin.siteSmm.repositories.ExampleRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ExampleService {
    private final ExampleRepository exampleRepository;

    public List<Example> listExamples(){
        return exampleRepository.findAll();
    }
}
