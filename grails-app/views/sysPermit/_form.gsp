<%@ page import="com.yuyusoft.goodmin.SysPermit" %>

<div class="form-group">
    <label for="permitName" class="col-sm-1 control-label"><g:message code="sysPermit.permitName.label" /></label>
    <div class="col-sm-5">
        <g:textField name="permitName" required="" value="${sysPermitInstance?.permitName}" class="form-control" placeholder="" />
    </div>
</div>

<div class="form-group">
    <label for="permitUrl" class="col-sm-1 control-label"><g:message code="sysPermit.permitUrl.label" /></label>
    <div class="col-sm-5">
        <g:textField name="permitUrl" value="${sysPermitInstance?.permitUrl}" class="form-control" placeholder="" />
    </div>
</div>

<div class="form-group">
    <label for="idx" class="col-sm-1 control-label"><g:message code="sysPermit.idx.label" /></label>
    <div class="col-sm-5">
        <g:field name="idx" type="number" value="${sysPermitInstance.idx}" required="" class="form-control" placeholder="" />
    </div>
</div>

<div class="form-group">
    <label for="level" class="col-sm-1 control-label"><g:message code="sysPermit.level.label" /></label>
    <div class="col-sm-5">
        <g:field name="level" type="number" value="${sysPermitInstance.level}" required="" class="form-control" placeholder="" />
    </div>
</div>

<div class="form-group">
    <label for="parent" class="col-sm-1 control-label"><g:message code="sysPermit.parent.label" /></label>
    <div class="col-sm-5">
        <g:field name="parent" type="number" value="${sysPermitInstance.parent}" required="" class="form-control" placeholder="" />
    </div>
</div>
