<?php
$partner = $payment_userid[2];
$security_code 	= $payment_key[2];
$seller_email 	= $payment_email[2];//��������
$_input_charset = $cfg_soft_lang; //�ַ������ʽ  Ŀǰ֧�� GBK �� utf-8
$sign_type = "MD5"; //���ܷ�ʽ  ϵͳĬ��(��Ҫ�޸�)
$transport = "http";//����ģʽ,����Ը����Լ��ķ������Ƿ�֧��ssl���ʶ�ѡ��http�Լ�https����ģʽ(ϵͳĬ��,��Ҫ�޸�)
$notify_url = $cfg_basehost."/member/paycenter/alipay/notify_url.php";// �첽���ص�ַ ��Ҫ��д������·��
$return_url = $cfg_basehost."/member/paycenter/alipay/return_url.php"; //ͬ�����ص�ַ  ��Ҫ��д�������·��
$show_url = ""  //����վ��Ʒ��չʾ��ַ,����Ϊ��
?>