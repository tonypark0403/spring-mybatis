package com.tony.server.model.member.dao;

import com.tony.server.model.member.dto.MemberDTO;

public interface MemberDAO {
	String loginCheck(MemberDTO dto);
}
