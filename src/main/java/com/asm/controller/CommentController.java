package com.asm.controller;

import com.asm.bean.Comment;
import com.asm.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;
    public String addComment(@RequestParam("username") String username, 
                             @RequestParam("content") String content, 
                             Model model) {
        Comment comment = new Comment();
        comment.setUsername(username);
        comment.setContent(content);
        commentService.saveComment(comment);
        // You may want to redirect to a different page or refresh the current page
        return "redirect:/product/list";
    }
}
