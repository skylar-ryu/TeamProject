package vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class PmemberVO {
	private String no;
	private String id;
	private String pw;
	private String name;
	private String birth;
	private String tel;
	private String email;
	private String addr;
	private String uploadfile; // Table에 저장된 경로 및 파일명 처리를 위한 필드
	private MultipartFile uploadfilef; // form 의 Image 정보를 전달받기 위한 필드
}
