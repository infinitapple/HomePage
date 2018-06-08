package jsp.visit.action;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import jsp.visit.model.VisitCountDAO;


/**
 * �湮�� ���� ����ϴ� Ŭ����<br>
 * web.xml�� listener ����� �صξ���. �̷��� �� ��� ��Ĺ�� ����Ǹ鼭
 * �����ʰ� ����ȴ�. 
 */
public class VisitSessionListener implements HttpSessionListener
{
	public static int nowUser;
	public static int getNowUser() {return nowUser;}

	@Override
	public void sessionCreated(HttpSessionEvent sessionEve) {
		// ������ ���� �����Ǹ� execute() �����Ѵ�.
		if(sessionEve.getSession().isNew()){
	    	execute(sessionEve);
	    }
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent sessionEve) {
        //������ �Ҹ�� �� ȣ��
		nowUser--;
        if(nowUser<0)
        	nowUser=0;

        HttpSession session = sessionEve.getSession();
		session.setAttribute("nowUser", getNowUser());
    }

	private void execute(HttpSessionEvent sessionEve) 
	{
		//VisitCountDAO dao = VisitCountDAO.getInstance();
		
		try {
			/*
			// ��ü �湮�� �� ����
			dao.setTotalCount();
			// �� �湮�� ��
			int totalCount = dao.getTotalCount();
			// ���� �湮�� ��
			int todayCount = dao.getTodayCount();
			*/
			nowUser++;
			HttpSession session = sessionEve.getSession();
			
			// ���ǿ� �湮�� ���� ��´�.
	        //session.setAttribute("totalCount", totalCount); 
	        //session.setAttribute("todayCount", todayCount);
			session.setAttribute("nowUser", getNowUser());
		} catch (Exception e) {
			System.out.println("===== �湮�� ī���� ���� =====\n");
			e.printStackTrace();
		}
	}
}
