<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="article_manager.ArticleManager" %>
<%@ page import="article_manager.Article" %>
<%

	// addForm.jsp ���� �ѱ� �Ķ���� �����͸� �����Ѵ�.
	String title = request.getParameter("title");
	String body = request.getParameter("body");
 	String nick = request.getParameter("nick");
	
 	// ���ο� �Խù��� ����� ���� Article ��ü�� �����.
	Article a = new Article();
	
 	// ������ �Ķ���ͷ� ���� �Խù� ������ �������ش�.
	a.setTitle(title);
	a.setBody(body);
	a.setNick(nick);
	
	ArticleManager am = new ArticleManager();
	am.insertArticle(a); // �Խù� �������� �Խù� �߰� ����� �̿��� ���� �Խù��� �����Ѵ�.
	
	
	 // ���� �Ŀ��� list�� �ٽ� �ѷ���� �ϴµ� �̹� list.jsp���� �� ���� �ϰ� �����Ƿ� ���⼭ ���� ������ �ʰ� list.jsp���� ������ ������ �۾��� �����Ѵ�.
	 // �̸� ���ؼ� ��û ������ ���� ������ ������� �ȵǹǷ� ������ ������ ��� �����Ѵ�.(forward �޼���� ��û, ���� ��ü�� �����ϰ� �ִ�.)
	RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
	dispatcher.forward(request, response);
	


%>
