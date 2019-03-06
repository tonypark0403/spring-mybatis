package com.tony.server.service.memo;

import java.util.List;

import com.tony.server.model.memo.dto.MemoDTO;

public interface MemoService {
	List<MemoDTO> list();
	void insert(MemoDTO dto);
	void isnert(String writer, String memo);
	MemoDTO memoView(int idx);
	void update(MemoDTO dto);
	void delete(int idx);

}
