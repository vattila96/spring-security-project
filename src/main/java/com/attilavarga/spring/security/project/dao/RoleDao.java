package com.attilavarga.spring.security.project.dao;

import com.attilavarga.spring.security.project.entity.Role;

public interface RoleDao {
	public Role findRoleByName(String roleName);
}