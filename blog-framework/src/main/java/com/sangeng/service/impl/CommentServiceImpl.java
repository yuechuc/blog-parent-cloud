package com.sangeng.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sangeng.constants.SystemConstants;
import com.sangeng.domain.User;
import com.sangeng.enums.AppHttpCodeEnum;
import com.sangeng.exception.SystemException;
import com.sangeng.mapper.CommentMapper;
import com.sangeng.response.ResponseResult;
import com.sangeng.service.CommentService;
import com.sangeng.service.UserService;
import com.sangeng.utils.BeanCopyUtils;
import com.sangeng.domain.vo.CommentVo;
import com.sangeng.domain.vo.PageVo;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sangeng.domian.Comment;


import java.util.*;
import java.util.stream.Collectors;


/**
 * 评论表(Comment)表服务实现类
 *
 * @author makejava
 * @since 2023-04-30 22:46:57
 */
@Service
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment>
        implements CommentService {

    @Autowired
    private UserService userService;

    @Override
    public ResponseResult commentList(String commentType, Long articleId, Integer pageNum, Integer pageSize) {
        //查询对应文章的根评论
        LambdaQueryWrapper<Comment> queryWrapper = new LambdaQueryWrapper<>();
        //对articleId进行判断
        queryWrapper.eq(SystemConstants.COMMENT_ARTICLE.equals(commentType),Comment::getArticleId,articleId);
        //根评论 rootId为-1
        queryWrapper.eq(Comment::getRootId,-1);

        //评论类型
        queryWrapper.eq(Comment::getType,commentType);

        //分页查询
        Page<Comment> page = new Page(pageNum,pageSize);
        page(page,queryWrapper);

        //生成跟评论集合
        List<CommentVo> commentVoList = toCommentVoList(page.getRecords());

        //获取usermap，封如头像<id,user>
        Map<Long, User> userMap = getUserMap(commentVoList);


        //查询所有根评论对应的子评论集合，并且赋值给对应的属性
        for (CommentVo commentVo : commentVoList) {
            User user = userMap.get(commentVo.getCreateBy());
            commentVo.setAvatar(user.getAvatar());
            //查询对应的子评论
            List<CommentVo> children = getChildren(commentVo.getId());
            //赋值
            commentVo.setChildren(children);
        }

        return ResponseResult.okResult(new PageVo(commentVoList,page.getTotal()));
    }

    @NotNull
    private Map<Long, User> getUserMap(List<CommentVo> commentVoList) {
        List<Long> users = commentVoList.stream().map(commentVo -> commentVo.getCreateBy()).collect(Collectors.toList());
        if (users == null || users.isEmpty()) {
            return Collections.emptyMap();
        }
        List<User> userList = userService.listByIds(users);
        Map<Long, User> userMap = userList.stream().collect(Collectors.toMap(User::getId, user -> user));
        return userMap;
    }

    @Override
    public ResponseResult addComment(Comment comment) {
        if (Objects.isNull(comment)){
            throw new SystemException(AppHttpCodeEnum.CONTEXT_NOT_NULL);
        }

        this.save(comment);
        return ResponseResult.okResult();
    }



    //根据根评论的id查询所对应的子评论的集合
    //rootId 根评论的id
    private List<CommentVo> getChildren(Long rootId) {
        LambdaQueryWrapper<Comment> queryWrapper = new LambdaQueryWrapper<>();

        //根据rootid获取其所有子评论
        queryWrapper
                .eq(Comment::getRootId, rootId)
                .orderByDesc(Comment::getCreateTime);
        List<Comment> list = this.list(queryWrapper);
        List<CommentVo> commentVos = toCommentVoList(list);

        //获取usermap，封如头像<id,user>
        Map<Long, User> userMap = getUserMap(commentVos);

        //写入头像
        for (CommentVo commentVo : commentVos) {
            User user = userMap.get(commentVo.getCreateBy());
            commentVo.setAvatar(user.getAvatar());
        }

        return commentVos;
    }



    //写入被回复评论的nickName
    //和评论创建人的nickName
    private List<CommentVo> toCommentVoList(List<Comment> commentList){
        List<CommentVo> commentVos = BeanCopyUtils.copyBeanList(commentList, CommentVo.class);
        for (CommentVo commentVo : commentVos) {
            //如果toCommentUserId不为-1才进行查询（回复评论的评论），否则就是直接回复文章的评论
            if (commentVo.getToCommentUserId()!=-1){
                //写入toCommentUserName
                String toCommentUserName =
                        userService
                                .getById(commentVo.getToCommentUserId())
                                .getNickName();
                commentVo.setToCommentUserName(toCommentUserName);
            }

            //写入评论创建人的nickName
            String nickName =
                    userService
                            .getById(commentVo.getCreateBy())
                            .getNickName();
            commentVo.setUsername(nickName);
        }

        return commentVos;
    }
}

