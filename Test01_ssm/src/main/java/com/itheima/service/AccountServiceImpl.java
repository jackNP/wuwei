package com.itheima.service;

import com.itheima.dao.AccountDao;
import com.itheima.entity.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountDao accountDao;

    @Override
    public List<Account> findAll() {
        return accountDao.findAll();
    }

    @Override
    public Account findById(Integer id) {
        return accountDao.findById(id);
    }

    @Override
    public void save(Account account) {
        accountDao.save(account);
    }

    @Override
    public void del(Integer id) {
        accountDao.del(id);
    }

    @Override
    public void update(Account account) {
        accountDao.update(account);
    }
}
