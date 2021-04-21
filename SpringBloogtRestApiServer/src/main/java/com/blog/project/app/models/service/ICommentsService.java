package com.blog.project.app.models.service;

import java.util.List;

import com.blog.project.app.entities.Comments;
import com.blog.project.app.entities.Comments.ShowAllComments;

public interface ICommentsService {
/// Default
	public List<Comments> findAll();
	public Comments findCommentById(int id);

	public void save(Comments comments);

	public void delete(Long id);

/// Custom
	public List<ShowAllComments> findOne(int id);

	public List<ShowAllComments> findAllProjectedBy();

}
