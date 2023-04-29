package com.hq.respository;


import com.hq.model.User;
import org.springframework.stereotype.Repository;

@Repository
public interface   UserRepository  {
    User getUserByUsername(String username);
}
