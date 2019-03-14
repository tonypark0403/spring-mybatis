package com.tony.server.service.admin;

import com.tony.server.model.member.dto.MemberDTO;

public interface AdminService {
	String loginCheck(MemberDTO dto);
}
