package com.asm.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asm.bean.Comment;
import com.asm.dao.CommentRepo;
import com.asm.service.CommentService;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentRepo commentRepo;

    @Override
    public List<Comment> getAllComments() {
        return commentRepo.findAll();
    }

    @Override
    public Comment addComment(Comment comment) {
        comment.getCreateDate();
        return commentRepo.save(comment);
    }
}
