
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new task</title>
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


<hr>
<div style="width: 50%; margin-left: 20px" class="brd">
    <h2 style="text-align: center"> Update task</h2>
    <hr>
    <form class="form-horizontal" method="post" action="/update">

        <div class="form-group">
            <label class="col-sm-2 control-label">Id:</label>
            <input required value="${beforeUpdateTask.id}" class="form-control" type="text" name="id" style="width:200px"/>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Name:</label>
            <input required value="${beforeUpdateTask.name}" class="form-control" type="text" name="name" style="width:200px"/>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Category:</label>
            <input required value="${beforeUpdateTask.category}" class="form-control" type="text" name="category" style="width:200px"/>
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
            <button type="submit" class="btn-lg btn-primary">Update Task</button>
        </div>
    </form>


</div>



</body>
</html>
