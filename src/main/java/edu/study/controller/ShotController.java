package edu.study.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.study.service.ShotService;
import edu.study.vo.MemberVo;
import edu.study.vo.ReserveVo;
import edu.study.vo.ShotVo;

@RequestMapping(value = "/shot", produces = "text/plain;charset=UTF-8")
@Controller
public class ShotController {

	@Autowired
	private ShotService shotService;

	@RequestMapping(value = "abc1.do", method = RequestMethod.GET)
	public String home1() {

		return "shot/shotCheckMain";
	}

	@RequestMapping(value = "abc2.do", method = RequestMethod.GET)
	public String home2() {

		return "shot/shotPage2";
	}

	@RequestMapping(value = "abc3.do", method = RequestMethod.GET)
	public String shotlist(HttpServletRequest request, Model model, ShotVo vo) { // 留ㅺ�蹂��� ��������

		List<ShotVo> list = shotService.list(vo);
		model.addAttribute("datalist", list);

		String[] zip = request.getParameterValues("zip");
		String[] addr = request.getParameterValues("addr");
		String[] phone = request.getParameterValues("phone");

		
		model.addAttribute("zip", zip[0]);
		model.addAttribute("addr", addr[0]);
		model.addAttribute("phone", phone[0]);

		return "shot/shotPage3";
	}

	@RequestMapping(value = "abc5.do", method = RequestMethod.GET)
	public String homea() {

		return "mypage/shot_reserve_inquiry";
	}

	@RequestMapping(value = "abc6.do", method = RequestMethod.GET)
	public String homeb23() {
		return "shot/reserveCharged";
	}

	@RequestMapping(value = "abc6.do", method = RequestMethod.POST)
	public String homeb(HttpServletRequest request, Model model, ReserveVo vo, HttpSession session) {

		MemberVo midx = (MemberVo) session.getAttribute("midx");
		String[] rname = request.getParameterValues("rname");
		String[] rbuy = request.getParameterValues("rbuy");
		String[] rstate = request.getParameterValues("rstate");
		String[] rdate = request.getParameterValues("rdate");
		String[] rtime = request.getParameterValues("rtime");
		String[] rhospital = request.getParameterValues("rhospital");
		String[] rcase = request.getParameterValues("rcase");
		
		
		shotService.insert(vo);
		int ridx=vo.getRidx();
		
		model.addAttribute("midx", midx);
		model.addAttribute("rname", rname[0]);
		model.addAttribute("rbuy", rbuy[0]);
		model.addAttribute("rstate", rstate[0]);
		model.addAttribute("rdate", rdate[0]);
		model.addAttribute("rtime", rtime[0]);
		model.addAttribute("rhospital", rhospital[0]);
		model.addAttribute("rcase", rcase[0]);
		model.addAttribute("ridx",ridx);
		
		if(rbuy[0] != "") {
			
	    	return "shot/reserveCharged";
	    	
	    }else {
	    	return "shot/reserveFree";
	    }
		
	}

	@RequestMapping(value = "abc9.do", method = RequestMethod.POST)
	public String home9(ReserveVo vo, HttpSession session) {
		shotService.updatebuy(vo);	
		MemberVo member2 = (MemberVo)session.getAttribute("member");
		int midx = member2.getMidx();		
		return "redirect:/member/mypage2.do?midx="+midx;
	}

}
