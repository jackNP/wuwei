package com.itheima.service;

import com.itheima.entity.Account;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface AccountService {
    List<Account> findAll();
    Account findById(Integer id);
    void save(Account account);
    void del(Integer id);
    void update(Account account);
}
