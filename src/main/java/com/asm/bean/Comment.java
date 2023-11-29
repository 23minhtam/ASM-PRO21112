package com.asm.bean;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Comments")
public class Comment {
	@Id
    private String username; 

    @Column(columnDefinition = "NVARCHAR(MAX)")
    private String content;

    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

    // Add other necessary fields, e.g., User, Product, etc.

    
}
