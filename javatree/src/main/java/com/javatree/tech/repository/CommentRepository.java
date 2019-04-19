package com.javatree.tech.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.javatree.tech.model.Comment;

public interface CommentRepository extends JpaRepository<Comment, Long> {
}
