package ua.goit.java.module_8.controller;


import ua.goit.java.module_8.Task;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "UpdateTask", urlPatterns = {"/update"})
public class UpdateTask extends HttpServlet{


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Task beforeUpdateTask;

        HttpSession session = request.getSession();
        List<Task> tasks = (List<Task>) session.getAttribute("tasks");

        int id = Integer.parseInt(request.getParameter("id"));

        Iterator<Task> iterator = tasks.iterator();
        while (iterator.hasNext()) {
            Task currentTask = iterator.next();
            if(currentTask.getId()==id) {
                beforeUpdateTask = currentTask;
                session.setAttribute("beforeUpdateTask", beforeUpdateTask);
                iterator.remove();
                session.setAttribute("tasks", tasks);
            }

        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/update.jsp");
        requestDispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Task> tasks = (List<Task>) session.getAttribute("tasks");

        Task afterUpdateTask = new Task();
        afterUpdateTask.setId(Integer.parseInt(request.getParameter("id")));
        afterUpdateTask.setName(request.getParameter("name"));
        afterUpdateTask.setCategory(request.getParameter("category"));
        afterUpdateTask.setComplete(Boolean.parseBoolean(request.getParameter("complete")));
        tasks.add(afterUpdateTask);


        session.setAttribute("tasks", tasks);

        response.sendRedirect("/jsp/tasks.jsp");
    }
}
