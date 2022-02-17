package com.board;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.service.BoardService;
import com.board.vo.BoardVo;
import com.board.vo.UserVo;
				
@Controller
public class BoardController {
  @Autowired 
  private BoardService boardService;

  
  @RequestMapping(value="/board/boardList.do" ,method = RequestMethod.GET)
  public String getboardList(HttpServletRequest  request, Model model, BoardVo boardVo) {
	  return "board/boardList";
	  
  }
}
