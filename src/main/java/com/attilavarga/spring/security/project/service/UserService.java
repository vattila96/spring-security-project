package com.attilavarga.spring.security.project.service;

import com.attilavarga.spring.security.project.entity.User;
import com.attilavarga.spring.security.project.user.CrmUser;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {
    User findByUserName(String userName);
    void save(CrmUser crmUser);
}