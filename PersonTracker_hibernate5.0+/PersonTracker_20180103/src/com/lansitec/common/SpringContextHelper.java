package com.lansitec.common;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class SpringContextHelper implements ApplicationContextAware {

    private ApplicationContext context;
    
    
    //�ṩһ���ӿڣ���ȡ�����е�Beanʵ�����������ƻ�ȡ
    public Object getBean(String beanName)
    {
        return context.getBean(beanName);
    }
    
    @Override
    public void setApplicationContext(ApplicationContext context)
            throws BeansException {
        this.context = context;
        
    }

}
