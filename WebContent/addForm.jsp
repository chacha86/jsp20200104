<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- form �±״� uri �������̴�. action�� ���� �������� name�� Ű�� �Ͽ� �Ķ���͸� ������ش�. -->
	<!-- �Ʒ� form�� ���������� doAdd.jsp?title=??&body=??&nick=?? (���⼭ ??�� ����ڰ� �ؽ�Ʈâ�� �Է��� ���̴�.) -->
	<form action="doAdd.jsp">
		<input type="text" name="title" placeHolder="������ �Է����ּ���."/>
		<input type="text" name="body" placeHolder="������ �Է����ּ���."/>
		<input type="text" name="nick" placeHolder="�ۼ��ڸ� �Է����ּ���."/>
		<input type="submit" value="������" />
	</form>

</body>
</html>