package com.sangeng.service;

import com.sangeng.domain.Article;
import com.baomidou.mybatisplus.extension.service.IService;
import com.sangeng.domain.dto.ArticleDto;
import com.sangeng.domain.vo.adminVo.AdminArticleDto;
import com.sangeng.response.ResponseResult;

/**
* @author yuechu
* @description 针对表【sg_article(文章表)】的数据库操作Service
* @createDate 2023-04-29 23:25:47
*/
public interface ArticleService extends IService<Article> {

    ResponseResult getHotArticleList();


    ResponseResult getArticleList(Integer pageNum, Integer pageSize, Long categoryId);

    ResponseResult getArticledetail(Long id);

    ResponseResult updateViewCount(Long id);

    ResponseResult addArticle(ArticleDto articleDto);

    ResponseResult list(Integer pageNum, Integer pageSize, ArticleDto articleDto);

    ResponseResult selectById(Long id);

    ResponseResult updateArticle(AdminArticleDto adminArticleDto);
}
