package com.project.review.vo;


import java.sql.Date;
import java.util.List;

public class BoardVO {
	private int board_num;
	private String board_title;
	private String board_content;
	private Date board_date;
	private String member_id;
	private int lemon_grade;
	private int recommend;
	private String thumbnail;
	private Date board_up_date;
	private int board_readcount;
	
	private GradeVO gradeVO;
	private Board_MovieVO b_movieVO;
	private Board_TvVO b_tvVO;
	private Board_GameVO b_gameVO;
	private MemberVO memberVO;
	private HashtagVO hashtagVO;
	private ReplyVO replyVO;
	
	private int reply_count;
	private int likeit_count;
	
	private List<LikeItVO> likeList;
	private List<ReplyVO> replyList;
	//---------------------------------
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public Date getBoard_date() {
		return board_date;
	}
	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getLemon_grade() {
		return lemon_grade;
	}
	public void setLemon_grade(int lemon_grade) {
		this.lemon_grade = lemon_grade;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public Date getBoard_up_date() {
		return board_up_date;
	}
	public void setBoard_up_date(Date board_up_date) {
		this.board_up_date = board_up_date;
	}
	public int getBoard_readcount() {
		return board_readcount;
	}
	public void setBoard_readcount(int board_readcount) {
		this.board_readcount = board_readcount;
	}
	public GradeVO getGradeVO() {
		return gradeVO;
	}
	public void setGradeVO(GradeVO gradeVO) {
		this.gradeVO = gradeVO;
	}
	public Board_MovieVO getB_movieVO() {
		return b_movieVO;
	}
	public void setB_movieVO(Board_MovieVO b_movieVO) {
		this.b_movieVO = b_movieVO;
	}
	public Board_TvVO getB_tvVO() {
		return b_tvVO;
	}
	public void setB_tvVO(Board_TvVO b_tvVO) {
		this.b_tvVO = b_tvVO;
	}
	public Board_GameVO getB_gameVO() {
		return b_gameVO;
	}
	public void setB_gameVO(Board_GameVO b_gameVO) {
		this.b_gameVO = b_gameVO;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public HashtagVO getHashtagVO() {
		return hashtagVO;
	}
	public void setHashtagVO(HashtagVO hashtagVO) {
		this.hashtagVO = hashtagVO;
	}
	public ReplyVO getReplyVO() {
		return replyVO;
	}
	public void setReplyVO(ReplyVO replyVO) {
		this.replyVO = replyVO;
	}
	public int getReply_count() {
		return reply_count;
	}
	public void setReply_count(int reply_count) {
		this.reply_count = reply_count;
	}
	public int getLikeit_count() {
		return likeit_count;
	}
	public void setLikeit_count(int likeit_count) {
		this.likeit_count = likeit_count;
	}
	public List<LikeItVO> getLikeList() {
		return likeList;
	}
	public void setLikeList(List<LikeItVO> likeList) {
		this.likeList = likeList;
	}
	public List<ReplyVO> getReplyList() {
		return replyList;
	}
	public void setReplyList(List<ReplyVO> replyList) {
		this.replyList = replyList;
	}
	@Override
	public String toString() {
		return "BoardVO [board_num=" + board_num + ", board_title=" + board_title + ", board_content=" + board_content
				+ ", board_date=" + board_date + ", member_id=" + member_id + ", lemon_grade=" + lemon_grade
				+ ", recommend=" + recommend + ", thumbnail=" + thumbnail + ", board_up_date=" + board_up_date
				+ ", board_readcount=" + board_readcount + ", gradeVO=" + gradeVO + ", b_movieVO=" + b_movieVO
				+ ", b_tvVO=" + b_tvVO + ", b_gameVO=" + b_gameVO + ", memberVO=" + memberVO + ", hashtagVO="
				+ hashtagVO + ", replyVO=" + replyVO + ", reply_count=" + reply_count + ", likeit_count=" + likeit_count
				+ ", likeList=" + likeList + ", replyList=" + replyList + "]";
	}
	
}
