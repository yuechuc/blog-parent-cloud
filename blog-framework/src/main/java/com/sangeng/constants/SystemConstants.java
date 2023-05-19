package com.sangeng.constants;

import io.swagger.models.auth.In;

public class SystemConstants
{
    /**
     *  文章是草稿
     */
    public static final int ARTICLE_STATUS_DRAFT = 1;
    /**
     *  文章是正常分布状态
     */
    public static final int ARTICLE_STATUS_NORMAL = 0;
    public static final Integer NO_DELETE = 0;

    public static final int Category_STATUS_DRAFT = 1;
    public static final String Category_STATUS_NORMAL = "0";
    public static final String LINK_STATUS_NORMAL = "0";
    public static final Long COMMENT_ROOT_ID = -1L;
    public static final String COMMENT_LINK = "1";
    public static final String COMMENT_ARTICLE = "0";
    public static final String MENU = "C";
    public static final String BUTTON = "F";
    public static final String STATUS_NORMAL = "0";

    public static final String ADMAIN = "1";
    public static final Long MENT_PARENT_ID = 0L;
    public static final Long ADMAIN_ID = 1L;
}