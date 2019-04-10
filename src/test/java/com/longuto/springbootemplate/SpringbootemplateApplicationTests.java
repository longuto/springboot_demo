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

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.BinaryOperator;
import java.util.stream.Collectors;

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

    @Test
    public void java8Test() {
        List<String> list = new ArrayList();
        list.add("cccc1");
        list.add("cccc2");
        list.add("aaaa1");
        list.add("aaaa2");
        list.add("bbbb1");
        list.add("bbbb2");
        // 1、forEach
        list.stream().filter((a) -> a.endsWith("1")).sorted().forEach(System.out::print);
        // 2、count
        long count = list.stream().filter((a) -> a.endsWith("1")).count();
        System.out.println(count);
        // 3、Match
        boolean flag = list.stream().filter(a -> a.startsWith("2")).anyMatch(a -> a.endsWith("1"));
        System.out.println(flag);
        // 4、Reduce
        Optional<String> reduce = list.stream().filter((a) -> a.endsWith("1")).sorted().reduce((a, b) -> a + "#" + b);
        reduce.ifPresent(System.out::println);

        // 5、Stream转成Map
        Map<String, String> collect = list.stream().collect(Collectors.toMap(s -> s + "v1", s -> s + "v2"));
        collect.forEach((k, v) -> System.out.println(k+v));
    }
}
