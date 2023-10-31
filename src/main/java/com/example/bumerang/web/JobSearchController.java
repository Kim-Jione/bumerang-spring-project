package com.example.bumerang.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.bumerang.service.JobSearchService;
import com.example.bumerang.web.dto.SessionUserDto;
import com.example.bumerang.web.dto.request.jobSearch.UpdateDto;
import com.example.bumerang.web.dto.request.jobSearch.WriteDto;
import com.example.bumerang.web.dto.response.CMRespDto;
import com.example.bumerang.web.dto.response.jobSearch.DetailFormDto;
import com.example.bumerang.web.dto.response.jobSearch.JobRespDto;

import lombok.RequiredArgsConstructor;


@RequiredArgsConstructor
@Controller
public class JobSearchController {

    private final HttpSession session;
    private final JobSearchService jobSearchService;

    // 구인정보 작성하기 화면
    @GetMapping("/s/api/jobSearch/writeForm")
    public @ResponseBody CMRespDto<?> writeForm() {
        return new CMRespDto<>(1, "구인정보 작성하기 화면 불러오기 성공.", null);
    }

    // 구인정보 작성하기 기능
    @PostMapping("/s/api/jobSearch/write")
    public @ResponseBody CMRespDto<?> write(@RequestBody WriteDto writeDto) {
        SessionUserDto principal = (SessionUserDto)session.getAttribute("principal");
        Integer userId = writeDto.getUserId();
        Integer userPId = principal.getUserId();
        if(userId.equals(userPId)){
            JobRespDto writeResult = jobSearchService.write(writeDto);
            return new CMRespDto<>(1, "구인정보 작성하기 성공.", writeResult);
        }
        return new CMRespDto<>(-1, "올바르지 않은 요청입니다.", null);
    }
    
    // 구인정보 상세보기 화면
    @GetMapping("/s/api/jobSearch/detailForm/{jobId}")
    public @ResponseBody CMRespDto<?> detailForm(@PathVariable Integer jobId, Model model) {
        SessionUserDto userPS = (SessionUserDto)session.getAttribute("principal");
        Integer userId = userPS.getUserId();
        DetailFormDto jobDetail = jobSearchService.findByJob(userId, jobId);
        return new CMRespDto<>(1, "구인정보 상세보기 화면 불러오기 성공.", jobDetail);
    }

    // 구인정보 수정하기 화면
    @GetMapping("/s/api/jobSearch/updateForm/{jobId}")
    public @ResponseBody CMRespDto<?> updateForm(@PathVariable Integer jobId) {
        SessionUserDto userPS = (SessionUserDto)session.getAttribute("principal");
        Integer userId = userPS.getUserId();
        DetailFormDto jobDetail = jobSearchService.findByJob(userId, jobId);
        return new CMRespDto<>(1, "구인정보 수정하기 화면 불러오기 성공.", jobDetail);
    }

    // 구인정보 수정하기 기능
    @PutMapping("/s/api/jobSearch/update")
    public @ResponseBody CMRespDto<?> update(@RequestBody UpdateDto updateDto) {
        SessionUserDto principal = (SessionUserDto)session.getAttribute("principal");
        Integer userId = updateDto.getUserId();
        Integer userPId = principal.getUserId();
        if(userId.equals(userPId)){
            JobRespDto updateResult = jobSearchService.update(updateDto);
            return new CMRespDto<>(1, "구인정보 수정하기 성공.", updateResult);
        }
        return new CMRespDto<>(-1, "올바르지 않은 요청입니다.", null);
    }

    // 구인정보 삭제하기 기능
    @DeleteMapping("/s/api/jobSearch/delete")
    public @ResponseBody CMRespDto<?> delete(@RequestBody DetailFormDto detailFormDto) {
        SessionUserDto principal = (SessionUserDto)session.getAttribute("principal");
        Integer userId = detailFormDto.getUserId();
        Integer jobId = detailFormDto.getJobId();
        Integer userPId = principal.getUserId();
        if(userId.equals(userPId)){
            JobRespDto deleteResult = jobSearchService.delete(jobId);
            return new CMRespDto<>(1, "구인정보 삭제하기 성공.", deleteResult);
        }
        return new CMRespDto<>(-1, "올바르지 않은 요청입니다.", null);
    }

}
