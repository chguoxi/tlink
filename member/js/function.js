
//��ʼ�������˵�״̬
var m = new Array();
$.cookie("dede_member_menu")==null ? cookie = "0,1,0,1,0,0,0,0" : cookie = $.cookie("dede_member_menu");
m = cookie.split(",");

$(document).ready(function(){
	//�����˵�
	$(".menu dl dt").each(function(i){
		$(this).attr("_dedemenu",i.toString(10));//��ÿ���˵����ñ��
		mbox = $(this).next("dd");
		if( m[i] == "0" ){//Ӧ�ò˵�״̬
			mbox.hide();
		}else if( m[i] =="1" ){
			mbox.show();
		}else{
			setmenu(i);
		}
	}).click(function(){//����˵��¼�
		mid = $(this).attr("_dedemenu");
		mbox = $(this).next("dd");
		if(mbox.css("display")=="block"){
			mbox.slideUp("fast");
			//mbox.hide();
			setmenu(mid);
		}else{
			mbox.slideDown("fast");
			//mbox.show();
			setmenu(mid);
		}
	});
	
	//table tbody����
	tbody();
	//�ı������CSS+�����ͣ
	inputstyle();
	//���л�ɫ
	trevencolor(".trlist tbody tr:even");
	//�����ͣ��ɫ
	trmouseon(".trlist tbody tr");
});

function tbody(){
	$(".toggle").each(function(){//table bodyĬ������
		tbodybox = $(this).parent("th").parent("tr").parent("tbody").children("tr").not($(this).parent("th").parent("tr"));
		$(this).attr("src") == "images/toggle_off.gif" ? tbodybox.hide() : tbodybox.show();
	}).click(function(){//table body����
		$(this).parent("th").parent("tr").parent("tbody").children("tr").not($(this).parent("th").parent("tr")).toggle();
		$(this).attr("src") == "images/toggle_off.gif" ? $(this).attr("src","images/toggle_on.gif") : $(this).attr("src","images/toggle_off.gif");
	});
}

function setmenu(mid){//�˵�Cookie״̬�л�
	m[mid]=="1" ? m[mid]="0" : m[mid]="1";
	$.cookie("dede_member_menu",m.join(","));
	return m[mid];
}

function inputstyle(){	//�ı������CSS+�����ͣ
	$("input[type='text']").addClass("textipt").focus(function(){ $(this).addClass("textipt_on");}).blur(function(){$(this).removeClass("textipt_on");});
	$("input[type='password']").addClass("textipt").focus(function(){ $(this).addClass("textipt_on");}).blur(function(){$(this).removeClass("textipt_on");});
	$("input[type='file']").addClass("textipt").focus(function(){ $(this).addClass("textipt_on");}).blur(function(){$(this).removeClass("textipt_on");});
	$("textarea").focus(function(){ $(this).addClass("textipt_on");}).blur(function(){$(this).removeClass("textipt_on");});
}

function trevencolor(tdres){//���л�ɫ
	$(tdres).addClass("linecolor");
}

function trmouseon(tdres){//�����ͣ
	$(tdres).mouseover(function(){ $(this).addClass("oncolor");}).mouseout(function(){$(this).removeClass("oncolor");	});
}
