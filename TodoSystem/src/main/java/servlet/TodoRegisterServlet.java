package servlet;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.TodoDAO;

/**
 * Servlet implementation class TodoRegisterServlet
 */
@WebServlet("/todo-register")
public class TodoRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TodoRegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("count", 0);
		RequestDispatcher rd = request.getRequestDispatcher("todo-register.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String title = request.getParameter("title");
		String comment = request.getParameter("comment");
		Date deadLine = Date.valueOf(request.getParameter("deadLine"));

		TodoDAO dao = new TodoDAO();

		try {
			dao.registerTodo(title, comment, deadLine);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		RequestDispatcher rd = request.getRequestDispatcher("todo-list");
		rd.forward(request, response);
	}

}
