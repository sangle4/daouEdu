package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.api.ApiCommCall;

@Controller
public class IndexController {
	String ret="";
	
	@RequestMapping(value="/question/{stdId}", method = RequestMethod.GET)
	public String u11(HttpSession session,@PathVariable("stdId") String stdId , Model model){
		model.addAttribute("stdid", stdId);
		
		return "question";
	}
	
	@RequestMapping(value="/result/{stdId}/{qNo}", method = RequestMethod.GET)
	public String qMove(HttpSession session,@PathVariable("stdId") String stdId,@PathVariable("qNo") String qNo){
		return ""+stdId+"/"+qNo;
	}
	
	@RequestMapping(value="/com/intern/{stdId}/{qNo}", method = RequestMethod.POST)
	@ResponseBody
	public String internCommApi1(@RequestBody String inputData,
			HttpServletRequest httpServletRequest, HttpServletResponse response
			,@PathVariable("stdId") String stdId,@PathVariable("qNo") String qNo){
		
		ApiCommCall ac = new ApiCommCall();
		ac.call(inputData);
		ret=ac.getOutputJsonStr();

		return ret;
	}

}
