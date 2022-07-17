<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>
		
		<c:set var="calInfo" value="${calendarInfo }"/>
		<div class="yearAndMonth">
			<span class="move_month" onclick="next_calendar(${calInfo.getYear()},${calInfo.getMonth() -1})">❮❮</span>
			<span class="title_info">${calInfo.getYear() }</span>
			<span class="title_info">${calInfo.getMonth()+1 }</span>
			<span class="move_month" onclick="next_calendar(${calInfo.getYear()}, ${calInfo.getMonth() +1 })">❯❯</span>	
			<span></span>		
		</div>
		<br>
		
	
	<div class="calendar_calendar">
		<table>
			<tr class="calendar_th">
				<th class="sunday">일</th>
				<th class="weekday">월</th>
				<th class="weekday">화</th>
				<th class="weekday">수</th>
				<th class="weekday">목</th>
				<th class="weekday">금</th>
				<th class="saturday">토</th>
			</tr>
				<tr>
					<!-- 지난달 날짜 -->
					<c:forEach begin="${calInfo.before_lastday-calInfo.dayofweek+2 }" end="${calInfo.getBefore_lastday() }" var="j">
					
						
						<!-- 일요일 -->
						<c:if test="${calInfo.before_lastday-calInfo.dayofweek+2==j }">
							<td class="${calInfo.year}${calInfo.month-1 }${j }"><span class="sunday" class="${calInfo.year}${calInfo.month-1 }${j }" onclick="getInfoListoff(${calInfo.year},${calInfo.month-1 },${j } )">${j }</span></td>
						</c:if>
						<!--  -->
						<c:if test="${calInfo.before_lastday-calInfo.dayofweek+2!=j }">
							<td class="${calInfo.year}${calInfo.month-1 }${j }"><span class="${calInfo.year}${calInfo.month-1 }${j }"onclick="getInfoListoff(${calInfo.year},${calInfo.month-1 },${j } )">${j }</span></td>
						</c:if>
					</c:forEach>
					
					<!-- 이번달 날짜 -->
					<c:forEach begin="1" end="${calInfo.getLastday() }" var="i">
					
						<!-- 금요일의 경우 -->
						<c:if test="${(calInfo.dayofweek +i)%7==0 }">
							<td class="${calInfo.year}${calInfo.month }${i }"><span onclick="getInfoListoff2(${calInfo.year},${calInfo.month },${i })">${i }</span></td>
					
						</c:if>
	
						<!-- 토요일 -->
						<c:if test="${(calInfo.dayofweek+i-1)%7==0 }" >
							<td class="${calInfo.year}${calInfo.month }${i }" ><span class="saturday" onclick="getInfoListoff2(${calInfo.year},${calInfo.month },${i })">${i }</span></td>					
							</tr>
							<tr>
						</c:if> 
						
						<!-- 일요일 -->
						<c:if test="${(calInfo.dayofweek+i-2)%7==0 }">
							<td class="${calInfo.year}${calInfo.month }${i }"><span class="sunday" onclick="getInfoListoff(${calInfo.year},${calInfo.month },${i })">${i }</span></td>
						</c:if>
						
						
						<!-- 금토일이 아닌경우 -->
						<c:if test="${(calInfo.dayofweek+i-2)%7!=0 &&(calInfo.dayofweek +i)%7!=0 && (calInfo.dayofweek+i-1)%7!=0 }">
							<td class="${calInfo.year}${calInfo.month }${i }"><span onclick="getInfoListoff(${calInfo.year},${calInfo.month },${i })">${i }</span></td>
						</c:if>
					</c:forEach>
					
					<!-- 다음달 날짜 -->
					<c:if test="${calInfo.after_dayofweek < 4 }">
					<c:forEach begin="1" end="${8-calInfo.after_dayofweek }" var="i">
					
						<!-- 금요일 -->
						<c:if test="${(calInfo.after_dayofweek+i)%7==0 }">
							<td class="${calInfo.year}${calInfo.month+1 }${i }"><span onclick="getInfoListoff2(${calInfo.year},${calInfo.month+1 },${i })">${i }</span></td>						
						</c:if>
						
						<!-- 토요일 -->												
						<c:if test="${(calInfo.after_dayofweek+i-1)%7==0 }">
							<td class="${calInfo.year}${calInfo.month+1 }${i }"><span class="saturday" onclick="getInfoListoff2(${calInfo.year},${calInfo.month+1 },${i })">${i }</span></td>						
							</tr>
							<tr>
						</c:if>
						
						<!-- 일요일 -->
						<c:if test="${(calInfo.after_dayofweek+i-2)%7==0 }">
							<td class="${calInfo.year}${calInfo.month+1 }${i }"><span class="sunday" onclick="getInfoListoff(${calInfo.year},${calInfo.month+1 },${i })">${i }</span></td>						
						</c:if>
						
						<!-- 금토일이 아닐경우 -->
						<c:if test="${(calInfo.after_dayofweek+i-2)%7!=0 &&(calInfo.after_dayofweek +i)%7!=0 && (calInfo.after_dayofweek+i-1)%7!=0 }">
							<td class="${calInfo.year}${calInfo.month+1 }${i }"><span onclick="getInfoListoff(${calInfo.year},${calInfo.month+1 },${i })">${i }</span></td>
						</c:if>
						
					</c:forEach>
					</c:if>
					
					<c:if test="${calInfo.after_dayofweek >= 4 }">
					<c:forEach begin="1" end="${15-calInfo.after_dayofweek }" var="i">
						<!-- 금요일 -->
						<c:if test="${(calInfo.after_dayofweek+i)%7==0 }">
							<td class="${calInfo.year}${calInfo.month+1 }${i }"><span onclick="getInfoListoff2(${calInfo.year},${calInfo.month+1 },${i })">${i }</span></td>						
						</c:if>
						
						<!-- 토요일 -->
						<c:if test="${(calInfo.after_dayofweek+i-1)%7==0 }">
							<td class="${calInfo.year}${calInfo.month+1 }${i }"><span class="saturday" onclick="getInfoListoff2(${calInfo.year},${calInfo.month+1 },${i })">${i }</span></td>						
							</tr>
							<tr>
						</c:if>
						
						<!-- 일요일 -->
						<c:if test="${(calInfo.after_dayofweek+i-2)%7==0 }">
							<td class="${calInfo.year}${calInfo.month+1 }${i }"><span class="sunday" onclick="getInfoListoff(${calInfo.year},${calInfo.month+1 },${i })">${i }</span></td>						
						</c:if>
						
						<!-- 금토일이 아닐경우 -->
						<c:if test="${(calInfo.after_dayofweek+i-2)%7!=0 &&(calInfo.after_dayofweek +i)%7!=0 && (calInfo.after_dayofweek+i-1)%7!=0 }">
							<td class="${calInfo.year}${calInfo.month+1 }${i }"><span onclick="getInfoListoff(${calInfo.year},${calInfo.month+1 },${i })">${i }</span></td>
						</c:if>
					</c:forEach>
					</c:if>
					
				</tr>
				</table>
			</div>

</body>
</html>