package com.karelin.siteSmm.controllers;

import com.karelin.siteSmm.modules.Example;
import com.karelin.siteSmm.repositories.ExampleRepository;
import com.karelin.siteSmm.services.ExampleService;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.io.ByteArrayInputStream;

@Controller
@RequiredArgsConstructor
public class MainController {
    private final ExampleService exampleService;
    private final ExampleRepository exampleRepository;


    @GetMapping("/main")
    private String mainPage(Model model) {
        model.addAttribute("examples", exampleService.listExamples());
        return "mainPage";
    }

    @GetMapping("/examples/{id}")
    private ResponseEntity<?> getExampleById(@PathVariable Long id) {
        Example example = exampleRepository.findById(id).orElse(null);
        return ResponseEntity.ok()
                .body(new InputStreamResource(new ByteArrayInputStream(example.getLongblob())));
    }
}
