package cn.service.users;


import cn.pojo.Users;

public interface UsersService {

    //验证身份证号是否重复
    Users selectCid(String cardId);
    //注册
    int regin(Users users);
    //登录
    Users login(String cardId, String password);
}
