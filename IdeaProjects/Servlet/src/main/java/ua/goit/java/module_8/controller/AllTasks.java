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
import java.util.ArrayList;
import java.util.List;

@WebServlet (name = "AllTasks", urlPatterns = {"/list"})
public class AllTasks extends HttpServlet{
    private List<Task> tasks = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        Task task1 =  new Task(1, "Read book", "Reading", true);
        Task task2 =  new Task(2, "Write letter", "Writing", true);
        Task task3 =  new Task(3, "Run 10 km", "Running", false);

        tasks.add(task1);
        tasks.add(task2);
        tasks.add(task3);

        request.setAttribute("tasks", tasks);
        HttpSession session = request.getSession();
        session.setAttribute("tasks", tasks);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/tasks.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Task task = new Task();
        task.setId(Integer.parseInt(request.getParameter("id")));
        task.setName(request.getParameter("name"));
        task.setCategory(request.getParameter("category"));
        task.setComplete(Boolean.parseBoolean(request.getParameter("complete")));
        tasks.add(task);


        HttpSession session = request.getSession();
        /*String username = (String)request.getAttribute("un");*/
        session.setAttribute("tasks", tasks);

        response.sendRedirect("/jsp/tasks.jsp");
        /*RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/tasks.jsp");
        requestDispatcher.forward(request, response);*/
    }

    @Override
    public void init() throws ServletException {

    }
}
