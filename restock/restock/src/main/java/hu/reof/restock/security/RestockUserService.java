/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hu.reof.restock.security;

import hu.reof.restock.hibernate.Userauth;
import hu.reof.restock.hibernate.util.UserauthUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
/**
 *
 * @author fulopattila
 */
public class RestockUserService implements UserDetailsService {
    public RestockUserService(){        
    }
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        Userauth userauth = UserauthUtil.getUserauthByUsernev(username);
        Userauth userauth = new Userauth("test", "testuser", "test", 1, 0, null, null);
        
        if (userauth == null) {
            throw new UsernameNotFoundException("username not found");
        }
        User user = createSpringUserFromEntity(userauth);
        System.out.println("...user found: " + user.getUsername() + " (" + user.getPassword()+")...");
        return user;
    }
    
     private User createSpringUserFromEntity(Userauth userauth) {
        if (userauth == null) {
            return null;
        }
        ArrayList<GrantedAuthority> roles = new ArrayList<>(1);
        Collections.addAll(roles, new SimpleGrantedAuthority("ROLE_USER"));
        return new User(userauth.getUsernev(), userauth.getJelszo(), userauth.getAktiv() == 1, userauth.getReglejarat() == null, userauth.getJelszolejarat() == null, userauth.getZarolt() == 0, roles);
    }
    
    
    
}
