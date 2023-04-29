package com.hq.service;

import com.hq.model.User;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author admin
 */
public interface UserService extends UserDetailsService {
    public User getUserByUsername(String username);
}