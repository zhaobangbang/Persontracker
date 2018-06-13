package com.lansitec.listener;

import java.util.Date;

import com.lansi.networkgw.EndDevEnvInfo;
import com.lansi.networkgw.IMsgPreValidator;
import com.lansitec.beans.DevicesOperateBean;
import com.lansitec.beans.ObserverInfoBean;
import com.lansitec.enumlist.DevOpr;
import com.lansitec.servlets.DevMsgHandler;

public class DevMsgValidator implements IMsgPreValidator {

	@Override
	public boolean isValidMsg(EndDevEnvInfo devInfo, String payload) {
		String eui = devInfo.getEui();
		
		if (!ObserverInfoBean.getInstance().devValid(eui)) {
			//logger.error("eui {} not belongs to us", eui);
			return false;
		}
		
		DevicesOperateBean operBean = DevicesOperateBean.getInstance();
		String deveui = DevMsgHandler.toDevEui(devInfo.getEui());
    	operBean.updateLastMsgTime(deveui, new Date());//�豸����һ��ʱ�������ݽ����Ϊ���ߡ�
    	operBean.updateOpr(deveui, DevOpr.REG); //����豸��ע��
		
		return true;
	}

}
