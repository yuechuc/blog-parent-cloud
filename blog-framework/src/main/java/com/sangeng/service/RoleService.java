package com.sangeng.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.sangeng.domain.Role;
import com.sangeng.domain.dto.RoleDto;
import com.sangeng.domain.vo.adminVo.RoleVo;
import com.sangeng.domain.vo.adminVo.SimpleRoleVo;
import com.sangeng.response.ResponseResult;

import java.util.List;


/**
 * 角色信息表(Role)表服务接口
 *
 * @author makejava
 * @since 2023-05-03 11:01:29
 */
public interface RoleService extends IService<Role> {

    List<String> selectRoleKeyByUserId(Long id);

    ResponseResult getRoleListByPage(Integer pageNum, Integer pageSize, String roleName, String status);

    ResponseResult changeStatus(Long roleId, String status);

    ResponseResult addRole(RoleDto roleDto);

    ResponseResult<RoleVo> getRoleById(Long id);

    ResponseResult updateRole(RoleDto roleDto);

    ResponseResult deleteRoleById(List<Long> ids);

    ResponseResult<List<RoleVo>> getAllRole();

    ResponseResult<List<SimpleRoleVo>> getAll();
}

