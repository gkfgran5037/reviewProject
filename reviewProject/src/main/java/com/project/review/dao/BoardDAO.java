package com.project.review.dao;

import java.util.List;
import java.util.Map;

import com.project.review.vo.BoardVO;
import com.project.review.vo.Board_MovieVO;
import com.project.review.vo.GradeVO;
import com.project.review.vo.HashtagVO;
import com.project.review.vo.LikeItVO;
import com.project.review.vo.MovieApiVO;
import com.project.review.vo.ReplyVO;

public interface BoardDAO {
	
	//select Board
	public BoardVO getBoardById(int board_num);
	public List<BoardVO> getBoardList();
	public List<BoardVO> getMovieBoardList();
	public MovieApiVO getMovieInfo(String movie_nm);
		// reply
		public int replyCount(int board_num);
		public List<ReplyVO> getMovieBoardReplyList();
		// likeit
		public int likeCount(int board_num);
		public List<LikeItVO> getMovieBoardLikeList();
		public int likeCheck(Map<String, Object> map);
	
	/*-------------------------------------------------------*/
	
	// likeItMinus
	public void likeItMinus(LikeItVO likeVO);
	// likeItPlus
	public void likeItPlus(LikeItVO likeVO);
	
	// Jsoup getContent
	public String getContent(int board_num);
	
	// 리플 추가
	public void insertReply(ReplyVO reply);
	// 리플 수정
	// 리플 삭제
	public void deleteReply(int reply_num);

	/*insert*/
	public void insertMovie(BoardVO board);
	public void insertGrade(GradeVO grade);
	public void insertB_movie(Board_MovieVO movie);
	public void insertHashtag(HashtagVO hash);
	public void insertMovieInfo(MovieApiVO movieInfo);
	public void insertThumbnail(BoardVO board);
	
	/*update*/
	public void updateMovie(BoardVO board);
	public void updateGrade(GradeVO grade);
	public void updateB_movie(Board_MovieVO movie);
	public void updateHashtag(HashtagVO hash);
	
	/*delete*/
	public void deleteMovie(int board_num);
	public void deleteGrade(int board_num);
	public void deleteB_movie(int board_num);
	public void deleteHashtag(int board_num);
	
}
