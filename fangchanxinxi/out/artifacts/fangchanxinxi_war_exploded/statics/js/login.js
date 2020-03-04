var cardId=null;
var password=null;
var subBtn=null;
var path=null;
var productName=null;
$(function(){

    /*$.getJSON(path+"/users/Productnamelist",function (data){

        var $date=$(data);
        $date.each(function (i){
            $("#sel").append("<option value='"+i.id+"'>"+i.productName+"</option>")
        })

    }*/
    cardId=$("#cardId");
    password=$("#password");
    subBtn=$(".subBtn");
    productName= $("#productName");
    path=$(".path").val();

    subBtn.click(function(){

        if (cardId.val()==""){
            alert("身份证号码不能为空！");
            return false;
        }
        if (password.val()==""){
            alert("密码不能为空！");
            return false;
        }

        if (cardId.val()!=""&&password.val()!=""){

            $.getJSON(path+"/users/login",{cardId:cardId.val(),password:password.val()},function (data){

                if (data=="b") {
                    window.alert("用户名或密码错误！")
                }else if(data=="a") {
                    window.location=path+"/users/login1";
                }else {
                    window.alert("登录失败！该账号已经冻结！")
                }

                });


        }

    });



    $("#d").click(function () {
        if (confirm("确定要退出系统么？")==true) {
            window.location=path+"/users/zhu1";

        }else {
            return;
        }
    })
  /*  $(".selectCount").click(function () {

        $.getJSON(path+"/users/selectCount",{productName:productName.val()},function (data){
            var str="该商品的商品数量为"+data;
            $(".count").html(str);
        });

    })*/
     /*  $(".btu").click(function () {
            var tiaojian=$("#tiaojian").val();
            window.location=path+"/users/fenye?tiaojian="+tiaojian;

    })*/


   $(".save").click(function () {
       if ($("#sname").val()==0) {
           alert("请选择商品!")
           return false;
       }
       var price = document.getElementById("danjia");
       if (price.validity.valueMissing == true) {
           price.setCustomValidity("销售单价不能为空");
       } else {
           price.setCustomValidity("");
       }

       var num = document.getElementById("num");
       if (num.validity.valueMissing == true) {
           num.setCustomValidity("销售数量不能为空");
       } else {
           num.setCustomValidity("");
       }
       if(num.validity.patternMismatch){
           num.setCustomValidity("销售数量必须为数字!");
       }


   })

})