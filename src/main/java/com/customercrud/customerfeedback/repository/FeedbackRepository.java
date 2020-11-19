package com.customercrud.customerfeedback.repository;

import com.customercrud.customerfeedback.entity.FeedBack;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeedbackRepository extends JpaRepository<FeedBack, Integer> {
}
