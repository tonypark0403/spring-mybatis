package com.tony.server.model.memo.dto;

import java.time.LocalDateTime;

public class MemoDTO {
	private int idx;
	private String writer;
	private String memo;
	private LocalDateTime post_date;
	
	public MemoDTO() {
		super();
	}
	
	public MemoDTO(int idx, String writer, String memo, LocalDateTime post_date) {
		super();
		this.writer = writer;
		this.memo = memo;
	}

	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public LocalDateTime getPost_date() {
		return post_date;
	}
	public void setPost_date(LocalDateTime post_date) {
		this.post_date = post_date;
	}
	
	@Override
	public String toString() {
		return "MemoDTO [idx=" + idx + ", writer=" + writer + ", memo=" + memo + ", post_date=" + post_date + "]";
	}
	
}
