package org.edu.service;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import javax.inject.Inject;

import org.edu.dao.IF_MemberDAO;
import org.edu.vo.MemberVO;
import org.edu.vo.PageVO;
import org.springframework.stereotype.Service;

/**
 * MemberServiceImpl는 DAO메서드 호출을 구현
 * @author 김일국
 *
 */
@Service
public class MemberServiceImpl implements IF_MemberService {

	@Inject
	IF_MemberDAO memberDAO;//IF_MemberDAO 주입받아서 memberDAO오브젝트생성.
	
	@Override
	public List<MemberVO> selectMember(PageVO pageVO) throws Exception {
		// 회원정보 조회 DAO클래스의 메서드호출(아래)
		return memberDAO.selectMember(pageVO);
	}

	@Override
	public int countMember(PageVO pageVO) throws Exception {
		// 검색된 회원의 전체 명수 구하기
		return memberDAO.countMember(pageVO);
	}

	@Override
	public MemberVO readMember(String user_id) throws Exception {
		// 선택한 회원의 상세 정보 구하기
		return memberDAO.readMember(user_id);
	}

	@Override
	public void deleteMember(String user_id) throws Exception {
		// 선택한 회원정보를 삭제 하기
		memberDAO.deleteMember(user_id);
	}

	@Override
	public void updateMember(MemberVO memberVO) throws Exception {
		// 선택한 회원정보 수정하기
		memberDAO.updateMember(memberVO);
	}

	@Override
	public void insertMember(MemberVO memberVO) throws Exception {
		// jsp폼에서 입력한 회원정보 등록하기
		memberDAO.insertMember(memberVO);
	}

	@Override
	public void herokuJobMethod() throws Exception {
		// 월-금 오전8시부터 오후 11시까지
		String urlStr = "https://baekyeongdeuk.herokuapp.com";//본인앱 태그
		URL url = new URL(urlStr);
		HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
		urlConnection.setUseCaches(false);//기존접속된 정보와 상관없이 무조건 접속
		urlConnection.setReadTimeout(10000);//접속 대기시간 10초
		//개발자 확인코드(아래)
		if(urlConnection != null && urlConnection.getResponseCode() == HttpURLConnection.HTTP_OK) {
			System.out.println("헤로쿠 앱이 활성화 상태입니다.");
		}else {
			System.out.println("헤로쿠 앱이 비활성화 상태입니다.");
		}
	}

}
