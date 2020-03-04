package cn.controller;



import cn.pojo.Real_estate;
import cn.pojo.Users;
import cn.service.real_estate.Real_estateServiceImpl;
import cn.service.real_estate.real_estateService;
import cn.service.users.UsersService;
import cn.tools.Constants;
import cn.tools.PageSupport;
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/users")
public class UsersController {

    @Resource
    private UsersService usersService;

    @Resource
    private real_estateService real_estateService;
    //跳转注册页面
    @RequestMapping("/regit1")
    public String regit(){

        return "redirect:/regit.jsp";
    }
    //返回登录页面
    @RequestMapping("/zhu1")
    public String zhu1(){

        return "redirect:/login.jsp";
    }

    //验证身份证号是否重复
    @RequestMapping("/selectCid")
    @ResponseBody
    public Object userSelectCid(String cardId){
       Users users= usersService.selectCid(cardId);
       return JSON.toJSONString(users);
    }
    //注册
    @RequestMapping("/regin")
    public String rigetOne(Users users,String cardId,String name,String password){
        int card=Integer.parseInt(cardId.substring(17,18));
        int gender=0;
        if (card%2==0){
            gender=0;
        }else{
            gender=1;
        }
        users.setCardId(cardId);
        users.setGender(gender);
        users.setName(name);
        users.setPassword(password);
        usersService.regin(users);
        return "redirect:/login.jsp";
    }

    //登录
    @RequestMapping("/login")
    @ResponseBody
    public Object login(String cardId, String password, HttpSession session)  {
        Users user=usersService.login(cardId,password);
        String str="";
        if(user!=null){
            session.setAttribute("users", user);
            str= JSON.toJSONString("a");
        }else if(user==null) {
            str= JSON.toJSONString("b");
        }else if (user.getStatus()==0){
            str= JSON.toJSONString("c");
        }
        return str;

    }

    //跳转主页面
    @RequestMapping("/login1")
    public String log(){
        return "fram";
    }

    //分页查询
    @RequestMapping("/fenye")
    public String fenye(Map<String,Object> model, String pageIndex, String tiaojian,String leibie,HttpSession session){

        int pag=0;
        //设置页面容量
        int pageSize= Constants.pageSize;
        //当前页码
        int currentPageNo = 1;
        if(pageIndex != null){
            try{
                currentPageNo = Integer.valueOf(pageIndex);
            }catch(NumberFormatException e){
                return "redirect:/401";
            }
        }

        //根据条件判断是根据什么查询
        if(tiaojian!=null && tiaojian!=""){
            pag=Integer.parseInt(tiaojian);

        }

        //名字
        String name="";
        //身份证号
        String cid="";
        if(pag==1){
            name=leibie;
        }else {
            cid=leibie;
        }
        System.out.println("name+++"+name);

        System.out.println("cid+++"+cid);
        //总条数
        int totalCount=real_estateService.getCont(name,cid);

        if (totalCount==0){
            session.setAttribute("sum","暂无符合条件的数据！");
        }else {
            session.setAttribute("sum"," ");
        }

        //总页数
        PageSupport pages=new PageSupport();
        pages.setCurrentPageNo(currentPageNo);
        pages.setPageSize(pageSize);
        pages.setTotalCount(totalCount);
        int totalPageCount = pages.getTotalPageCount();

        //控制首页和尾页
        if(currentPageNo < 1){
            currentPageNo = 1;
        }else if(currentPageNo > totalPageCount){
            currentPageNo = totalPageCount;
        }


        List<Real_estate> listSale=real_estateService.getListReal_estate(name,cid,currentPageNo,pageSize);
        model.put("saleList",listSale);
        model.put("page",pages);
        session.setAttribute("aaaa",leibie);
        return "fram_02";
    }
}
