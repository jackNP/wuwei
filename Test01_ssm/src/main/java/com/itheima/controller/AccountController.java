package com.itheima.controller;

import com.itheima.entity.Account;
import com.itheima.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/account")
public class AccountController {
    @Autowired
    private AccountService accountService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        //查询数据
        List<Account> accountList = accountService.findAll();
        System.out.println(accountList);
        ModelAndView modelAndView = new ModelAndView();
        //添加数据
        modelAndView.addObject("accountList",accountList);
        //指定页面
        modelAndView.setViewName("show");
        return modelAndView;
    }

    @RequestMapping("/findById")
    public ModelAndView findById(Integer id){
        Account account = accountService.findById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("account",account);
        return modelAndView;
    }

}
