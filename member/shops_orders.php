<?php 
require_once(dirname(__FILE__)."/config.php");
include_once DEDEINC.'/datalistcp.class.php';

function GetSta($sta,$oid)
{
	global $dsql;
	$row = $dsql->GetOne("SELECT paytype FROM #@__shops_orders WHERE oid='$oid'");
	if($sta==0)
	{
		if($row['paytype'] == 2){
			//��������
			return '��������';
		}elseif($row['paytype'] == 3){
			//���и���
			return 'δ����&gt;<a href="../plus/shops_bank.php?pid='.$row['paytype'].'" target="_blank">����</a>';
		}elseif($row['paytype'] == 4){
			//�������
			return 'δ����&gt;<a href="../plus/shops_bank.php?pid='.$row['paytype'].'" target="_blank">����</a>';
		}elseif($row['paytype'] == 5){
			//�۵�ʱ
			return 'δ����&gt;<a href="shops_point.php?oid='.$oid.'" target="_blank">����</a>';
		}elseif($row['paytype'] == 1){
			//��������֧��
			return 'δ����&gt;<a href="../plus/shops_buyaction.php?oid='.$oid.'" target="_blank">����</a>';
		}
	}
	elseif($sta==1)
	{
		return '�Ѹ���,�ȷ���';
	}
	elseif($sta==2)
	{
		return '<a href="shops_products.php?do=ok&oid='.$oid.'">ȷ��</a>';
	}
	else
	{
		return '�����';
	}
}

$sql = "SELECT * FROM #@__shops_orders WHERE userid='".$cfg_ml->M_ID."' ORDER BY stime DESC";
$dl = new DataListCP();
$dl->pageSize = 20;
//�������˳���ܸ���
$dl->SetTemplate(dirname(__FILE__)."/templets/shops_orders.htm");      //����ģ��
$dl->SetSource($sql);            //�趨��ѯSQL
$dl->Display();                  //��ʾ
?>