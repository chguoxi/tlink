<?php
require_once(dirname(__FILE__)."/../../../include/common.inc.php");
require_once DEDEDATA.'/sys_pay.cache.php';
require_once(dirname(__FILE__)."/cbpayment_config.php");
require_once(DEDEINC."/memberlogin.class.php");
$cfg_ml = new MemberLogin();
$cfg_ml->PutLoginInfo($cfg_ml->M_ID);
//���ļ�,�����Զ�У�����ز���Ҫ�����ܺ�̨����,��ַָ�����ļ�·��.
$v_oid     =trim($_POST['v_oid']);
$v_pmode   =trim($_POST['v_pmode']);
$v_pstatus =trim($_POST['v_pstatus']);
$v_pstring =trim($_POST['v_pstring']);
$v_amount  =trim($_POST['v_amount']);
$v_moneytype  =trim($_POST['v_moneytype']);
$remark1   =trim($_POST['remark1' ]);
$remark2   =trim($_POST['remark2' ]);
$v_md5str  =trim($_POST['v_md5str' ]);

$md5string=strtoupper(md5($v_oid.$v_pstatus.$v_amount.$v_moneytype.$key)); //ƴ�ռ��ܴ�
if ($v_md5str==$md5string)
{
	if($v_pstatus=="20")
	{
		$buyid = $v_oid;

		//��ȡ������Ϣ����鶩������Ч��
		$row = $dsql->GetOne("Select * From #@__member_operation where buyid='$buyid' ");
		if(!is_array($row)||$row['sta']==2)
		{
			$oldinfo = $row['oldinfo'];
			exit('ok');
		}
		$mid = $row['mid'];
		$pid = $row['pid'];

		//���½���״̬Ϊ�Ѹ���
		$dsql->ExecuteNoneQuery("Update #@__member_operation set sta=1 where buyid='$buyid' ");

		//-------------------------------------------
		//��Ա��Ʒ
		//-------------------------------------------
		if($row['product']=='member')
		{
			$row = $dsql->GetOne(" Select rank,exptime From #@__member_type where aid='{$row['pid']}' ");
			$rank = $row['rank'];
			$exptime = $row['exptime'];
			$equery =  " Update #@__member set
									membertype='$rank',exptime='$exptime',uptime='".time()."' where mid='$mid' ";
			$dsql->ExecuteNoneQuery($equery);

			//���½���״̬Ϊ�ѹر�
			$dsql->ExecuteNoneQuery(" Update #@__member_operation set sta=2,oldinfo='��Ա�����ɹ���' where buyid='$buyid' ");
		}

		//�㿨��Ʒ
		else if($row['product']=='card')
		{
			$row = $dsql->GetOne("Select cardid From #@__moneycard_record where ctid='$pid' And isexp='0' ");

			//����Ҳ���ĳ�����͵Ŀ���ֱ��Ϊ�û����ӽ��
			if(!is_array($row))
			{
				$nrow = $dsql->GetOne("Select num From  #@__moneycard_type where tid='$pid' ");
				$dnum = $nrow['num'];
				$equery =  " Update #@__member set money=money+".$dnum." where mid='$mid' ";
				$dsql->ExecuteNoneQuery($equery);

				//���½���״̬Ϊ�ѹر�
				$dsql->ExecuteNoneQuery(" Update #@__member_operation set sta=2,oldinfo='ֱ�ӳ�ֵ�� {$dnum} ��ҵ��ʺţ�' where buyid='$buyid' ");
				exit();
			}
			else
			{
				$cardid = $row['cardid'];
				$dsql->ExecuteNoneQuery(" Update #@__moneycard_record set uid='$mid',isexp='1',utime='".time()."' where cardid='$cardid' ");

				//���½���״̬Ϊ�ѹر�
				$dsql->ExecuteNoneQuery(" Update #@__member_operation set sta=2,oldinfo='��ֵ���룺{$cardid}' where buyid='$buyid' ");
			}
		}
	}
	echo "ok";
}
else
{
	echo "error";
}
?>