package util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
	private static SessionFactory  factory;
	
	static{
		Configuration config= new Configuration().configure();
		factory = config.buildSessionFactory();
		
		//��������ر�ʱִ�и�����
		Runtime.getRuntime().addShutdownHook(new Thread(new Runnable(){
			
			public void run() {
				System.out.println("������ر��ˣ���Դ�ͷ�");
				factory.close();
			}
		}));
	}
	
	public static Session openSession(){
		 Session session = factory.openSession();
		 return session;
	}
	
	public static Session getCurrentSession(){
		 Session session = factory.getCurrentSession();
		 return session;
	}
	
	public static void main(String[] args){
		Session s = openSession();
	}

}
