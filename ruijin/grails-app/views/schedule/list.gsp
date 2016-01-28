
<%@ page import="com.surelution.ruijin.Schedule" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="jarvis">
		<g:set var="entityName" value="${message(code: 'schedule.label', default: 'Schedule')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<style>
		   .modalstyle{ width: 40%; background-color:#F5F5F5; filter:alpha(opacity=50); margin-left:30%; height:55%; margin-top:5%; border-radius:5px; border: 1px solid #C5CBD7}
	   </style>
		<script type="text/javascript">
	$(function(){
		$("a[data-target=#myModal]").click(function(event) {
			$(this).data('myModal',null)
		    event.preventDefault();
		    var target = $(this).attr("href"); 
			    $("#myModal").load(target, function() { 
			    	$("#myModal").addClass("modalstyle")
	                $("#myModal").modal('show');  }); 				    	
			    });
		});
	</script>
	</head>
	<body>
	<div class="content-wrapper">
         <section class="content-header">
				<h1>
					医生排班管理 <small></small>
				</h1>
				<div class="c1" style=" border-bottom: 1px solid #e5e5e5;margin-bottom:10px; margin-top:10px;">
            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
			<g:link class="create" action="create" data-toggle="modal" data-target="#createModal">新建医生排班</g:link>
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
		<div id="list-schedule" class="content scaffold-list" role="main">
			<h4><g:message code="default.list.label" args="[entityName]" /></h4>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-respose">
				<thead>
					<tr>
					
						<th><g:message code="schedule.doctor.label" default="Doctor" /></th>
						
						<g:sortableColumn property="wokingTime" title="${message(code: 'schedule.wokingTime.label', default: 'Woking Time')}" class="alink"/>
					
						<g:sortableColumn property="endDate" title="${message(code: 'schedule.endDate.label', default: 'End Date')}" class="alink"/>
					
						
					
						<th><g:message code="schedule.wokingType.label" default="Woking Type" /></th>
					    <th>操作</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${scheduleInstanceList}" status="i" var="scheduleInstance">
					<tr>
					
						<td>${scheduleInstance.doctor.name}</td>
						
						<td><g:formatDate date="${scheduleInstance.wokingTime}" format="yyyy-MM-dd HH:mm"/></td>
					
						<td><g:formatDate date="${scheduleInstance.endDate}" format="yyyy-MM-dd HH:mm"/></td>
					
						<td>${scheduleInstance.wokingType.name}</td>
					   
					    <td>
					        <a href="${createLink(action:'delete',controller:'schedule',id:scheduleInstance.id) }" onclick="return confirm('${message(code:'default.button.delete.confirm.message',default:'亲，确认删除嘛？ ')}')" class="glyphicon glyphicon-trash" data-toggle="tooltip" title="删除"></a>
							   &nbsp;&nbsp;&nbsp;&nbsp;
							<a data-toggle="modal" href="${createLink(action:'edit',controller:'schedule',id:scheduleInstance.id) }" data-target="#myModal" class="glyphicon glyphicon-pencil" data-toggle="tooltip" title="编辑"></a>
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
				<g:paginate total="${scheduleInstanceTotal}" />
			</div>
		</div>
		</section>
		</div>
	</body>
</html>
