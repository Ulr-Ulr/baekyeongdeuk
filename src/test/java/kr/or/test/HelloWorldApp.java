package kr.or.test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class HelloWorldApp {

	public static void main(String[] args) {
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd HHmmss");
		Date reg_date = new Date();
		//boardVO.setBno(프라이머리키);
		for(int cnt=0;cnt<=10;cnt++) {//더미게시물 100입력
			Calendar cal = Calendar.getInstance();//+
			cal.setTime(reg_date);//+
			cal.add(Calendar.SECOND, cnt);//+ cnt초 더하기
			System.out.println(format.format(cal.getTime()));
		}
		// 위 main()메서드는 자바프로그램의 실행 진입지점 입니다.
		System.out.println("헬로우 월드!");
		plusFunc(3,4);//플러스함수를 실행할때 매개변수 값을 줍니다.
	}
//메서드 매겨변수에 대해서
	public static void plusFunc(int a, int b) {
		
		System.out.println("매개변수 a + b = " + (a+b) + "입니다.");
	}
}
