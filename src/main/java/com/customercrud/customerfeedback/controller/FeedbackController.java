package com.customercrud.customerfeedback.controller;

import com.customercrud.customerfeedback.entity.FeedBack;
import com.customercrud.customerfeedback.entity.User;
import com.customercrud.customerfeedback.services.feedback.FeedbackService;
import com.customercrud.customerfeedback.services.user.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.Map;
import java.util.Objects;

@RestController
@RequestMapping("/feedback")
public class FeedbackController {
    @Autowired // object injection
    private FeedbackService feedbackService;

    @Autowired
    private UserService userService;

    private ObjectMapper objectMapper = new ObjectMapper();

    @PostMapping("/save/{id}")
    public ResponseEntity<?> saveFeedback(@RequestBody Map<String , String> feedback,
    @PathVariable String id) throws JsonProcessingException {
       try {
           User user = userService.findById(Integer.parseInt(id));
           String jsonValue =  objectMapper.writeValueAsString(feedback);
           FeedBack feedBackData = new FeedBack();
           Integer totalPoint = 0;
           int count = 0;
           for(Map.Entry<String, String> entry : feedback.entrySet()) {
               if (isInt(entry.getValue())){
                   totalPoint += Integer.parseInt(entry.getValue());
                   count += 1;
               }
               feedBackData.setComments(feedback.get("suggestion"));
               feedBackData.setRating(totalPoint/count);
               feedBackData.setRatingData(jsonValue);
               feedBackData.setCommentedAt(LocalDate.now());
                // saving feed back in feed back table
               user.setFeedBack(feedbackService.addFeedBack(feedBackData));
               userService.addUser(user);
           }
       } catch (Exception exception){
             return ResponseEntity.badRequest().body("unable to save your data !!");
       }
        return ResponseEntity.ok().body("succesfully submitted your feedback !!");
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getAnswers(@PathVariable String id) {
        User user = userService.findById(Integer.valueOf(id));
        if(user == null){
            ResponseEntity.status(200).body(null);
        }
        return ResponseEntity.status(200).body(Objects.requireNonNull(user).getFeedBack().getRatingData());
    }

    static boolean isInt(String s)
    {
        try
        { int i = Integer.parseInt(s); return true; }

        catch(NumberFormatException er)
        { return false; }
    }
}
