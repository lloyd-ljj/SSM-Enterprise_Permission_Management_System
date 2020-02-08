package shu.service;

import org.springframework.security.core.userdetails.UserDetailsService;
import shu.domain.Role;
import shu.domain.UserInfo;

import java.util.List;

public interface IUserService extends UserDetailsService {

    List<UserInfo> findAll() throws Exception;

    void save(UserInfo userInfo) throws Exception;

    UserInfo findById(String id) throws Exception;

    List<Role> findOtherRole(String userId) throws Exception;

    void addRoleToUser(String userId, String[] roleIds) throws Exception;
}
