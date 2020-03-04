package cn.dao.real_estate;

import cn.pojo.Real_estate;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface real_estateDao {
    //分页按条件查询
    List<Real_estate> getListReal_estate(@Param("name") String name, @Param("cardId") String cardId, @Param("qi") Integer qi, @Param("shi") Integer shi);
    //总条数
    int getCont(@Param("name") String name, @Param("cardId") String cardId);
}
