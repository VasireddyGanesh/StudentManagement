package in.ac.gvpce.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.ac.gvpce.bean.*;
import in.ac.gvpce.dao.*;


@WebServlet("/register")
public class StudentServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
    private StudentDao studentDao;

    public void init() {
        studentDao = new StudentDao();        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String department = request.getParameter("department");
        String contact = request.getParameter("contact");

        Student student = new Student();
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setUsername(username);
        student.setPassword(password);
        student.setContact(contact);
        student.setDepartment(department);

        try {
            studentDao.registerStudent(student);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        request.setAttribute("obj",student);
        RequestDispatcher rd=request.getRequestDispatcher("accountCreationSuccess.jsp");
        rd.forward(request, response);
    }
}
