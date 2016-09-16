
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
    <h2 style="text-align: center"> Add new task</h2>
    <hr>
    <form class="form-horizontal" method="post" action="/AllTasks">

        <div class="form-group">
            <label class="col-sm-2 control-label">Id:</label>
            <input class="form-control" type="text" name="id" style="width:200px">
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Name:</label>
            <input class="form-control" type="text" name="name" style="width:200px">
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Category:</label>
            <select class="form-control" name="category" style="width:200px">
                <option value="Reading">Reading</option>
                <option value="Writing">Writing</option>
                <option value="Running">Running</option>
            </select>
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
