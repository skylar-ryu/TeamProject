package com.ncs.one;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import service.CompanyService;
import vo.CompanyVO;

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

	

}
