package com.tony.server.service.memo.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tony.server.model.memo.dao.MemoDAO;
import com.tony.server.model.memo.dto.MemoDTO;
import com.tony.server.service.memo.MemoService;

@Service
public class MemoServiceImpl implements MemoService {

	@Inject
	MemoDAO memoDao;
	
	@Override
	public List<MemoDTO> list() {
		return memoDao.list();
	}

	@Override
	public void insert(MemoDTO dto) {
		memoDao.insert(dto.getWriter(), dto.getMemo());
	}

	@Override
	public void isnert(String writer, String memo) {
		memoDao.insert(writer, memo);
	}

	@Override
	public MemoDTO memoView(int idx) {
		return memoDao.memoView(idx);
	}

	@Override
	public void update(MemoDTO dto) {
		memoDao.update(dto);

	}

	@Override
	public void delete(int idx) {
		memoDao.delete(idx);
	}

}
