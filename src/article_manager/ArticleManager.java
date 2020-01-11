package article_manager;

import java.util.ArrayList;

/**
 * �Խù� ������ ���� ��ü.
 * �Խù��� ��ȸ ���� ����� ������ ��.
 */
public class ArticleManager {
	
	//1. �Խù��� ������ ����� �����.(ArrayList) �Խù��� ������ ���.  
	static ArrayList<Article> aList = new ArrayList<Article>(); //��� Article_manager ��ü�� ������ �� �ֵ��� static���� ����.
	static int lastId; // ���� ������ �Խù��� ���̵� ��������ν� ���ο� �Խù��� �߰��� �� ���� ���̵� ��ȣ�� �ο��� �� �ִ�.
	
	//2. �׽�Ʈ �Խù� 5�� ����� ���� �ʱ�ȭ �޼���
	public void init() {
		
		// aList�� ������� ���� �ʱ�ȭ �����͸� ����� �� �ܿ��� ������ �ʴ´�.
		if(aList.size() == 0) {
			
			// Article ��ü�� �̿��� ���� �Խù��� 5�� �����.
			Article a1 = new Article();
			
			a1.setId(1);
			a1.setTitle("����1");
			a1.setBody("����1");
			a1.setNick("�ۼ���1");
			a1.setRegDate("20190817");
			
			Article a2 = new Article();
			
			a2.setId(2);
			a2.setTitle("����2");
			a2.setBody("����2");
			a2.setNick("�ۼ���2");
			a2.setRegDate("20190817");

			Article a3 = new Article();
			
			a3.setId(3);
			a3.setTitle("����3");
			a3.setBody("����3");
			a3.setNick("�ۼ���3");
			a3.setRegDate("20190817");

			Article a4 = new Article();
			
			a4.setId(4);
			a4.setTitle("����4");
			a4.setBody("����4");
			a4.setNick("�ۼ���4");
			a4.setRegDate("20190817");

			Article a5 = new Article();
			
			a5.setId(5);
			a5.setTitle("����5");
			a5.setBody("����5");
			a5.setNick("�ۼ���5");
			a5.setRegDate("20190817");
			
			// ������� 5���� �Խù��� aList ����ҿ� ��´�.
			aList.add(a1);
			aList.add(a2);
			aList.add(a3);
			aList.add(a4);
			aList.add(a5);
			
			lastId = 5; // 5����  ���������Ƿ� ������ ���̵�� 5�̴�.

		}
	}
	
	//3. ��ȸ �޼��带 ����� ����ҿ� �ִ� �Խù� ��������
	public ArrayList<Article> getAllArticles() {
		return this.aList;
	}
	
	//4. ��ȣ�� Ư�� �Խù� index ã��
	public int getIndexById(int id) {
		int i = -1;
		for(Article a : aList) {
			i++;
			if(a.getId() == id ) {
				return i;
			}
		}
		
		return i;
	}
	
	// 5. ���̵�� Ư�� �Խù� ã��
	public Article getArticleById(int id) {
		
		Article a = null;
		
		int i = getIndexById(id);
		
		if(i > -1) {
			a = aList.get(i);			
		}
		
		return a;
		
		
	}
	//6. �Խù� �����ϱ�
	public void insertArticle(Article a) {
		a.setId(lastId+1);
		a.setRegDate("20200111");
		aList.add(a);
		lastId++;
	}
	
	//7. Ư�� �Խù� �����ϱ�
	public void updateArticle(int id, String title, String body) {
		int i = getIndexById(id);
		
		aList.get(i).setBody(body);
		aList.get(i).setTitle(title);	
	}
	
}
