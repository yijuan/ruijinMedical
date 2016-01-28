
<%@ page import="com.surelution.ruijin.Reservation" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="jarvis">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<g:set var="entityName" value="${message(code: 'reservation.label', default: 'Reservation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="content-wrapper">
         <section class="content-header">
				<h1>
					医生排班管理 <small></small>
				</h1>
				<div class="c1" style=" border-bottom: 1px solid #e5e5e5;margin-bottom:10px; margin-top:10px;">
            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
			<g:link class="create" action="create" data-toggle="modal" data-target="#createModal">新建预约时间</g:link>
			<!-- 新增台账的dialog -->	
			 <div class="modal fade" id="createModal" role="dialog">
                     <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content"> 
                           </div>
                          </div>
                      </div>		
          </div>
				</section>
	<section class="content">
		<div id="list-reservation" class="content scaffold-list" role="main">
			<h4><g:message code="default.list.label" args="[entityName]" /></h4>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-respose">
				<thead>
					<tr>
					
						<g:sortableColumn property="endReservation" title="${message(code: 'reservation.endReservation.label', default: 'End Reservation')} " class="alink" />
					
						<g:sortableColumn property="price" title="${message(code: 'reservation.price.label', default: 'Price')}" class="alink"/>
					
						<g:sortableColumn property="reservationNum" title="${message(code: 'reservation.reservationNum.label', default: 'Reservation Num')}" class="alink"/>
					
						<g:sortableColumn property="reservationTime" title="${message(code: 'reservation.reservationTime.label', default: 'Reservation Time')}" class="alink"/>
					
						<th><g:message code="reservation.schedule.label" default="Schedule" /></th>
					    <th>班次种类</th>
					   <th>操作</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${reservationInstanceList}" status="i" var="reservationInstance">
					<tr>
					
						<td><g:formatDate date="${reservationInstance.endReservation}" format="yyyy-MM-dd HH:mm" /></td>
					
						<td>${fieldValue(bean: reservationInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: reservationInstance, field: "reservationNum")}</td>
					
						<td><g:formatDate date="${reservationInstance.reservationTime}" format="yyyy-MM-dd HH:mm" /></td>
					
						<td>${reservationInstance.schedule.doctor.name}</td>
						<td>${reservationInstance.schedule.wokingType.name}</td>
					   
					    <td>
					         <a href="${createLink(action:'delete',controller:'reservation',id:reservationInstance.id) }" onclick="return confirm('${message(code:'default.button.delete.confirm.message',default:'亲，确认删除嘛？ ')}')" class="glyphicon glyphicon-trash" data-toggle="tooltip" title="删除"></a>
							   &nbsp;&nbsp;&nbsp;&nbsp;
							<a data-toggle="modal" href="${createLink(action:'edit',controller:'reservation',id:reservationInstance.id) }" data-target="#myModal" class="glyphicon glyphicon-pencil" data-toggle="tooltip" title="编辑"></a>
					    </td>
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<div class="modal" id="myModal" role="dialog">
                     <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content"> 
                           </div>
                          </div>
                      </div>	
			<div class="pagination">
				<g:paginate total="${reservationInstanceTotal}" />
			</div>
		</div>
		</section>
		</div>
	</body>
</html>
