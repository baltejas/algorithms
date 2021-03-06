package com.algorithms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.algorithms.logic.Algorithms;

@Controller
public class Entry {

	@Autowired
	private Algorithms algorithms;
	
	@RequestMapping(method = RequestMethod.GET, value = "/list")
	public String registerAgent() {
		return "index";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/question_1Dot2dash2")
	public ModelAndView question_1Dot2dash2() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("answer", algorithms.question_1Dot2dash2());
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/insertionSort")
	public ModelAndView insertionSort() {
		ModelAndView mv = new ModelAndView();
		int[] sorted = algorithms.insertionSort();
		StringBuilder sb = new StringBuilder();
		for(int i = 0; i < sorted.length; i++) {
			if(i == sorted.length - 1) {
				sb.append(sorted[i]);
			} else {
				sb.append(sorted[i] + ", ");
			}
		}
		mv.addObject("sorted", sb.toString());
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/question_2Dot1dash2")
	public ModelAndView question_2Dot1dash2() {
		ModelAndView mv = new ModelAndView();
		int[] sorted = algorithms.question_2Dot1dash2();
		StringBuilder sb = new StringBuilder();
		for(int i = 0; i < sorted.length; i++) {
			if(i == sorted.length - 1) {
				sb.append(sorted[i]);
			} else {
				sb.append(sorted[i] + ", ");
			}
		}
		mv.addObject("descSorted", sb.toString());
		mv.setViewName("index");
		return mv;
	}
}
