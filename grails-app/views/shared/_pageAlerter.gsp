<div class="row">
    <div class="col-lg-12">
        <g:if test="${flash.message}">
            <div class="alert alert-info" role="status"><i class="fa fa-info-circle"></i> ${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${instance}">
            <ul class="alert alert-danger" role="alert">
                <g:eachError bean="${instance}" var="error">
                    <li class="fa fa-warning" <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>> <g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
    </div>
</div>