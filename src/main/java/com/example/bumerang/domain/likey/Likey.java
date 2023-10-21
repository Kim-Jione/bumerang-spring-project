package com.example.bumerang.domain.likey;

import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@NoArgsConstructor
@Getter
public class Likey {
    private Integer likeyId;
    private Integer jobId;
    private Integer pfId;
    private Integer commentId;
    private Integer userId;
    private Timestamp createdAt;
}