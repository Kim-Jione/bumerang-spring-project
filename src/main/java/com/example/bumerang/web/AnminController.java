package com.example.bumerang.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.bumerang.service.AdminService;
import com.example.bumerang.web.dto.response.admin.JobListDto;
import com.example.bumerang.web.dto.response.admin.NoticeListDto;
import com.example.bumerang.web.dto.response.admin.PfListDto;
import com.example.bumerang.web.dto.response.admin.UserListDto;

import lombok.RequiredArgsConstructor;


@RequiredArgsConstructor
@Controller
public class AnminController {
    private final HttpSession session;
    private final AdminService adminService;

    // 메인 화면
    @GetMapping("/indexForm")
    public String indexForm() {
        return "admin/indexForm";
    }

    // 차트 화면
    @GetMapping("/chartForm")
    public String chartForm() {
        return "admin/chartForm";
    }

    // 테이블 화면
    @GetMapping("/tableForm")
    public String tableForm() {
        return "admin/tableForm";
    }

    // 사용자 관리 목록 화면
    @GetMapping("/manage/userListForm")
    public String userListForm(Model model) {
        List<UserListDto> userList = adminService.findUserList();
        model.addAttribute("userList",userList);
        return "admin/manage/userListForm";
    }

    // 구인글 관리 목록 화면
    @GetMapping("/manage/jobListForm")
    public String findManageJobList(Model model) {
        List<JobListDto> jobList = adminService.findJobList();
        model.addAttribute("jobList",jobList);
        return "admin/manage/jobListForm";
    }

    // 공연글 관리 목록 화면
    @GetMapping("/manage/pfListForm")
    public String findManagePfList(Model model) {
        List<PfListDto> pfList = adminService.findPfList();
        model.addAttribute("pfList",pfList);
        return "admin/manage/pfListForm";
    }

    // 공지글 관리 목록 화면
    @GetMapping("/manage/noticeListForm")
    public String findManageNoticeList(Model model) {
        List<NoticeListDto> noticeList = adminService.findNoticeList();
        model.addAttribute("noticeList", noticeList);
        return "admin/manage/noticeListForm";
    }
    
    // 구인글 신고 목록 화면
    @GetMapping("/report/jobListForm")
    public String findReportJobList(Model model) {
        List<NoticeListDto> reportJobList = adminService.findNoticeList();
        model.addAttribute("reportJobList", reportJobList);
        return "admin/report/jobListForm";
    }
}