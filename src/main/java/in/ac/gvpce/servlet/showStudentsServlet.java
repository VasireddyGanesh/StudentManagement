package in.ac.gvpce.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import in.ac.gvpce.bean.*;

import in.ac.gvpce.dao.*;

/**
 * Servlet implementation class showStudentsServlet
 */
@WebServlet("/showStudentsServlet")
public class showStudentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private StudentDao st;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showStudentsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() {
    	st=new StudentDao();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			ArrayList<Student> res=st.getStudents();
			if(res!=null) {
				request.setAttribute("list", res);
				request.getRequestDispatcher("results.jsp").forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
