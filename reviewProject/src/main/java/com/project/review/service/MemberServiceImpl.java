package com.project.review.service;

import java.util.HashMap;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.project.review.dao.MemberDAO;
import com.project.review.vo.BoardVO;
import com.project.review.vo.LikeItVO;
import com.project.review.vo.LoginApiBO;
import com.project.review.vo.MemberVO;
import com.project.review.vo.ReplyVO;

@Service
public class MemberServiceImpl implements MemberService {
	private LoginApiBO loginApiBO;
	@Autowired
    private void setNaverLoginBO(LoginApiBO loginApiBO) {
        this.loginApiBO = loginApiBO;
    }
	@Autowired
	private MemberDAO memberDAO;
	
	//--------------------------------------
	
	// updateCheckPW
	@Override
	public MemberVO updateCheckPW(MemberVO member, String user_id, String pw) {
		
		member.setMember_id(user_id);
		member.setMember_pw(pw);
		return memberDAO.updateCheckPW(member);
	}
	
	// nmCheck
	@Override
	public String nmCheck(String member_name) {
		
		return memberDAO.nmCheck(member_name);
	}
	
	// idCheck
	@Override
	public String idCheck(String member_id) {
		
		return memberDAO.idCheck(member_id);
	}
	
	//searchMemberPW
	@Override
	public MemberVO searchMemberPW(MemberVO member) {
		
		return memberDAO.searchMemberPW(member);
	}
	
	// searchMemberID
	@Override
	public MemberVO searchMemberID(MemberVO member) {
		
		return memberDAO.searchMemberID(member);
	}
	
	// getMember_pic
	@Override
	public String getMember_pic(String member_id) {
		
		return memberDAO.getMember_pic(member_id);
	}
	
	// myLike
	@Override
	public List<LikeItVO> myLike(String member_id , int pnum) {
		int limit = 10;
		int start_content = (pnum - 1) * 10 + 1;
		int end_content = start_content + limit -1;
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("member_id", member_id);
		map.put("start_content", start_content);
		map.put("end_content", end_content);
		
		return memberDAO.myLike(map);
	}
	@Override
	public int myLikeCount(String member_id) {
		
		return memberDAO.myLikeCount(member_id);
	}
	
	// myReply
	@Override
	public List<ReplyVO> myReply(String member_id, int pnum) {
		int limit = 10;
		int start_content = (pnum - 1) * 10 + 1;
		int end_content = start_content + limit -1;
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("member_id", member_id);
		map.put("start_content", start_content);
		map.put("end_content", end_content);
		
		return memberDAO.myReply(map);
	}
	@Override
	public int myReplyCount(String member_id) {
		
		return memberDAO.myReplyCount(member_id);
	}
	
	// alreadyBoard
	@Override
	public List<BoardVO> myBoard(String member_id, int pnum) {
		int limit = 10;
		int start_content = (pnum - 1) * 10 + 1;
		int end_content = start_content + limit -1;
				
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("member_id", member_id);
		map.put("start_content", start_content);
		map.put("end_content", end_content);
		
		return memberDAO.myBoard(map);
	}
	@Override
	public int myBoardCount(String member_id) {
		
		return memberDAO.myBoardCount(member_id);
	}
	
	// updateProfile
	@Override
	public void updateProfile(MemberVO member, String member_id, String member_pic) {
		
		member.setMember_id(member_id);
		member.setMember_pic(member_pic);
		memberDAO.updateProfile(member);
	}
	
	// 수정
	@Override
	public void updateMember(MemberVO member) {
		
		memberDAO.updateMember(member);
	}
	
	// 마이페이지 확인
	@Override
	public MemberVO MemberInfo(String member_id) {
		
		return memberDAO.MemberInfo(member_id);
	}
	
	// 가입
	@Override
	public void joinMember(MemberVO member) {
		
		memberDAO.joinMember(member);
	}
	
	@Override
	public void joinSnsUser(MemberVO member) {
		memberDAO.joinSnsUser(member);
	}
	
	// 로그인
	@Override
	public MemberVO selectMember(String member_id) {
		
		return memberDAO.selectMember(member_id);
	}

	@Override
	public MemberVO handleSnsUser(String code, String state, HttpSession session) throws IOException {
		OAuth2AccessToken oauthToken = loginApiBO.getAccessToken(session, code, state);
		String apiResult = loginApiBO.getUserProfile(oauthToken);
		MemberVO member = loginApiBO.setApiCodeToVO(apiResult);
		String str = memberDAO.getMemberId(member.getMember_id());

		if (str == null) {
			joinSnsUser(member);
		}
		member = selectMember(member.getMember_id());
		
		return member;
	}
}
