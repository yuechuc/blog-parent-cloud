package com.sangeng;

import com.sangeng.utils.RedisCache;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest
@RunWith(SpringRunner.class)
public class uploadTest {

    @Autowired
    private RedisCache redisCache;

    @Test
    public void test() {
        //LoginUser loginUser = SecurityUtils.getLoginUser();
        redisCache.setCacheObject("test","yuechu");
    }



}
