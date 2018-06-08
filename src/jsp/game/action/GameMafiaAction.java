package jsp.game.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jsp.common.action.Action;
import jsp.common.action.ActionForward;
import jsp.member.model.MemberBean;
import jsp.member.model.MemberDAO;

/** 
 * ���� �α����� ������� ȸ�������� �����ִ� Action Ŭ����
 */
public class GameMafiaAction implements Action
{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		
		// ������ �������ִ� �α����� ID ������ �����´�
		HttpSession session = request.getSession();
		String id = session.getAttribute("sessionID").toString();
		
		if(!(id==null))return forward;
		
		forward.setRedirect(false);
		forward.setNextPath("GameMafia.gm");
		// MainForm.jsp?contentPage=member/view/UserInfoForm.jsp
		
		return forward;
	}

}
