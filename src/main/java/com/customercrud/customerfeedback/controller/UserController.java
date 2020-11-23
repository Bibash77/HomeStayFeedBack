package com.customercrud.customerfeedback.controller;

import com.customercrud.customerfeedback.base.UserType;
import com.customercrud.customerfeedback.entity.User;
import com.customercrud.customerfeedback.services.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    // register user with unique username validation
    @PostMapping("/register")
    public ResponseEntity<?> registerUser(@RequestBody User user) {
        if (userService.findByUserName(user.getUserName()) != null) {
            return ResponseEntity.badRequest().body("user name already taken");
        }
        if(ObjectUtils.isEmpty(user.getUserType())){
            user.setUserType(UserType.USER);
        }
        userService.addUser(user);
        return ResponseEntity.ok().body("successfully registered !!");
    }

    // source: https://dzone.com/articles/how-to-use-cookies-in-spring-boot
    @GetMapping("/all-cookies")
    public ResponseEntity<?> readCookie (HttpServletRequest request) {
        Cookie[] cookies=request.getCookies();
        return  ResponseEntity.ok(Arrays.stream(cookies).collect(Collectors.toList()));
    }
}
