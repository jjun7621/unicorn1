package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.MemberDTO;

public interface MemberDAO {

	List loginUsers(MemberDTO dto);

	List selectusers(MemberDTO dto);

	int signup(MemberDTO dto);
}
