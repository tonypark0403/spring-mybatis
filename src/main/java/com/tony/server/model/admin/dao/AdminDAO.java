package com.tony.server.model.admin.dao;

import com.tony.server.model.member.dto.MemberDTO;

public interface AdminDAO {
	String loginCheck(MemberDTO dto);
}
