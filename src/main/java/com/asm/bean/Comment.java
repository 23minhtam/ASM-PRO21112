package com.asm.bean;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "comments")
public class Comment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String content;

	@Column(name = "created_at")
	private LocalDateTime createdAt;

	// Constructors, getters, setters, etc.
}
