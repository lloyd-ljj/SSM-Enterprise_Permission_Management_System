package shu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shu.dao.IRoleDao;
import shu.domain.Permission;
import shu.domain.Role;
import shu.service.IRoleService;

import java.util.List;


@Service
public class RoleServiceImpl implements IRoleService {

    @Autowired
    IRoleDao roleDao;

    @Override
    public List<Role> findAll() throws Exception {
        return roleDao.findAll();
    }

    @Override
    public void save(Role role) throws Exception {
        roleDao.save(role);
    }

    @Override
    public Role findById(String roleId) throws Exception {
        return roleDao.findById(roleId);
    }

    @Override
    public List<Permission> findOtherPermissions(String roleId) throws Exception {
        return roleDao.findOtherPermissions(roleId);
    }

    @Override
    public void addPermissionToRole(String roleId, String[] permissionIds) throws Exception {
        for (String permissionId :permissionIds) {
            roleDao.addPermissionToRole(roleId, permissionId);
        }
    }

    @Override
    public void deleteRoleById(String roleId) {
        //从user_role表中删除
        roleDao.deleteFromUser_RoleByRoleId(roleId);
        //从role_permission表中删除
        roleDao.deleteFromRole_PermissionByRoleId(roleId);
        //从role表中删除
        roleDao.deleteRoleById(roleId);
    }
}
