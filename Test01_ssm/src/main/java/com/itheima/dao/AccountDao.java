package com.itheima.dao;

import com.itheima.entity.Account;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
public interface AccountDao {
    @Select("select * from account")
    List<Account> findAll();
    @Select("select * from account where id = #{id} ")
    Account findById(Integer id);
    @Insert("insert into account values(null,#{name},#{money})")
    void save(Account account);
    @Delete("delete from account where id = #{id}")
    void del(Integer id);
    @Update("update account set name = #{name},money = #{money} where id = #{id}  ")
    void update(Account account);

}
