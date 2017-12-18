<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./common/header.jsp" %>
<%@ include file="./common/top.jsp" %>
	<div Style="width: 300px; height: 200px; margin: 0 auto;">
		<form action="./burgerking/main.jsp">
			<table id="Login-box">
				<tr>
					<td><input style="height:100%" type="text" placeholder="ID"
						name="id" /></td>
					<td rowspan="2"><input style="height:100%" type="submit"
						value="로그인" /></td>
				</tr>
				<tr>
					<td><input style="height:100%" type="password"
						placeholder="PASSWORD" name="pw" /></td>
				</tr>
			</table>
		</form>
	</div>
<%@ include file="./common/footer.jsp" %>