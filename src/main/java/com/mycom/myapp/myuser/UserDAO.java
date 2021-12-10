package com.mycom.myapp.myuser;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycom.myapp.board.BoardVO;

@Repository
public class UserDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertUser(UserVO vo) {
		int result = sqlSession.insert("User.insertUser", vo);
		return result;
	}

	public int updateUser(UserVO vo) {
		int result = sqlSession.insert("User.updateUser", vo);
		return result;
	}
	
	public int updateRoomNum(UserVO vo) {
		int result = sqlSession.insert("User.updateRoomNum", vo);
		return result;
	}

	public int deleteUser(int id) {
		int result = sqlSession.insert("User.deleteUser", id);
		return result;
	}

	public UserVO getUser(int seq) {
		UserVO one = sqlSession.selectOne("User.getUser", seq);
		return one;
	}
	
	public UserVO getUserLoginInfo(UserVO vo) {
		UserVO one = sqlSession.selectOne("User.getUserLoginInfo", vo);
		return one;
	}
	
	// in room detail page
	public List<UserVO> getUserList() {
		List<UserVO> list = sqlSession.selectList("User.getUserList");
		return list;
	}
	
}
