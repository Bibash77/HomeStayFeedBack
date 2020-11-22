package com.customercrud.customerfeedback.repository;

import com.customercrud.customerfeedback.base.UserType;
import com.customercrud.customerfeedback.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
User findByUserName(String userName);
List<User> findAllByUserType(UserType userType);
}
