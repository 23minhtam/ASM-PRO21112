package com.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.asm.bean.Comment;

public interface CommentRepo extends JpaRepository<Comment, Long> {
	// Additional methods can be added for custom queries if needed
}
