package edu.study.service;

import java.util.List;

import edu.study.vo.BoardVo;


public interface BoardService {

	
	BoardVo selectByBidx(int bidx); //업무로직에 맞게 이름 짓기
	
}
