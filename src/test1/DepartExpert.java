package test1;

import java.util.ArrayList;
import java.util.List;

public class DepartExpert {
	public List<String> getAdvice(String depart){
		List<String> list = new ArrayList<>();
		switch(depart) {
		case "kor" :
			list.add("국문학을 공부하는 곳");
			list.add("국어를 잘해야 한다");
			break;
		case "eng" :
			list.add("영문학을 공부하는 곳");
			list.add("영어를 잘해야 한다");
			break;
		case "com" :
			list.add("컴퓨터를 공부하는 곳");
			list.add("컴퓨터를 잘해야 한다");
			break;
		case "game" :
			list.add("게임을 공부하는 곳");
			list.add("게임을 잘해야 한다");
		}
		return list;
	}
}
