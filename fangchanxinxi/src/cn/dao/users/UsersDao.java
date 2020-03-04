package cn.dao.users;

import org.apache.ibatis.annotations.Param;
import cn.pojo.Users;

public interface UsersDao {


   //验证身份证号是否重复
    Users selectCid(String cardId);
    //注册
    int regin(Users users);
    //登录
    Users login(@Param("cardId") String cardId, @Param("password") String password);

}
