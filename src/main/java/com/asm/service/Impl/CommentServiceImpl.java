package com.asm.service.Impl;

import com.asm.bean.Comment;
import com.asm.dao.CommentRepo;
import com.asm.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentRepo commentRepo;

    @Override
    public Comment saveComment(Comment comment) {
        comment.setCreatedAt(new Date());
        return commentRepo.save(comment);
    }
    
    // Add other methods as needed
}
