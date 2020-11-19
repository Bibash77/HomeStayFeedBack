package com.customercrud.customerfeedback.services.feedback;

import com.customercrud.customerfeedback.entity.FeedBack;

import java.util.List;

public interface FeedbackService {
    List<FeedBack> getAllFeedBack();
    FeedBack findById(Integer id);
    FeedBack addFeedBack(FeedBack feedBack);
    void updateFeedBack(FeedBack feedBack);
    void deleteFeedBack(Integer id);
}
