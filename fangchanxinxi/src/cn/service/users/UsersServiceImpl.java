package cn.service.users;

import org.springframework.stereotype.Service;
import cn.dao.users.UsersDao;
import cn.pojo.Users;

import javax.annotation.Resource;

@Service
public class UsersServiceImpl implements UsersService {
    @Resource
    private  UsersDao usersDao;

    @Override
    public Users selectCid(String cardId) {
        return usersDao.selectCid(cardId);
    }

    @Override
    public int regin(Users users) {
        return usersDao.regin(users);
    }

    @Override
    public Users login(String cardId, String password) {
        return usersDao.login(cardId,password);
    }
}
