<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>All tasks</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet"/>

    <style>
        .brd {
            border: 4px double black; /* Параметры границы */
            background: #f7f7f7; /* Цвет фона */
            padding: 10px; /* Поля вокруг текста */
        }
    </style>

</head>
<body>

<%--<a href="/jsp/add.jsp">Add new task</a>--%>
<hr>

<div style="width: 50%; margin-left: 20px">
    <h2 style="text-align: center"> My list of tasks</h2>
    <hr>
    <table border="1" width="1000px" class="table table-striped">
        <tr>
            <th>id</th>
            <th>Name</th>
            <th>Category</th>
            <th>Complete</th>
            <th></th>
            <th></th>
        </tr>
        <c:forEach items="${tasks}" var="task">
            <tr>
                <td>${task.id}</td>
                <td>${task.name}</td>
                <td>${task.category}</td>
                <td>${task.complete}</td>
               <%-- <td>
                    <input type="checkbox" name="complete" value="true" checked/>
                </td>--%>
                <td style="align-items: center; width: 30px">
                    <a href="/update?id=${task.id}">Edit</a>
                </td>
                <td style="align-items: center; width: 30px">
                    <a href="/update?id=${task.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

<hr>

<div style="width: 50%; margin-left: 20px" class="brd">
    <h2 style="text-align: center"> Add new task</h2>
    <hr>
    <form class="form-horizontal" method="post" action="/list">

        <div class="form-group">
            <label class="col-sm-2 control-label">Id:</label>
            <input required class="form-control" type="text" name="id" style="width:200px">
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Name:</label>
            <input required class="form-control" type="text" name="name" style="width:200px">
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Category:</label>
            <input required class="form-control" type="text" name="category" style="width:200px"/>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Complete:</label>
            <select class="form-control" name="complete" style="width:200px">
                <option value="true">YES</option>
                <option value="false">NO</option>
            </select>
        </div>

         <div class="form-group">
             <label class="col-sm-2 control-label"> </label>
             <button type="submit" class="btn-lg btn-primary">Add Task</button>
         </div>
    </form>


</div>

</body>
</html>
