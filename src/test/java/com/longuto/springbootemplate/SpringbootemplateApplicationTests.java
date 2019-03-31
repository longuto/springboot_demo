package com.longuto.springbootemplate;

import com.longuto.springbootemplate.pojo.dto.LoginUserDto;
import com.longuto.springbootemplate.service.SysUserRoleService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringbootemplateApplicationTests {

    private static Logger log = LoggerFactory.getLogger(SpringbootemplateApplicationTests.class);

    @Autowired
    SysUserRoleService sysUserRoleService;

    @Test
    public void contextLoads() {
        List<LoginUserDto> userDtos = sysUserRoleService.findUserByRole(1);
        for (LoginUserDto temp : userDtos) {
            log.info("username：" + temp.getUsername());
        }
    }

}
