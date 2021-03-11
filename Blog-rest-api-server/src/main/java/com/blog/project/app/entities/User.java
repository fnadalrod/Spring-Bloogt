package com.blog.project.app.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotEmpty;

import com.blog.project.app.entities.Comments.ShowComments;
import com.blog.project.app.entities.Post.PostByUser;

@Entity
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@NotEmpty
	private String username;

	@NotEmpty
	private String name;
	
	@NotEmpty
	private String surname;
	


	@NotEmpty
	private String email;

	@NotEmpty
	private String avatar;

	@NotEmpty
	private String password;

	@NotEmpty
	private String createdAt;

	@NotEmpty
	private String role;

	@OneToMany
	@JoinColumn(name = "user_id", referencedColumnName = "id")
	private List<Comments> comments;

	@OneToMany
	@JoinColumn(name = "user_id", referencedColumnName = "id")
	private List<Post> posts;

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String created_at) {
		this.createdAt = created_at;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public List<Comments> getComments() {
		return comments;
	}

	public void setComments(List<Comments> comments) {
		this.comments = comments;
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////		Projections
///////////
///////////		Used to avoid showing all fields
	
	public interface UserData {
		String getId();
		
		String getUsername();
	    String getName();
		String getAvatar();
		String getSurname();
		String getEmail();
		String getRole();
		String getCreatedAt();
	}

	public interface UserComments {
		String getId();
		String getUsername();
		List<ShowComments> getComments();
	}

	public interface UserPosts {
		String getId();
		String getUsername();
		List<PostByUser> getPosts();
	}
	public interface OnlyUsername {
		String getId();
		String getUsername();
	}
}
