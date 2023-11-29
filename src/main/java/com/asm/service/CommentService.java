package com.asm.service;

import java.util.List;

import com.asm.bean.Comment;

public interface CommentService {
	List<Comment> getAllComments();

	Comment addComment(Comment comment);
}
