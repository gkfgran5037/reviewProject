package com.project.review.dao;

import java.util.List;

import com.project.review.vo.BoardVO;
import com.project.review.vo.LikeItVO;
import com.project.review.vo.MemberVO;
import com.project.review.vo.ReplyVO;

public interface MemberDAO {
	
	// myLike
	public List<LikeItVO> myLike(String member_id);
	
	// myReply
	public List<ReplyVO> myReply(String member_id);
	
	//alreadyBoard
	public List<BoardVO> myBoard(String member_id);
	
	// updateProfile
	public void updateProfile(MemberVO member_pic);
	
	// 수정
	public void updateMember(MemberVO member);
	
	// 마이페이지 확인
	public MemberVO MemberInfo(String member_id);
	
	// 가입
	public void joinMember(MemberVO member);
	
	// 로그인
	public MemberVO selectMember(String member_id);
	
}
