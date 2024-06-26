package com.karelin.siteSmm.services;

import com.karelin.siteSmm.modules.Review;
import com.karelin.siteSmm.repositories.ReviewRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@Slf4j
@RequiredArgsConstructor
public class ReviewService {
    private final ReviewRepository reviewRepository;

    public List<Review> listReviews(){
        return reviewRepository.findAll();
    }
}
