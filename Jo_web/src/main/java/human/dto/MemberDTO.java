package human.dto;

//import java.util.Date;

//DTO(Data Transfer Object): 데이터를 저장하고 전달하는 역할을 하는 자바클래스
//회원DTO는 tb_member테이블의 컬럼명 개수와 같이 필드 선언
public class MemberDTO {
	private String member_id;
	private String member_pw;
	private String member_add;
	private String member_name;
	private String email;
	private String handphone;
	private int cancel_or_not;
	private int m_idx;
	
	public int getm_idx() {
		return m_idx;
	}

	public void setm_idx(int m_idx) {
		this.m_idx = m_idx;
	}

	public int getCancel_or_not() {
		return cancel_or_not;
	}

	public void setCancel_or_not(int cancel_or_not) {
		this.cancel_or_not = cancel_or_not;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	
	public String getMember_add() {
		return member_add;
	}
	public void setMember_add(String member_add) {
		this.member_add = member_add;
	}
	
	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getHandphone() {
		return handphone;
	}

	public void setHandphone(String handphone) {
		this.handphone = handphone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "아이디:"+member_id+", 비밀번호:"+member_pw+", 주소:"+member_add+", 이름:"+member_name+", 이메일:"+email+", 핸드폰:"+handphone;
	}
	
	//HashSet에서 동일한 값의 필드가 입력되어 있으면 동일한 데이터로 인식하도록 
	//hashCode(), equals() 메소드를 재정의함
	@Override
	public int hashCode() {
		//String클래스는 주소값이 아니라 내용에 대한 해시코드값을 반환하도록 재정의되어 있음
		return member_id.hashCode()+member_pw.hashCode()+member_add.hashCode()+member_name.hashCode()
		       +email.hashCode()+handphone.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		boolean result = false;
		if(obj instanceof MemberDTO) {
			MemberDTO m = (MemberDTO)obj;
			if(member_id.equals(m.getMember_id()) && member_pw.equals(m.getMember_pw()) &&
			   member_add.equals(m.getMember_add()) && member_name.equals(m.getMember_name()) && email.equals(m.getEmail()) &&
			   handphone.equals(m.getHandphone())) {
				
				result = true;
			}
		}
		
		return result;
	}

}
