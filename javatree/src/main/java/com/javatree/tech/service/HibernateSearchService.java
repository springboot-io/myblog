package com.javatree.tech.service;

import java.util.List;

import javax.transaction.Transactional;

import com.javatree.tech.model.Post;

public interface HibernateSearchService {
    @Transactional
    List<Post> search(String searchTerm);
}