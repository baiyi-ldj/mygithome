var userName=null;
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
    userName=$("#userName");
    password=$("#password");
    subBtn=$(".subBtn");
    productName= $("#productName");
    path=$(".path").val();

    subBtn.click(function(){

        var cardId = document.getElementById("cardId");
        if (cardId.validity.valueMissing == true) {
            cardId.setCustomValidity("身份证号不能为空");
        } else {
            cardId.setCustomValidity("");
        }
        if(cardId.validity.patternMismatch){
            cardId.setCustomValidity("身份证必须为18位!");
        }

        var name = document.getElementById("name");
        if (name.validity.valueMissing == true) {
            name.setCustomValidity("用户名不能为空");
        } else {
            name.setCustomValidity("");
        }
        if(name.validity.patternMismatch){
            name.setCustomValidity("用户名格式不正确!");
        }

        var password = document.getElementById("password");
        if (password.validity.valueMissing == true) {
            password.setCustomValidity("密码不能为空");
        } else {
            password.setCustomValidity("");
        }
        if(password.validity.patternMismatch){
            password.setCustomValidity("密码至6少位!");
        }
        if ($("#password").val()!=$("#password1").val()){
            password.setCustomValidity("两次密码必须一致!");
        }


    });

    $("#cardId").blur(function () {
        if ($(this).val()!="") {
            $.getJSON(path+"/users/selectCid",{cardId:$(this).val()},function (data){
                    if (data==null) {
                        $("#n").html(" ");
                    }else {
                        $("#n").html("已经存在！");
                        $("#cardId").val("");
                    }

            });

        }
    })


    $("#d").click(function () {

            window.location=path+"/users/zhu1";


    })





})