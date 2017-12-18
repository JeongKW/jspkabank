<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<%
		String menu = request.getParameter("menu");
		String count = request.getParameter("count");
		String hamburger = request.getParameter("hamburger");
		String coffee = request.getParameter("coffee");
		String cola = request.getParameter("cola");
		String potato = request.getParameter("potato");
		String total = "";
		String price = "";
%>
<%@ include file="../common/navigation.jsp" %>
	<%
		if (menu.equals("") || count.equals("")) {
	%>
			<div Style="width: 300px; height: 200px; margin: 0 auto;">
				<p>수량을 입력하세요</p>
				<form action="main.jsp">
					<input type="submit" value="뒤로가기" />
				</form>
			</div>
	<%
		} else {
			switch (menu) {
			case "햄버거":
				total = "￦ " + (Integer.parseInt(hamburger) * Integer.parseInt(count));
				price = "￦ " + hamburger;
				break;
			case "콜라":
				total = "￦ " + (Integer.parseInt(cola) * Integer.parseInt(count));
				price = "￦ " + cola;
				break;
			case "포테이토":
				total = "￦ " + (Integer.parseInt(potato) * Integer.parseInt(count));
				price = "￦ " + potato;
				break;
			case "커피":
				total = "￦ " + (Integer.parseInt(coffee) * Integer.parseInt(count));
				price = "￦ " + coffee;
				break;
			}
	%>
			<div Style="width: 300px; height: 200px; margin: 0 auto;">
				<p>
					<%=menu%> <%=count%> <%=price%><br />
					-------------------------------<br/>
					총 가격 <%=total %>
				</p>
				<form action="">
					<input type="submit" value="결제" />
				</form>
			</div>
	<%
		}
	%>
<%@ include file="../common/footer.jsp" %>