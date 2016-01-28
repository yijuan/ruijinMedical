<%@ page import="com.surelution.ruijin.Reservation" %>



<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'reservationTime', 'error')} required">
	<dl class="dl-horizontal">
		<dt>
			<label for="reservationTime">
		       <g:message code="reservation.reservationTime.label" default="Reservation Time" />
		       <span class="required-indicator">*</span>
	        </label>
		</dt>
		<dd>
			<div class="col-xs-8">
			    <g:textField name="reservationTime" value="${reservationInstance?.reservationTime?.format('yyyy.MM.dd HH:mm')}"
									id="datetimepicker" class="form-control" required=""/>
							<script type="text/javascript">
								$('#datetimepicker').datetimepicker({
									isRTL : false,
									format : 'yyyy.mm.dd hh:ii',
									autoclose : true,
									minView : 'hour',
									language : 'zh-CN'
								});
							</script>
			</div>
		</dd>
	</dl>
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'endReservation', 'error')} required">
	<dl class="dl-horizontal">
		<dt>
			<label for="endReservation">
		         <g:message code="reservation.endReservation.label" default="End Reservation" />
		         <span class="required-indicator">*</span>
	        </label>
		</dt>
		<dd>
			<div class="col-xs-8">
			   <g:textField name="endReservation" value="${reservationInstance?.endReservation?.format('yyyy.MM.dd HH:mm')}"
									id="datetimepicker4" class="form-control" required=""/>
							<script type="text/javascript">
								$('#datetimepicker4').datetimepicker({
									isRTL : false,
									format : 'yyyy.mm.dd hh:ii',
									autoclose : true,
									minView : 'hour',
									language : 'zh-CN'
								});
							</script>
			</div>
		</dd>
	</dl>
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'price', 'error')} required">
	<dl class="dl-horizontal">
		<dt>
			<label for="price">
		       <g:message code="reservation.price.label" default="Price" />
		       <span class="required-indicator">*</span>
	        </label>
		</dt>
		<dd>
			<div class="col-xs-8">
			    <g:field name="price" value="${fieldValue(bean: reservationInstance, field: 'price')}" required="" class="form-control"/>
			</div>
		</dd>
	</dl>
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'reservationNum', 'error')} required">
	<dl class="dl-horizontal">
		<dt>
			<label for="reservationNum">
		        <g:message code="reservation.reservationNum.label" default="Reservation Num" />
		        <span class="required-indicator">*</span>
	        </label>
		</dt>
		<dd>
			<div class="col-xs-8">
			    <g:field name="reservationNum" type="number" value="${reservationInstance.reservationNum}" required="" class="form-control"/>
			</div>
		</dd>
	</dl>
</div>


<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'schedule', 'error')} required">
	<dl class="dl-horizontal">
		<dt>
			<label for="schedule">
		      <g:message code="reservation.schedule.label" default="Schedule" />
		      <span class="required-indicator">*</span>
	        </label>
		</dt>
		<dd>
			<div class="col-xs-8">
			   <g:select id="schedule" name="schedule.id" from="${com.surelution.ruijin.Schedule.list()}" optionKey="id" optionValue="wokingTime" required="" value="${reservationInstance?.schedule?.id}" class="many-to-one form-control"/>
			</div>
		</dd>
	</dl>
</div>

