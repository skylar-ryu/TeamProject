package com.ncs.one;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import service.PmemberService;
import vo.PmemberVO;

@Controller
public class PmemberController {
	
	@Autowired
	PmemberService service ;
	
// ** Image DownLoad
	@RequestMapping(value = "/dnload")
	public ModelAndView dnload(HttpServletRequest request, ModelAndView mv, 
						@RequestParam("dnfile") String dnfile) {
						// String dnfile = request.getParameter("dnfile"); 과 동일구문
		
		String realPath = request.getRealPath("/"); // deprecated Method
		String fileName = dnfile.substring(dnfile.lastIndexOf("/")+1);
				
		// ** 위 의 위치를 이용해서 실제 저장위치 확인 
		// => 개발중인지, 배포했는지 에 따라 결정
		if (realPath.contains(".eclipse."))
			 realPath = "C:/Users/skyla/Documents/MTest/MyWork/Spring03/src/main/webapp/resources/uploadImage"+fileName;
		else realPath += "resources\\uploadImage\\"+fileName; 
		File file = new File(realPath) ;
		mv.addObject("downloadFile", file);
		mv.setViewName("download");
		// ** 일반적인 경우 ~/views/download.jsp 를 찾음, 그러나 이 경우에는 아님
		// => servlet-context.xml 에 설정하는 view 클래스 (DownloadView.java) 의
		// id 와 동일 해야함.
		return mv;
		// ** 위 addOb.. , setView.., return..  3 구문은 아래처럼 작성도 가능.
		// => return new ModelAndView("download", "downloadFile", file);
		// => 생성자 참고 
		//    public ModelAndView(View view, String modelName, 
		//     				Object modelObject) { 
		//     		this.view = view; addObject(modelName, modelObject); }
	} //dnload


	@RequestMapping(value = "/mlist")
	public ModelAndView mlist(ModelAndView mv) {

		List<PmemberVO> list = service.selectList();
		if (list != null) {
			mv.addObject("Banana", list);
		}else {
			mv.addObject("message", "~~ 출력할 자료가 한건도 없습니다 ~~") ;
		}
		mv.setViewName("member/memberList");
		return mv;
	} //mlist

	// ** Loginf	
	@RequestMapping(value = "/loginf")
	public ModelAndView loginf(ModelAndView mv) {
		mv.setViewName("member/loginForm");
		return mv;
	} //loginf
	
	// ** Login
	@RequestMapping(value = "/plogin")
	public ModelAndView login(HttpServletRequest request, ModelAndView mv, PmemberVO vo) {

		String password = vo.getPw();
		// => 입력값의 오류에 대한 확인은 UI 에서 JavaScript로 처리
		vo = service.selectOne(vo);
		if (vo != null) {
			if (vo.getPw().equals(password)) {
				// 로그인 성공 : 로그인정보 session에 보관,  home으로
				request.getSession().setAttribute("loginID",vo.getId());
				request.getSession().setAttribute("loginName",vo.getName());
				mv.setViewName("redirect:home");
			}else {
				// password 오류 : message , 재로그인 유도 (loginForm 으로)
				mv.addObject("message"," password 오류 !! 다시 하세요 ~~");
				mv.setViewName("member/loginForm");
			}
		}else {
			// ID 오류
			mv.addObject("message"," ID 오류 !! 다시 하세요 ~~");
			mv.setViewName("member/loginForm");
		}
		return mv;
	} //login

	@RequestMapping(value = "/plogout")
	public ModelAndView logout(HttpServletRequest request, ModelAndView mv, RedirectAttributes rttr) {
		// 존재하는 session 확인 후 삭제
		HttpSession session = request.getSession(false);
		if (session!=null) {
			session.invalidate();
		}
		rttr.addFlashAttribute("message", "~~ 로그아웃 !!! ~~~");
		mv.setViewName("redirect:home");
		return mv;
	} //logout


