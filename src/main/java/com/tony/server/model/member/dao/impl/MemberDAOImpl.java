package com.tony.server.model.member.dao.impl;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tony.server.model.member.dao.MemberDAO;
import com.tony.server.model.member.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	SqlSession sqlSession;
	@Override
	public String loginCheck(MemberDTO dto) {
		return sqlSession.selectOne("member.login_check", dto);
	}

}
