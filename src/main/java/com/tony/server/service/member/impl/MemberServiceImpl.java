package com.tony.server.service.member.impl;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.tony.server.model.member.dao.MemberDAO;
import com.tony.server.model.member.dto.MemberDTO;
import com.tony.server.service.member.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO memberDao;
	
	@Override
	public String loginCheck(MemberDTO dto, HttpSession session) {
		String name = memberDao.loginCheck(dto);
		
		if (name != null) {
			session.setAttribute("userid", dto.getUserid());
			session.setAttribute("name", name);
		}
		return name;
	}
	
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

}
