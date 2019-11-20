<%--&lt;%&ndash;表示这个jsp页面是否忽略EL表达式&ndash;%&gt;--%>
<%--&lt;%&ndash;isELIgnored="false"&ndash;%&gt;--%>

<%--<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--&lt;%&ndash;引入c 标签&ndash;%&gt;--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="zh-CN">--%>
<%--<head>--%>
    <%--<meta charset="utf-8">--%>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->--%>
    <%--<title>账户显示show页面</title>--%>

    <%--<!-- Bootstrap -->--%>
    <%--<link href="css/bootstrap.min.css" rel="stylesheet">--%>

    <%--<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->--%>
    <%--<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->--%>
    <%--<!--[if lt IE 9]>--%>
    <%--<script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>--%>
    <%--<script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>--%>
    <%--<![endif]-->--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>你好，世界！</h1>--%>


<%--<table class="table table-hover">--%>
    <%--<caption>账户表</caption>--%>
    <%--<tr>--%>
        <%--<td>序号</td><td>姓名</td><td>金额</td>--%>
    <%--</tr>--%>

    <%--<c:forEach items="${accountList}" var="account">--%>
        <%--<tr>--%>
            <%--<td>${account.id}</td>--%>
            <%--<td>${account.name}</td>--%>
            <%--<td>${account.money}</td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>

    <%--&lt;%&ndash;<c:forEach items="${accountList}" var="account">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>${account.id}</td><td>${account.name}</td><td>${account.money}</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--</table>--%>

<%--<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->--%>
<%--<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>--%>
<%--<!-- Include all compiled plugins (below), or include individual files as needed -->--%>
<%--<script type="text/javascript" src="js/bootstrap.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>



<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2018/11/22
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>

<%--表示这个jsp页面是否忽略EL表达式--%>
<%--isELIgnored="false"--%>

<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%--引入c 标签--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <!-- 引入CSS样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<body>
<table class="table table-bordered">
    <caption>边框表格布局</caption>
    <thead>
    <tr>
        <th>编号</th>
        <th>账户名</th>
        <th>余额</th>
    </tr>
    </thead>
    <tbody>
    <%--foreach循环
        items: 要循环的集合对象
        var：循环中的每一个对象
    --%>
    <c:forEach items="${accountList}" var="account">
        <tr>
            <td>${account.id}</td>
            <td>${account.name}</td>
            <td>${account.money}</td>
        </tr>
    </c:forEach>
    </tbody></table>
</body>
<!-- 引入JS文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</html>