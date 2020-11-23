package com.customercrud.customerfeedback;

import com.customercrud.customerfeedback.base.UserConst;
import com.customercrud.customerfeedback.base.UserType;
import com.customercrud.customerfeedback.entity.User;
import com.customercrud.customerfeedback.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.util.ObjectUtils;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import javax.annotation.PostConstruct;

@SpringBootApplication
@EnableSwagger2
public class AgroFeedBackApplication extends SpringBootServletInitializer {
    @Autowired
    private UserRepository userRepository;

    public static void main(String[] args) {
        SpringApplication.run(AgroFeedBackApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(AgroFeedBackApplication.class);
    }

    @PostConstruct
    public void defaultAdmin(){
        User prevUser = userRepository.findByUserName(UserConst.DEFAULT_USERNAME);
        if(ObjectUtils.isEmpty(prevUser)){
            User user = new User();
            user.setUserName(UserConst.DEFAULT_USERNAME);
            user.setEmail("admin@gmail.com");
            user.setFullName("Administrator");
            user.setPasword(UserConst.DEFAULT_PASSWORD);
            user.setUserType(UserType.ADMIN);
            userRepository.save(user);
        }
    }

    public UserRepository getUserRepository() {
        return userRepository;
    }

    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
}
