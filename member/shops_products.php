<?php 
require_once(dirname(__FILE__)."/config.php");
include_once DEDEINC.'/datalistcp.class.php';
$do = isset($do) ? trim($do) : '';
$oid = isset($oid) ? eregi_replace("[^-0-9A-Z]","",$oid) : '';
$addsql = '';
if(!empty($oid))
{
	if($do=='ok')
	{
		$dsql->ExecuteNoneQuery("UPDATE #@__shops_orders SET `state`='4' WHERE oid='$oid'");
		ShowMsg("��ȷ�϶�����",'shops_products.php?oid='.$oid);
		exit();
	}
	
	$row = $dsql->GetOne("SELECT * FROM #@__shops_userinfo WHERE userid='".$cfg_ml->M_ID."' AND oid='$oid'");
	if(!isset($row['oid']))
	{
		ShowMsg("���������ڣ�",-1);
		exit();
	}
	$row['des'] = stripslashes($row['des']);
	$rs = $dsql->GetOne("SELECT state,stime,price,dprice,priceCount,pid FROM #@__shops_orders WHERE userid='".$cfg_ml->M_ID."' AND oid='$oid'");
	$row['state'] = $rs['state'];
	$row['stime'] = $rs['stime'];
	$row['price'] = $rs['price'];
	$row['dprice'] = $rs['dprice'];
	$row['priceCount'] = $rs['priceCount'];
	$rs = $dsql->GetOne("SELECT `dname` FROM #@__shops_delivery WHERE pid='$rs[pid]' LIMIT 0,1");
	$row['dname'] = $rs['dname'];
	unset($rs);
	$addsql = " AND oid='".$oid."'";
}

$sql = "SELECT * FROM #@__shops_products WHERE userid='".$cfg_ml->M_ID."' $addsql ORDER BY aid ASC";
$dl = new DataListCP();
$dl->pageSize = 20;
if(!empty($oid)) $dl->SetParameter('oid',$oid);
//�������˳���ܸ���
$dl->SetTemplate(dirname(__FILE__)."/templets/shops_products.htm");      //����ģ��
$dl->SetSource($sql);            //�趨��ѯSQL
$dl->Display();  

function GetSta($sta,$oid)
{
	global $dsql;
	$row = $dsql->GetOne("SELECT paytype FROM #@__shops_orders WHERE oid='$oid'");
	if($sta==0)
	{
		if($row['paytype'] == 2)
		{
			//��������
			return '��������';
		}
		elseif($row['paytype'] == 3)
		{
			//���и���
			return 'δ����&gt;<a href="../plus/shops_bank.php?pid='.$row['paytype'].'" target="_blank">����</a>';
		}
		elseif($row['paytype'] == 4)
		{
			//�������
			return 'δ����&gt;<a href="../plus/shops_bank.php?pid='.$row['paytype'].'" target="_blank">����</a>';
		}
		elseif($row['paytype'] == 5)
		{
			//�۵�ʱ
			return 'δ����&gt;<a href="shops_point.php?oid='.$oid.'" target="_blank">����</a>';
		}
		elseif($row['paytype'] == 1)
		{
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

function carTime($oid)
{
	global $dsql;
	$row = $dsql->GetOne("SELECT stime FROM #@__shops_orders WHERE oid='$oid'");
	return Mydate('Y-m-d h:i:s',$row['stime']);
}
?>