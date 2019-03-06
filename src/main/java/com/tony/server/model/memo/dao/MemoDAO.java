package com.tony.server.model.memo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.tony.server.model.memo.dto.MemoDTO;

public interface MemoDAO {

	@Select("SELECT * FROM memo ORDER BY idx DESC")
	List<MemoDTO> list();

	@Insert("INSERT INTO memo (idx,writer,memo) VALUES " + "( (SELECT NVL(MAX(idx) + 1, 1) FROM memo)"
			+ ", #{writer}, #{memo} )")
	public void insert(@Param("writer") String writer, @Param("memo") String memo);

	@Select("SELECT * FROM memo WHERE idx=#{idx}")
	public MemoDTO memoView(@Param("idx") int idx);

	@Update("UPDATE memo SET writer=#{writer}, memo=#{memo}" + " WHERE idx=#{idx} ")
	public void update(MemoDTO dto);

	@Delete("DELETE FROM memo WHERE idx=#{idx}")
	public void delete(@Param("idx") int idx);
}
