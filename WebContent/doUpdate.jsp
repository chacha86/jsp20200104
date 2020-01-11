<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="article_manager.Article" %>
<%@ page import="article_manager.ArticleDao" %>

<%

	int id = Integer.parseInt(request.getParameter("id"));
	String title = request.getParameter("title");
	String body = request.getParameter("body");
	
	
	ArticleDao dao = new ArticleDao();
	
	dao.updateArticle(id, title, body);
	
	RequestDispatcher dis = request.getRequestDispatcher("list.jsp");
	dis.forward(request, response);
	
	

%>