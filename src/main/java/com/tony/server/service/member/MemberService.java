package com.tony.server.service.member;

import javax.servlet.http.HttpSession;

import com.tony.server.model.member.dto.MemberDTO;

public interface MemberService {

	String loginCheck(MemberDTO dto, HttpSession session);

	void logout(HttpSession session);
}