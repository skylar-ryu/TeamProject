package com.ncs.one;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import service.CompanyService;
import vo.CompanyVO;

@Controller
public class CompanyController {
	
	@Autowired
	CompanyService service;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	// ** Loginf
	@RequestMapping(value = "/cloginf")
	public ModelAndView cloginf(ModelAndView mv) {
		mv.setViewName("company/cloginForm");
		return mv;
	} //loginf
	//-------------------------------------------위 코드 수정해야함 로그인폼으로 가게
	
	// ** Login
	@RequestMapping(value = "/clogin")
	public ModelAndView clogin(HttpServletRequest request, ModelAndView mv, CompanyVO vo) {

		String password = vo.getCpw();
		// => 입력값의 오류에 대한 확인은 UI 에서 JavaScript로 처리
		vo = service.selectOne(vo);
		if (vo != null) {
			// ** BCryptPasswordEncoder 적용
			// => passwordEncoder.matches(rawData, digest) -> (입력값, DB에보관된값)
			if (passwordEncoder.matches(password, vo.getCpw())) {
				// 로그인 성공 : 로그인정보 session에 보관,  home으로
				request.getSession().setAttribute("loginCno",vo.getCno());
				request.getSession().setAttribute("loginCname",vo.getCname());
				mv.setViewName("redirect:home");
			}else {
				// password 오류 : message , 재로그인 유도 (loginForm 으로)
				mv.addObject("message"," password 오류 !! 다시 하세요 ~~");
				mv.setViewName("company/cloginForm");
			}
		}else {
			// ID 오류
			mv.addObject("message"," ID 오류 !! 다시 하세요 ~~");
			mv.setViewName("company/cloginForm");
		}
		return mv;
	} //login
	
	@RequestMapping(value = "/clogout")
	public ModelAndView clogout(HttpServletRequest request, ModelAndView mv, RedirectAttributes rttr) {
		HttpSession session = request.getSession(false);
		if(session != null) {
			session.invalidate();
		}
		rttr.addFlashAttribute("message","로그아웃");
		mv.setViewName("redirect:home");
		return mv;
	} //logout
	
	// ** Joinf
	@RequestMapping(value = "/cjoinf")
	public ModelAndView joinf(ModelAndView mv) {
		mv.setViewName("company/cjoinForm");
		return mv;
	} //joinf
	
	// ** Join
	@RequestMapping(value = "/join")
	public ModelAndView join(HttpServletRequest request, ModelAndView mv, CompanyVO vo) throws IOException  {

		String realPath = request.getRealPath("/"); // deprecated Method
		System.out.println("** realPath => "+realPath);

		// ** 위 의 위치를 이용해서 실제 저장위치 확인 
		// => 개발중인지, 배포했는지 에 따라 결정
		if (realPath.contains(".eclipse."))
			realPath = "C:/Users/skyla/Documents/MTest/MyWork/TeamProject/src/main/webapp/resources/uploadImage";
		else realPath += "resources\\uploadImage\\"; 

		// ** 폴더 만들기 (File 클래스활용)
		// => 위의 저장경로에 폴더가 없는 경우 (uploadImage가 없는경우)  만들어 준다
		File f1 = new File(realPath);
		if (!f1.exists()) f1.mkdir();

		// 기본 Image 지정
		String file1, file2 = "resources/uploadImage/basicman1.jpg";

		// => Ajax Test에서 uploadfilef 를 사용하지 않은 경우 ( vo.getUploadfilef() = null 로 처리되어 Type 비교하지 않음 ) 와 
		//    uploadfilef:'' 지정한 경우 비교 ( 이 경우엔 Server Error : typeMismatch ) 
		System.out.println("** Ajax Test vo => "+vo);

		MultipartFile uploadfilef = vo.getComUploadfilef();
		if ( uploadfilef != null && !uploadfilef.isEmpty() ) {
			// Image 를 선택했음
			file1 = realPath + uploadfilef.getOriginalFilename(); //  전송된 File명 추출 & 연결
			uploadfilef.transferTo(new File(file1)); // real 위치에 전송된 File 붙여넣기
			file2 = "resources/uploadImage/" + uploadfilef.getOriginalFilename(); // Table 저장 경로
		}

		vo.setComuUploadfile(file2); // Table 저장 경로 set

		// ** Password 암호화 
		// => BCryptPasswordEncoder 적용 
		//	  encode(rawData) -> disest 생성 & vo에 set
		vo.setCpw(passwordEncoder.encode(vo.getCpw()));

		if (service.insert(vo) > 0) {
			// Join 성공 -> 로그인 유도
			mv.addObject("message", "~~ 회원가입 완료, 로그인 하세요 ~~");
			mv.setViewName("member/loginForm");
		}else {
			// Join 실패 -> 재가입 유도
			mv.addObject("message", "~~ 회원가입 오류, 다시 하세요 ~~");
			mv.setViewName("member/joinForm");
		}
		return mv;
	} //join



	

}
