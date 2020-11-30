package com.ali.main.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ali.main.model.Student;
import com.ali.main.repository.StudentRepository;

@Controller
public class StudController {
	
	@Autowired
	HttpSession htSession;
	
	@Autowired
	StudentRepository studentRe;
	
	@RequestMapping("login")
	public String login(Model m) {
		Student s = new Student();
		m.addAttribute("Student", s);
		return "login.jsp";
	}
	
	@RequestMapping("logincheck")
	public String loginCheck(@RequestParam String firstname,@RequestParam String lastname) {
		Student s = studentRe.findByFirstname(firstname);
		System.out.println(s);
		System.out.println(s.getLastname()+" "+s.getStudentId());
		if(lastname.compareTo(s.getLastname())==0) {
			htSession.setAttribute("id",s.getStudentId());
			return "redirect:/";
		}
		else {
			return "redirect:/login";
		}
	}
	
	@RequestMapping("logout")
	public String logout() {
		System.out.println(htSession.getAttribute("id"));
		htSession.removeAttribute("id");
		return "redirect:/login";
	}
	@RequestMapping("/")
	public String homepage(Model mod) {
		if(htSession.getAttribute("id")==null) {
			return "redirect:/login";
		}
		List<Student> stud = studentRe.findAll();
		mod.addAttribute("StudentList", stud);
		return "displayStudentInfo.jsp";
	}
	
	@RequestMapping("add")
	public String add(Model m){
		Student s = new Student();
		m.addAttribute("Student", s);
		return "enterStudentInfo.jsp";
	}
	
	@RequestMapping("addStudent")
	public String saveStudent(@ModelAttribute Student s,Model m) {	
		studentRe.save(s);
//		List<Student> list = studentRe.findAll();
//		m.addAttribute("Student", list);
		return "redirect:/";
	}
	
	@RequestMapping("delete/{studentId}")
	public String deleteStudent(@PathVariable int studentId) {	
		System.out.println(studentId);
		studentRe.deleteById(studentId);
		return "redirect:/";
	}
	
	@RequestMapping("{studentId}")
	public String updateStudent(@PathVariable int studentId, Model m) {	
		Student s = studentRe.getOne(studentId);
		m.addAttribute("Student",s);
		return "editStudentInfo.jsp";
	}
}
