package test1;

import java.util.ArrayList;
import java.util.List;

public class DepartExpert {
	public List<String> getAdvice(String depart){
		List<String> list = new ArrayList<>();
		switch(depart) {
		case "kor" :
			list.add("�������� �����ϴ� ��");
			list.add("��� ���ؾ� �Ѵ�");
			break;
		case "eng" :
			list.add("�������� �����ϴ� ��");
			list.add("��� ���ؾ� �Ѵ�");
			break;
		case "com" :
			list.add("��ǻ�͸� �����ϴ� ��");
			list.add("��ǻ�͸� ���ؾ� �Ѵ�");
			break;
		case "game" :
			list.add("������ �����ϴ� ��");
			list.add("������ ���ؾ� �Ѵ�");
		}
		return list;
	}
}
