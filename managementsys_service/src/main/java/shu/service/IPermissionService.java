package shu.service;

import shu.domain.Permission;

import java.util.List;

public interface IPermissionService {
    List<Permission> findAll() throws Exception;

    void save(Permission permission) throws Exception;

    void deleteById(String id) throws Exception;

    Permission findById(String id) throws Exception;
}
