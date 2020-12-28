package org.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.edu.dao.IF_BoardDAO;
import org.edu.vo.BoardVO;
import org.edu.vo.PageVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service//스프링 빈으로 사용하기위해서 애노테이션 명시
public class BoardServiceImpl implements IF_BoardService {
	@Inject //DAO클래스를 주입받아서 사용
	private IF_BoardDAO boardDAO;
	@Override
	public List<BoardVO> selectBoard(PageVO pageVO) throws Exception {
		// DAO 클래스 사용코드(아래)
		return boardDAO.selectBoard(pageVO);
	}
	@Override
	public int countBoard(PageVO pageVO) throws Exception {
		// DAO클래스 사용 코드
		return boardDAO.countBoard(pageVO);
	}
	@Transactional//에러발생시 update부분이 롤백
	@Override
	public BoardVO readBoard(Integer bno) throws Exception {
		// bno번호에 해당하는 게시물 조회 DAO연결 + 해당게시물 조회수 업데이트
		boardDAO.updateViewCount(bno);
		return boardDAO.readBoard(bno);
	}
	@Override
	public List<String> readAttach(Integer bno) throws Exception {
		// bno번호에 해당하는 첨부파일조회쿼리 DAO연결
		return boardDAO.readAttach(bno);
	}

}
