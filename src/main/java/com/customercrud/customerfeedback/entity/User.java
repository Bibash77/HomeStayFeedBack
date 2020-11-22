package com.customercrud.customerfeedback.entity;

import com.customercrud.customerfeedback.base.UserType;
import com.sun.istack.internal.NotNull;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;

    @NotNull
    private String fullName;

    @NotNull
    private String userName;

    @NotNull
    private String pasword;

    @NotNull
    private String address;

    @NotNull
    private String email;

    @NotNull
    private UserType userType;

    @OneToOne
    private FeedBack feedBack;
}
