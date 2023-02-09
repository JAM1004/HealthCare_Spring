package edu.study.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.study.service.ShotService;
import edu.study.vo.ShotVo;

@RequestMapping(value="/shot",produces="text/plain;charset=UTF-8")
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
	@RequestMapping(value="abc3.do", method = RequestMethod.GET)
	public String shotlist(HttpServletRequest request,Model model,ShotVo vo) {	//매개변수 필요없음
		
		List<ShotVo> list = shotService.list(vo);
		model.addAttribute("datalist",list);
		
		String[] zip = request.getParameterValues("zip");
		String[] addr = request.getParameterValues("addr");
		String[] phone = request.getParameterValues("phone");
		
		System.out.println("������?"+zip[0]+" �ּҴ�?"+addr[0]+" ����ó��?"+phone[0]);
		model.addAttribute("zip",zip[0]);
		model.addAttribute("addr",addr[0]);
		model.addAttribute("phone",phone[0]);
		
		return "shot/shotPage3";	
	}
	
	@RequestMapping(value = "abc4.do", method = RequestMethod.GET)	
	public String bloodPage5(HttpServletRequest request, Model model) {	
		String[] zip = request.getParameterValues("zip");
		System.out.println("������?"+zip[0]);
		model.addAttribute("zip",zip[0]);
		
		return "shot/shotPage4";	
	}
	
	@RequestMapping(value = "abc5.do", method = RequestMethod.GET)
	public String homea() {
		
		return "shot/reserveFree";
	}
	@RequestMapping(value = "abc6.do", method = RequestMethod.GET)
	public String homeb() {
		
		return "shot/reserveCharged";
	}
	@RequestMapping(value = "abc7.do", method = RequestMethod.GET)
	public String home7() {
		
		return "shot/shotMoney1";
	}
	@RequestMapping(value = "abc8.do", method = RequestMethod.GET)
	public String home8() {
		
		return "shot/shotMoney2";
	}
	@RequestMapping(value = "abc9.do", method = RequestMethod.GET)
	public String home9() {
		
		return "shot/shotMoney3";
	}
	
}
