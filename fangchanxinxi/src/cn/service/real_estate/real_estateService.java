package cn.service.real_estate;

import cn.pojo.Real_estate;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface real_estateService {
    //分页按条件查询
    List<Real_estate> getListReal_estate(String name,String cardId, @Param("qi") Integer qi, @Param("shi") Integer shi);
    //总条数
    int getCont(String name,String cardId);
}
