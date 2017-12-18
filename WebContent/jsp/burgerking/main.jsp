<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/navigation.jsp" %>
			<div Style="width: 300px; height: 200px; margin: 0 auto;">
				<p>
					햄버거 : ￦5,500<br/>
					콜라 :  ￦1,500<br/>
					포테이토 : ￦2,000 <br/>
					커피 : ￦1,000
				</p>
				<form action="result.jsp">
					<input type="text" name="menu" placeholder="메뉴"/><br/>
					<input type="text" name="count" placeholder="수량"/><br/>
					<input type="hidden" name="hamburger" value="5500" />
					<input type="hidden" name="cola" value="1500" />
					<input type="hidden" name="potato" value="2000" />
					<input type="hidden" name="coffee" value="1000" />
					<input type="submit" value="전송"/>
				</form>
			</div>
<%@ include file="../common/footer.jsp" %>