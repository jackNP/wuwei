<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/20
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<!-- Bootstrap -->
<link href=${pageContext.request.contextPath}"/css/bootstrap.min.css" rel="stylesheet">
<head>
    <title>修改页面</title>
</head>
<body>
    <h1>修改账户信息</h1>
    <form role="form" method="post" action="${pageContext.request.contextPath}/account/update">
        <input type="hidden" name="id" value="${account.id}">
        <div class="form-group">
            <label for="exampleInputEmail1">账户姓名</label>
            <input type="text" class="form-control" id="exampleInputEmail1" name="name" placeholder="${account.name}">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">账户金额</label>
            <input type="text" class="form-control" id="exampleInputPassword1" name="money" placeholder="${account.money}">
        </div>

        <button type="submit" class="btn btn-default">Submit</button>
    </form>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src=${pageContext.request.contextPath}"/js/jquery-1.12.4.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src=${pageContext.request.contextPath}"/js/bootstrap.min.js"></script>

</body>
</html>
