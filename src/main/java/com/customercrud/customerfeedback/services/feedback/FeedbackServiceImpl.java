package com.customercrud.customerfeedback.services.feedback;

import com.customercrud.customerfeedback.entity.FeedBack;
import com.customercrud.customerfeedback.repository.FeedbackRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FeedbackServiceImpl implements FeedbackService{
    @Autowired
    private FeedbackRepository feedbackRepository;

    @Override
    public List<FeedBack> getAllFeedBack() {
        return feedbackRepository.findAll();
    }

    @Override
    public FeedBack findById(Integer id) {
        return feedbackRepository.findById(id).get();
    }

    @Override
    public FeedBack addFeedBack(FeedBack feedBack) {
       return feedbackRepository.save(feedBack);
    }

    @Override
    public void updateFeedBack(FeedBack feedBack) {
        feedbackRepository.save(feedBack);
    }

    @Override
    public void deleteFeedBack(Integer id) {
    }
}
