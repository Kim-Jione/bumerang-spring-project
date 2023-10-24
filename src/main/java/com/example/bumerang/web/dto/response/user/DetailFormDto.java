package com.example.bumerang.web.dto.response.user;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DetailFormDto {
    private Integer userId;
    private String userLoginId;
    private String userPassword;
    private String userEmail;
    private String userNickname;
    private String userAge;
    private String userPosition;
    private String userGender;
    private String userCareer;
    private String userIntro;
    private String userPortfolioLink;
    private String userContactLink;
    private String userProfileImg;

}
