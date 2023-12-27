package human.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import human.dto.MemberDTO;
import human.util.DBConnection;

//DAO(Data Access Object): 데이터베이스와 연결해서 SQL작업을 하는 자바클래스
public class MemberDAO extends DBConnection{
	
	//회원정보 입력하기: join(MemberDTO dto): int
	public int join(MemberDTO dto) throws SQLException{
		int result = 0;
		
		//MemberDTO에 아이디,비밀번호,이름,핸드폰,이메일이 저장된 것으로 가정하고
		//tb_member테이블에 데이터를 추가하는 구문 작성하기
		String sql = "insert into pj_member (m_idx, member_id, member_pw, member_add, member_name, email, handphone, cancel_or_not) "
				+ " values(member_seq.nextval,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getMember_id());
		pstmt.setString(2, dto.getMember_pw());
		pstmt.setString(3, dto.getMember_add());
		pstmt.setString(4, dto.getMember_name());
		pstmt.setString(5, dto.getEmail());
		pstmt.setString(6, dto.getHandphone());
		pstmt.setInt(7, dto.getCancel_or_not());
		result = pstmt.executeUpdate();	
		
		return result;
	}
	
	//모든 회원정보 가져오기:getMembers():ArrayList<MemberDTO>
	public ArrayList<MemberDTO> getMembers() throws SQLException{
		ArrayList<MemberDTO> members = new ArrayList<>();
		
		String sql = "select * from pj_member";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			MemberDTO dto = new MemberDTO();
			
			dto.setm_idx(rs.getInt("m_idx"));
			dto.setMember_id(rs.getString("member_id"));
			dto.setMember_pw(rs.getString("member_pw"));
			dto.setMember_add(rs.getString("member_add"));
			dto.setMember_name(rs.getString("member_name"));
			dto.setEmail(rs.getString("email"));
			dto.setHandphone(rs.getString("handphone"));
			dto.setCancel_or_not(rs.getInt("cancel_or_not"));
			
			members.add(dto);
		}
		
		return members;
	}

	public MemberDTO updateMember(MemberDTO dto) throws SQLException{
		MemberDTO newDto = null;
		
		String sql = "update pj_member  set member_pw=?, member_add=?, member_name=?, email=?, handphone=?, cancel_or_not=? "
				     + " where m_idx=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getMember_pw());
		pstmt.setString(2, dto.getMember_add());
		pstmt.setString(3, dto.getMember_name());
		pstmt.setString(4, dto.getEmail());
		pstmt.setString(5, dto.getHandphone());
		pstmt.setInt(6, dto.getCancel_or_not());
		pstmt.setInt(7, dto.getm_idx());
		
		
		
		if(pstmt.executeUpdate() == 1) {//회원정보 업데이트 성공
			newDto = getMember(dto.getm_idx());
		}	
		
		return newDto;
	}
	
	public MemberDTO deleteMember(MemberDTO dto) throws SQLException{
		MemberDTO newDto = null;
		
		String sql = "update pj_member set cancel_or_not=1 " + " where m_idx=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, dto.getm_idx());
		
		
		
		if(pstmt.executeUpdate() == 1) {//회원정보 업데이트 성공
			newDto = getMember(dto.getm_idx());
		}	
		
		return newDto;
	}
	
	
	
	/*
	 * public int updateMember2(MemberDTO dto) throws SQLException{ int result = 0;
	 * 
	 * String sql =
	 * "update pj_member  set member_pw=?, member_add=?, member_name=?, email=?, handphone=? "
	 * + " where m_idx=?"; pstmt = conn.prepareStatement(sql); pstmt.setInt(1,
	 * dto.getm_idx()); pstmt.setString(2, dto.getMember_pw()); pstmt.setString(3,
	 * dto.getMember_add()); pstmt.setString(4, dto.getMember_name());
	 * pstmt.setString(5, dto.getEmail()); pstmt.setString(6, dto.getHandphone());
	 * 
	 * result = pstmt.executeUpdate();
	 * 
	 * return result; }
	 */


	public int checkId(String member_id) throws SQLException{
		int result = 0;
		
		String sql = "select count(*) from pj_member where member_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member_id);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			result = rs.getInt(1);
		}
		
		return result;
	}

	public int login2(String member_id, String member_pw) throws SQLException{
		int result = 0;
		
		String sql = "select count(*) from pj_member where member_id=? and member_pw=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member_id);
		pstmt.setString(2, member_pw);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			result = rs.getInt(1);
		}
		
		return result;
	}
	
	
	public MemberDTO login(String member_id, String member_pw) throws SQLException{
		MemberDTO dto=null;
		
		String sql = "select m_idx from pj_member where member_id=? and member_pw=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member_id);
		pstmt.setString(2, member_pw);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			int m_idx = rs.getInt(1);
			dto = getMember(m_idx);
		}
		
		return dto;
	}

	public MemberDTO getMember(int m_idx) throws SQLException{
		String sql = "select * from pj_member where m_idx = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, m_idx);
		rs = pstmt.executeQuery();
		
		MemberDTO dto = null;
		if(rs.next()) {
			dto = new MemberDTO();
			dto.setm_idx(rs.getInt("m_idx"));
			dto.setMember_id(rs.getString("member_id"));
			dto.setMember_pw(rs.getString("member_pw"));
			dto.setMember_add(rs.getString("member_add"));
			dto.setMember_name(rs.getString("member_name"));
			dto.setEmail(rs.getString("email"));
			dto.setHandphone(rs.getString("handphone"));
			dto.setCancel_or_not(rs.getInt("cancel_or_not"));
			
		}
		return dto;
	}
}
	
	
