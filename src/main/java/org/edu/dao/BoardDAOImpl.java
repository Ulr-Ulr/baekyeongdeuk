package org.edu.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.edu.vo.BoardVO;
import org.edu.vo.PageVO;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements IF_BoardDAO {
	@Inject //sql세션템플릿을 받아서 변수지정
	private SqlSession sqlSession;
	@Override
	public List<BoardVO> selectBoard(PageVO pageVO) throws Exception {
		// sql세션 템플릿(select,update,delete같은매서드가포함)매퍼쿼리 지정(아래)
		
		
		return sqlSession.selectList("boardMapper.selectBoard", pageVO);
	}
	@Override
	public int countBoard(PageVO pageVO) throws Exception {
		// sql세션템플릿 사용해서 게시물 갯수 구하기 매퍼쿼리 연결(아래)
		return sqlSession.selectOne("boardMapper.countBoard", pageVO);
	}
	@Override
	public BoardVO readBoard(Integer bno) throws Exception {
		// 게시물 상세보기 매퍼쿼리 연결 
		return sqlSession.selectOne("boardMapper.readBoard", bno);
	}
	@Override
	public List<String> readAttach(Integer bno) throws Exception {
		// 게시물 첨부파일 매퍼쿼리 연결
		return sqlSession.selectList("boardMapper.readAttach",bno);
	}
	@Override
	public void updateViewCount(Integer bno) throws Exception {
		// 게시물 상세보기시 조회수 매퍼쿼리 연결
		sqlSession.update("boardMapper.updateViewCount",bno);
		
	}
	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		// 게시물등록 매퍼쿼리 연결
		sqlSession.insert("boardMapper.insertBoard", boardVO);
		
	}
	@Override
	public void deleteBoard(Integer bno) throws Exception {
		// 게시물 삭제 매퍼쿼리연결
		sqlSession.delete("boardMapper.deleteBoard", bno);
		
	}
	@Override
	public void updateBoard(BoardVO boardVO) throws Exception {
		// 게시물 수정 매퍼쿼리 연결
		sqlSession.update("boardMapper.updateBoard", boardVO);
		
	}
	@Override
	public void insertAttach(String save_file_name, String real_file_name) throws Exception {
		// 첨부파일 입력 매퍼쿼리 연결(아래)
		Map<String,Object> paramMap = new HashMap<String,Object>();
		paramMap.put("save_file_name", save_file_name);
		paramMap.put("real_file_name", real_file_name);
		sqlSession.insert("boardMapper.insertAttach", paramMap);
		
	}
	

}
