package in.ac.gvpce.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.ac.gvpce.bean.*;
import in.ac.gvpce.dao.*;

@WebServlet("/login")
public class StudentLoginServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
    private StudentDao studentDao;

    public void init() {
        studentDao = new StudentDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Student student = new Student();
        student.setUsername(username);
        student.setPassword(password);

        try {
        	student = studentDao.validate(student);
            if (student!=null) {
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
            	request.setAttribute("obj",student);
            	request.getRequestDispatcher("loginsuccess.jsp").forward(request, response);
            } else {
                //HttpSession session = request.getSession();
                //session.setAttribute("user", username);
                response.sendRedirect("index.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
