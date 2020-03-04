package cn.service.real_estate;


import cn.dao.real_estate.real_estateDao;
import cn.pojo.Real_estate;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;

@Service
public class Real_estateServiceImpl implements real_estateService {
    @Resource
    private real_estateDao real_estateDao;


    @Override
    public List<Real_estate> getListReal_estate(String name, String cardId, Integer qi, Integer shi) {
        qi=qi-1;
        return real_estateDao.getListReal_estate(name,cardId,qi,shi);
    }

    @Override
    public int getCont(String name,String cardId) {
        return real_estateDao.getCont(name,cardId);
    }
}
