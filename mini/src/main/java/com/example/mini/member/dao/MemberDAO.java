package com.example.mini.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.example.mini.member.vo.ItemVO;
import com.example.mini.member.vo.MemberVO;


@Mapper
@Repository("memberDAO")
public interface MemberDAO {
	 public List selectItemList() throws DataAccessException;
	 public int insertMember(MemberVO memberVO) throws DataAccessException ;
	 public MemberVO loginById(MemberVO memberVO) throws DataAccessException;

}
