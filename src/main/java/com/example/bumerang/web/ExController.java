package com.example.bumerang.web;

import com.example.bumerang.domain.user.User;
import com.example.bumerang.domain.user.UserDao;
import com.example.bumerang.web.dto.ex.request.JoinDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;


@RequiredArgsConstructor
@Controller
public class ExController {

	private final UserDao userDao;

	@GetMapping("/ex/selectForm")
	public String selectForm(Model model) {
		List<User> users = userDao.findAll();
		model.addAttribute("userList", users);
		return "ex/selectForm";
	}

	@GetMapping("/ex/createForm")
	public String createForm() {
		return "ex/createForm";
	}

	@PostMapping("/ex/create")
	public String create(JoinDto joinDto, Model model) {
		System.out.println("디버그 getUserLoginId:"+joinDto.getUserLoginId());
		System.out.println("디버그 getUserPassword:"+joinDto.getUserPassword());
		System.out.println("디버그 getUserEmail:"+joinDto.getUserEmail());
		System.out.println("디버그 getUserNickname:"+joinDto.getUserNickname());
		userDao.join(joinDto);
		User user = userDao.findByLoginId(joinDto.getUserLoginId());
		model.addAttribute("user", user);
		return "ex/createResultForm";
	}

	@GetMapping("/ex/updateForm")
	public String updateForm()
	{
		return "ex/updateForm";
	}


	@PostMapping ("/ex/update")
	public String update(JoinDto joinDto, Model model) {
		System.out.println("디버그 getUserLoginId:"+joinDto.getUserLoginId());
		System.out.println("디버그 getUserPassword:"+joinDto.getUserPassword());
		System.out.println("디버그 getUserEmail:"+joinDto.getUserEmail());
		System.out.println("디버그 getUserNickname:"+joinDto.getUserNickname());
		System.out.println("디버그"+ joinDto.getUserNickname());
		User beforeUser = userDao.findByLoginId(joinDto.getUserLoginId());
		System.out.println("디버그 beforeUser getUserLoginId:"+beforeUser.getUserLoginId());
		System.out.println("디버그 beforeUser getUserPassword:"+beforeUser.getUserPassword());
		System.out.println("디버그 beforeUser getUserEmail:"+beforeUser.getUserEmail());
		System.out.println("디버그 beforeUser getUserNickname:"+beforeUser.getUserNickname());
		userDao.updateUser(joinDto);
		User afterUser = userDao.findByLoginId(joinDto.getUserLoginId());
		System.out.println("디버그 afterUser getUserLoginId:"+afterUser.getUserLoginId());
		System.out.println("디버그 afterUser getUserPassword:"+afterUser.getUserPassword());
		System.out.println("디버그 afterUser getUserEmail:"+afterUser.getUserEmail());
		System.out.println("디버그 afterUser getUserNickname:"+afterUser.getUserNickname());
		model.addAttribute("beforeUser", beforeUser);
		model.addAttribute("afterUser", afterUser);
		return "ex/updateResultForm";
	}

	@GetMapping("/ex/deleteForm")
	public String deleteForm()
	{
		return "ex/deleteForm";
	}


	@PostMapping ("/ex/delete")
	public String delete(Integer userId) {
		User deleteBeforeUser = userDao.findById(userId);
		System.out.println("디버그 deleteBeforeUser getUserLoginId:"+deleteBeforeUser.getUserLoginId());
		System.out.println("디버그 deleteBeforeUser getUserPassword:"+deleteBeforeUser.getUserPassword());
		System.out.println("디버그 deleteBeforeUser getUserEmail:"+deleteBeforeUser.getUserEmail());
		System.out.println("디버그 deleteBeforeUser getUserNickname:"+deleteBeforeUser.getUserNickname());
		userDao.delete(userId);
		return "ex/selectForm";
	}

	@GetMapping("/ex/exMainForm")
	public String exMainForm(Model model) {
		List<User> users = userDao.findAll();
		model.addAttribute("userList", users);
		return "ex/exMainForm";
	}
}