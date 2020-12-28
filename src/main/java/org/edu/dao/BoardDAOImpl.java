package org.edu.dao;

import java.util.List;

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

}
