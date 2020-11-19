package com.customercrud.customerfeedback.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class FeedBack {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;

    @Lob // lob defines long text data field
    private String ratingData;

    @Lob
    private String comments;

    private Integer rating;

    private LocalDate commentedAt;
}
