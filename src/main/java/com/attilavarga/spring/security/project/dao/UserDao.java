package com.attilavarga.spring.security.project.dao;

import com.attilavarga.spring.security.project.entity.User;

public interface UserDao {
    User findByUserName(String userName);
    void save(User user); 
}
