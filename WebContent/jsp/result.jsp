<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Result</title>
	<style>
		table{
			width: 80%; height: 750px; margin: 0 auto;
		}
		table tr{
			width: 100%; height: 50px; border: 1px solid blue;
		}
		table tr th{
			width: 100%; height: 30px; border: 1px solid blue;
		}
		table tr td{
			width: 100%; height: 30px; border: 1px solid blue;
		}
	</style>
</head>
<body>
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
<table>
	<tr style="height: 10%">
		<td colspan="5">네비게이션</td>
	</tr>
	<tr style="height: 10%">
		<td style="width: 20%; text-align: center;">버거킹</td>
		<td style="width: 20%; text-align: center;">카카오뱅크</td>
		<td style="width: 20%; text-align: center;">비트캠프</td>
		<td style="width: 20%; text-align: center;">SKT</td>
		<td style="width: 20%; text-align: center;">로또</td>
	</tr>
	<tr>
		<td colspan="5">	
	<%
		if (menu.equals("") || count.equals("")) {
	%>
			<div Style="width: 300px; height: 200px; margin: 0 auto;">
				<p>수량을 입력하세요</p>
				<form action="index.jsp">
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
				price = "￦ " + (Integer.parseInt(cola) * Integer.parseInt(count));
				price = "￦ " + cola;
				break;
			case "포테이토":
				price = "￦ " + (Integer.parseInt(potato) * Integer.parseInt(count));
				price = "￦ " + potato;
				break;
			case "커피":
				price = "￦ " + (Integer.parseInt(coffee) * Integer.parseInt(count));
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
		</td>
	</tr>
</table>
</body>
</html>