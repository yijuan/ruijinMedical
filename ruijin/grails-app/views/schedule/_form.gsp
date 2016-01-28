<%@ page import="com.surelution.ruijin.Schedule" %>



<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'doctor', 'error')} required">
	<dl class="dl-horizontal">
		<dt>
			<label for="doctor"> <g:message code="schedule.doctor.label" default="Doctor" /> 
			   <span class="required-indicator">*</span>
			</label>
		</dt>
		<dd>
			<div class="col-xs-8">
			   <g:select id="doctor" name="doctor.id" from="${com.surelution.ruijin.Doctor.list()}" optionKey="id" optionValue="name" required="" value="${scheduleInstance?.doctor?.id}" class="many-to-one form-control"/>
			</div>
		</dd>
	</dl>
</div>


<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'wokingTime', 'error')} required">
	<dl class="dl-horizontal">
		<dt>
			<label for="wokingTime">
		        <g:message code="schedule.wokingTime.label" default="Woking Time" />
		        <span class="required-indicator">*</span>
	        </label>
		</dt>
		<dd>
			<div class="col-xs-8">
			    <g:textField name="wokingTime" value="${scheduleInstance?.wokingTime.format('yyyy.MM.dd HH:mm')}"
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

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'endDate', 'error')} required">
	<dl class="dl-horizontal">
		<dt>
			<label for="endDate">
		       <g:message code="schedule.endDate.label" default="End Date" />
		       <span class="required-indicator">*</span>
	        </label>
		</dt>
		<dd>
			<div class="col-xs-8">
			<g:textField name="endDate" value="${scheduleInstance?.endDate.format('yyyy.MM.dd HH:mm')}"
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



<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'wokingType', 'error')} required">
	<dl class="dl-horizontal">
		<dt>
			<label for="wokingType">
		        <g:message code="schedule.wokingType.label" default="Woking Type" />
		        <span class="required-indicator">*</span>
	        </label>
		</dt>
		<dd>
			<div class="col-xs-8">
			    <g:select id="wokingType" name="wokingType.id" from="${com.surelution.ruijin.WokingType.list()}" optionKey="id" optionValue="name" required="" value="${scheduleInstance?.wokingType?.id}" class="many-to-one form-control"/>
			</div>
		</dd>
	</dl>
</div>

