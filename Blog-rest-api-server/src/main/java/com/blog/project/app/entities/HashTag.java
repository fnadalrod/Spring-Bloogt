package com.blog.project.app.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotEmpty;

@Entity
public class HashTag  implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	

	@NotEmpty
	private String name;
	
	@ManyToMany
	@JoinTable(
			  name = "Hashtag_post", 
			  joinColumns = @JoinColumn(name = "hashtag_id", referencedColumnName = "id"), 
			  inverseJoinColumns = @JoinColumn(name = "post_id", referencedColumnName = "id"))
	private List<Post> posts;
}
