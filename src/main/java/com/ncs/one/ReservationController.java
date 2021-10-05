package com.ncs.one;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import service.ReservationService;
import vo.PmemberVO;
import vo.ReservationVO;

@Controller
public class ReservationController {
	
	@Autowired
	ReservationService service;
	
	
	// ** 예약접수 메인 폼
	@RequestMapping(value = "/rmainf")
	public ModelAndView rmainf(ModelAndView mv) {
		mv.setViewName("reservation/reservationForm");
		return mv;
	} //rmainf
	
	// ** 예약하기
		@RequestMapping(value = "/reservation")
		public ModelAndView reservation(ModelAndView mv, ReservationVO vo) {

			if (service.insert(vo) > 0) {
				// 예약 성공 -> 예약확인 유도
				mv.addObject("message", "~~ 예야접수 완료, 예약현황을 하세요 ~~");
				mv.setViewName("reservation/rConfForm");
			}else {
				// 예약 실패 -> 재예약 유도
				mv.addObject("message", "~~ 예약접수 오류, 다시 하세요 ~~");
				mv.setViewName("reservation/reservationForm");
			}
			return mv;
		} //reservation
	

}//class
