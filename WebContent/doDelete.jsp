<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="article_manager.Article" %>
<%@ page import="article_manager.ArticleDao" %>

<%

	int id = Integer.parseInt(request.getParameter("id"));
	
	ArticleDao dao = new ArticleDao();
	
	dao.deleteArticle(id);
	
	RequestDispatcher dis = request.getRequestDispatcher("list.jsp");
	dis.forward(request, response);
	
	

%>