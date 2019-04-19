package com.javatree.tech.service;

import java.util.Optional;

import com.javatree.tech.model.User;

public interface UserService {

    Optional<User> findByUsername(String username);

    Optional<User> findByEmail(String email);

    User save(User user);
}
