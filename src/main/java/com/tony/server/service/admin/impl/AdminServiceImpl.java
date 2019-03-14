package com.tony.server.service.admin.impl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tony.server.model.admin.dao.AdminDAO;
import com.tony.server.model.member.dto.MemberDTO;
import com.tony.server.service.admin.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	AdminDAO adminDao;

	@Override
	public String loginCheck(MemberDTO dto) {
		return adminDao.loginCheck(dto);
	}

}