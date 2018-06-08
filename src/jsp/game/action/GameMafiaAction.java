package jsp.game.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jsp.common.action.Action;
import jsp.common.action.ActionForward;
import jsp.member.model.MemberBean;
import jsp.member.model.MemberDAO;

/** 
 * 현재 로그인한 사용자의 회원정보를 보여주는 Action 클래스
 */
public class GameMafiaAction implements Action
{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		
		// 세션이 가지고있는 로그인한 ID 정보를 가져온다
		HttpSession session = request.getSession();
		String id = session.getAttribute("sessionID").toString();
		
		if(!(id==null))return forward;
		
		forward.setRedirect(false);
		forward.setNextPath("GameMafia.gm");
		// MainForm.jsp?contentPage=member/view/UserInfoForm.jsp
		
		return forward;
	}

}
