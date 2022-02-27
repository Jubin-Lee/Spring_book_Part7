<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "htt://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <h1> Logout Page </h1>

    <form action="/customLogout" method='post'>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <button>로그아웃</button>
    </form>

<div class="col-md-4 col-md-offset-4">
    <div class="login-panel panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Logout Page</h3>
        </div>
        <div class="panel-body">
            <form role="form" method='post' action="/customLogout">
                <fieldset>

                    <!-- Change this to a button or input when using this as a form -->

                    <a href="index.html" class="btn btn-lg btn-success btn-block">Logout</a>
                </fieldset>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
    </div>
</div>

<script>

    $(".btn-success").on("click", function(e){
        e.preventDefault();
        $("form").submit();
    });

</script>
<c:if test="${param.logout != null}">
    <script>
        $(document).ready(function(){
            alert("로그아웃하였습니다.");
        });
    </script>
</c:if>

</body>
</html>
