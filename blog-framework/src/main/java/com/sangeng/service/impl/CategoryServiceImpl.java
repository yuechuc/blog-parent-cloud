package com.sangeng.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sangeng.constants.SystemConstants;
import com.sangeng.domain.Article;
import com.sangeng.domain.Category;
import com.sangeng.domain.dto.CategoryQueryDto;
import com.sangeng.domain.vo.PageVo;
import com.sangeng.response.ResponseResult;
import com.sangeng.service.ArticleService;
import com.sangeng.service.CategoryService;
import com.sangeng.mapper.CategoryMapper;
import com.sangeng.utils.BeanCopyUtils;
import com.sangeng.domain.vo.CategoryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import static com.sangeng.constants.SystemConstants.Category_STATUS_NORMAL;

/**
 * @author yuechu
 * @description 针对表【sg_category(分类表)】的数据库操作Service实现
 * @createDate 2023-04-29 23:27:42
 */
@Service
public class CategoryServiceImpl extends ServiceImpl<CategoryMapper, Category>
        implements CategoryService {

    @Autowired
    private ArticleService articleService;


    @Override
    public ResponseResult getCategoryList() {
        //查询文章表  状态为已发布的文章
        LambdaQueryWrapper<Article> articleWrapper = new LambdaQueryWrapper<>();
        articleWrapper.eq(Article::getStatus, SystemConstants.ARTICLE_STATUS_NORMAL);
        List<Article> articleList = articleService.list(articleWrapper);
        //获取文章的分类id，并且去重
        Set<Long> categoryIds = articleList.stream()
                .map(article -> article.getCategoryId())
                .collect(Collectors.toSet());

        //查询分类表
        List<Category> categories = listByIds(categoryIds);
        categories = categories.stream()
                .filter(category -> Category_STATUS_NORMAL.equals(category.getStatus()))
                .collect(Collectors.toList());
        //封装vo
        List<CategoryVo> categoryVos = BeanCopyUtils.copyBeanList(categories, CategoryVo.class);

        return ResponseResult.okResult(categoryVos);
    }

    @Override
    public ResponseResult listAllCategory() {
        LambdaQueryWrapper<Category> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Category::getStatus, Category_STATUS_NORMAL);
        List<Category> list = this.list(wrapper);
        List<CategoryVo> categoryVos = BeanCopyUtils.copyBeanList(list, CategoryVo.class);

        return ResponseResult.okResult(categoryVos);
    }

    @Override
    public ResponseResult list(Integer pageNum, Integer pageSize, CategoryQueryDto categoryQueryDto) {
        LambdaQueryWrapper<Category> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper
                .eq(StringUtils.hasText(categoryQueryDto.getName()), Category::getName, categoryQueryDto.getName())
                .eq(StringUtils.hasText(categoryQueryDto.getStatus()), Category::getStatus, categoryQueryDto.getStatus())
                .orderByDesc(Category::getUpdateTime);

        Page<Category> page = new Page<>(pageNum, pageSize);
        Page<Category> categoryPage = this.page(page, queryWrapper);

        List<CategoryVo> categoryVos = BeanCopyUtils.copyBeanList(categoryPage.getRecords(), CategoryVo.class);
        PageVo pageVo = new PageVo(categoryVos, categoryPage.getTotal());
        return ResponseResult.okResult(pageVo);
    }


}




