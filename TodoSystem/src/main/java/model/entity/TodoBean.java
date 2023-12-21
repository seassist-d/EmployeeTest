package model.entity;

import java.sql.Date;

public class TodoBean {
	private int todoId;
	private String title;
	private String comment;
	private Date deadLine;

	public TodoBean() {
	}

	public TodoBean(int todoId, String title, String comment, Date deadLine) {
		this.todoId = todoId;
		this.title = title;
		this.comment = comment;
		this.deadLine = deadLine;
	}

	public int getTodoId() {
		return todoId;
	}

	public void settodoId(int todoId) {
		this.todoId = todoId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Date getDeadline() {
		return deadLine;
	}

	public void setDeadline(Date deadLine) {
		this.deadLine = deadLine;
	}

}
