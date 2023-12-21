package model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.entity.TodoBean;

public class TodoDAO {
	/**
	 * todoリスト取得
	 * @return todoリスト
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public List<TodoBean> getTodoList() throws ClassNotFoundException, SQLException {
		List<TodoBean> todoList = new ArrayList<>();

		String sql = "SELECT todo_id, title, comment, deadline FROM todo";

		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet res = pstmt.executeQuery()) {

			while (res.next()) {
				int id = res.getInt("todo_id");
				String title = res.getString("title");
				String comment = res.getString("comment");
				Date deadLine = res.getDate("deadLine");

				TodoBean todo = new TodoBean(id, title, comment, deadLine);

				todoList.add(todo);
			}
		}

		return todoList;
	}

	/**
	 * todo登録
	 * @param todo
	 * @return　登録件数
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public int registerTodo(String title, String comment, Date deadLine) throws ClassNotFoundException, SQLException {
		int count = 0;

		String sql = "INSERT INTO todo(todo_id, title, comment, deadline) VALUES(null, ?, ?, ?)";

		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setString(1, title);
			pstmt.setString(2, comment);
			pstmt.setDate(3, deadLine);

			count = pstmt.executeUpdate();
		}
		return count;
	}

	public int deleteTodo(int id) throws ClassNotFoundException, SQLException {
		int count = 0;

		String sql = "DELETE FROM todo WHERE todo_id = ?";

		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setInt(1, id);

			count = pstmt.executeUpdate();
		}
		return count;
	}
}