	@RequestMapping(value = "/pdetail")
	public ModelAndView mdetail(HttpServletRequest request, ModelAndView mv, PmemberVO vo) {

		HttpSession session = request.getSession(false);
		if (session!=null && session.getAttribute("loginID") !=null) {
			vo.setId((String)session.getAttribute("loginID"));

			if  (request.getParameter("id")!=null) vo.setId(request.getParameter("id"));

			vo=service.selectOne(vo);
			if (vo!=null) {
				mv.addObject("Apple", vo);
				// updateForm 요청인지 확인 
				if ("U".equals(request.getParameter("jcode"))) 
					mv.setViewName("member/updateForm");
				else mv.setViewName("member/memberDetail");
			}else {
				mv.addObject("message","~~ 정보를 찾을 수 없습니다, 로그인 후 이용하세요 ~~");
				mv.setViewName("member/loginForm");
			}
		}else {
			// 로그인 정보 없음
			mv.addObject("message","~~ 로그인 정보 없습니다, 로그인 후 이용하세요 ~~");
			mv.setViewName("member/loginForm");
		}
		return mv;
	} //mdetail

	// ** Joinf
	@RequestMapping(value = "/pjoinf")
	public ModelAndView joinf(ModelAndView mv) {
		mv.setViewName("member/joinForm");
		return mv;
	} //joinf

	// ** Join
	@RequestMapping(value = "/pjoin")
	public ModelAndView join(HttpServletRequest request, ModelAndView mv, PmemberVO vo) throws IOException  {
		
		String realPath = request.getRealPath("/"); // deprecated Method
		System.out.println("** realPath => "+realPath);
				
		// 2) 위 의 위치를 이용해서 실제 저장위치 확인 
		// => 개발중인지, 배포했는지 에 따라 결정
		if (realPath.contains(".eclipse."))
			 realPath = "C:/Users/skyla/Documents/MTest/MyWork/Spring03/src/main/webapp/resources/uploadImage";
		else realPath += "resources\\uploadImage\\"; 
		
		// ** 폴더 만들기 (File 클래스활용)
		File f1 = new File(realPath);
		if (!f1.exists()) f1.mkdir();
		
		// 기본 Image 지정
		String file1, file2 = "resources/uploadImage/basicman1.jpg";
			
		System.out.println("** Ajax Test vo => "+vo);
		
		MultipartFile uploadfilef = vo.getUploadfilef();
		if ( uploadfilef != null && !uploadfilef.isEmpty() ) {
			// Image 를 선택했음
			file1 = realPath + uploadfilef.getOriginalFilename(); //  전송된 File명 추출 & 연결
			uploadfilef.transferTo(new File(file1)); // real 위치에 전송된 File 붙여넣기
			file2 = "resources/uploadImage/" + uploadfilef.getOriginalFilename(); // Table 저장 경로
		}
		
		vo.setUploadfile(file2); // Table 저장 경로 set
		
		if (service.insert(vo) > 0) {
			// Join 성공 -> 로그인 유도
			mv.addObject("message", "~~ 회원가입 완료, 로그인 하세요 ~~");
			mv.setViewName("pmember/loginForm");
		}else {
			// Join 실패 -> 재가입 유도
			mv.addObject("message", "~~ 회원가입 오류, 다시 하세요 ~~");
			mv.setViewName("pmember/joinForm");
		}
		return mv;
	} //join

