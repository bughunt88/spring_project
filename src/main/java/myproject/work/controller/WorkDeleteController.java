package myproject.work.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import myproject.work.model.aBoardDao;

@Controller
@RequestMapping(value = "/work")
public class WorkDeleteController {
	private final String command = "/delete"; // 복사 후 반드시 수정하세요

	@Autowired
	@Qualifier("myaBoardDao")
	private aBoardDao aboardDao;

	@RequestMapping(value = command, method = RequestMethod.POST)
	public String bbb(@RequestParam(value = "no", required = false) int no) {
		
		int cnt = -99999 ;
		cnt = this.aboardDao.DeleteData( no ) ; 
		
		return "redirect:/work/main";
	}
}
