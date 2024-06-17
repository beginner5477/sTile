package com.spring.sTiles.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.sTiles.service.MemberService;
import com.spring.sTiles.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/memberLogin", method = RequestMethod.GET)
	public String getMemberLogin() {
		
		log.info("하이용~`");
		return "member/memberLogin";
	}
	@RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
	public String postMemberLogin(MemberVO vo, Model model, HttpServletRequest request) {
		//첫글자가 a인 경우에만 인증 처리하기
		
		if(vo.getMid().substring(0,1).toLowerCase().equals("a")) {
			HttpSession session = request.getSession();
			session.setAttribute("sMid", vo.getMid());
			return "redirect:/message/memberLoginOk?mid="+vo.getMid();
		} else {
			return "redirect:/message/memberLoginNo";
		}
	}
}
