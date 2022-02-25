package com.example.mini.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.example.mini.member.dao.MemberDAO;
import com.example.mini.member.vo.ItemVO;
import com.example.mini.member.vo.MemberVO;


@Service("memberService")
@Transactional(propagation = Propagation.REQUIRED)
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public int addMember(MemberVO member) throws Exception {
		return memberDAO.insertMember(member);
	}

	
	public MemberVO login(MemberVO memberVO) throws Exception{
		return memberDAO.loginById(memberVO);
	}


	@Override
	public List listItems() throws Exception {
		List itemsList = null;
		itemsList = memberDAO.selectItemList();
		return itemsList;
	}
}