	// ** Update
	@RequestMapping(value = "/pupdate")
	public ModelAndView mupdate(HttpServletRequest request, ModelAndView mv, 
						PmemberVO vo, RedirectAttributes rttr) throws IOException {
		
		// *** Image Upload 추가
		String realPath = request.getRealPath("/"); // deprecated Method
		// => 위 의 위치를 이용해서 실제 저장위치 확인  : 개발중인지, 배포했는지
		if (realPath.contains(".eclipse."))
			 realPath = "C:/Users/skyla/Documents/MTest/MyWork/Spring03/src/main/webapp/resources/uploadImage";
		else realPath += "resources\\uploadImage\\"; 
		
		// ** 폴더 만들기 (File 클래스활용)
		// => 위의 저장경로에 폴더가 없는 경우 (uploadImage가 없는경우)  만들어 준다
		// => update 의 경우에도 폴더가 없을 수 있음 
		File f1 = new File(realPath);
		if (!f1.exists()) f1.mkdir();
		
		// 기본 Image 지정
		String file1, file2 = "resources/uploadImage/basicman1.jpg";
			
		MultipartFile uploadfilef = vo.getUploadfilef();
		if ( uploadfilef != null && !uploadfilef.isEmpty() ) {
			// Image 를 선택했음
			file1 = realPath + uploadfilef.getOriginalFilename(); //  전송된 File명 추출 & 연결
			uploadfilef.transferTo(new File(file1)); // real 위치에 전송된 File 붙여넣기
			file2 = "resources/uploadImage/" + uploadfilef.getOriginalFilename(); // Table 저장 경로
		} else  {
			// updateForm 에서 Image 를 선택하지 않은경우 에는 이전과 동일하게 처리
			// => updateForm 에 hidden 으로 보관한 이전 화일명을 사용
			file2 = vo.getUploadfile();
		}
		
		vo.setUploadfile(file2); // Table 저장 경로 set

		if (service.update(vo) > 0) {
			// Update 성공 -> mList
			rttr.addFlashAttribute("message", "~~ 정보 수정 성공 ~~");
			mv.setViewName("redirect:mlist");
		}else {
			// Update 실패 -> 재수정 할 수 있도록 유도
			rttr.addFlashAttribute("message", "~~ 정보수정 오류, 다시 하세요 ~~");
			mv.setViewName("redirect:mdetail?id="+vo.getId()+"&jcode=U");
		}
		return mv;
	} //pupdate

	// ** PMember Delete : 회원탈퇴
	@RequestMapping(value = "/pdelete")
	public ModelAndView mdelete(HttpServletRequest request, ModelAndView mv, PmemberVO vo,
							RedirectAttributes rttr) {
		
		// => 삭제 대상 -> vo 에 set
		HttpSession session = request.getSession(false);
		String loginID = (String)session.getAttribute("loginID");

		if (session!=null && loginID!=null) {
			// ** 삭제 가능 => message, home.jsp
			// => 삭제대상 확인, session 삭제여부 확인 
			vo.setId(loginID);
			
			// *** Image Upload 추가
			// => 해당 이미지 정보읽어온후, 삭제 -> 회원삭제
			vo=service.selectOne(vo);
			if ( vo != null) {
				// => 화일명 추출
				String fileName = vo.getUploadfile().substring(vo.getUploadfile().lastIndexOf("/")+1);  
				
				String realPath = request.getRealPath("/"); // deprecated Method
				// => 위 의 위치를 이용해서 실제 저장위치 확인  : 개발중인지, 배포했는지
				if (realPath.contains(".eclipse."))
					 realPath = "C:/Users/skyla/Documents/MTest/MyWork/Spring03/src/main/webapp/resources/uploadImage"+fileName;
				else realPath += "resources\\uploadImage\\"+fileName; 
				// 삭제  
				// => File 인스턴스 생성후 존재 확인 후 삭제
				File delF = new File(realPath);
				if (delF.exists()) delF.delete();
			}
			
			if (service.delete(vo) > 0) {
				// 삭제성공
				session.invalidate();  // session 삭제 
				rttr.addFlashAttribute("message", "~~ 회원탈퇴 성공 !!  1개월후 재가입 가능 합니다 ~~");
				mv.setViewName("redirect:home");
			}else { // 삭제실패
				rttr.addFlashAttribute("message", "~~ 회원탈퇴 오류 !!  다시 하세요 ~~");
				mv.setViewName("redirect:mdetail?id="+vo.getId());
			}
		}else {
			mv.addObject("message", "~~ 탈퇴 불가능 !!  로그인후 하세요 ~~");
			mv.setViewName("member/loginForm");
		}
		return mv;
	} //mdelete


} //class
