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
	public List<BoardVO> selectBOard(PageVO pageVO) throws Exception {
		// sql세션 템플릿(select,update,delete같은매서드가포함)매퍼쿼리 지정(아래)
		
		
		return sqlSession.selectList("BoardMapper.selectBoard", pageVO);
	}

}
