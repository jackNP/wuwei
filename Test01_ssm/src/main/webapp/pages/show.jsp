<%--表示这个jsp页面是否忽略EL表达式--%>
<%--isELIgnored="false"--%>

<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%--引入c 标签--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>账户显示show页面</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<h1>你好，世界！</h1>


<table class="table table-hover">
    <caption>账户表</caption>
    <tr>
        <td>序号</td><td>姓名</td><td>金额</td>
    </tr>
    <c:forEach items="${accountList}" var="account">
        <tr>
            <td>${account.id}</td>
            <td>${account.name}</td>
            <td>${account.money}</td>
            <td>
                <a href="${pageContext.request.contextPath}/account/del?id=${account.id}">删除账户</a>
                <a href="${pageContext.request.contextPath}/account/findById?id=${account.id}">修改账户</a>
            </td>
        </tr>
    </c:forEach>
    <a href="${pageContext.request.contextPath}/pages/addaccount.jsp">新增账户</a>
</table>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type="text/javascript" src=${pageContext.request.contextPath}"/js/jquery-1.12.4.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script type="text/javascript" src=${pageContext.request.contextPath}"/js/bootstrap.min.js"></script>

</body>
</html>