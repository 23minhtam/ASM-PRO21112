package com.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.asm.bean.Comment;

@Repository
public interface CommentRepo extends JpaRepository<Comment, Long> {
    // You can add custom query methods if needed
}
