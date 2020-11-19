package com.customercrud.customerfeedback.repository;

import com.customercrud.customerfeedback.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
User findByUserName(String userName);
}
