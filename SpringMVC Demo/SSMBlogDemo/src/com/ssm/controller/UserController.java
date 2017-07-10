package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.pojo.User;
import com.ssm.pojo.UserCustom;
import com.ssm.pojo.UserQueryVo;
import com.ssm.service.UserService;

@Controller
@RequestMapping(value="/ssm/users/")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	/**
	 * 查询用户列表
	 * @param model	将数据传递到前端域
	 * @param userQueryVo	查询条件
	 * @return	返回String类型，返回值为视图名
	 * @throws Exception
	 */
	@RequestMapping(value="/queryUsers")
	public String queryUsers(Model model, UserQueryVo userQueryVo) throws Exception {
		List<UserCustom> userCustoms = userService.findUserList(userQueryVo);
		model.addAttribute("users", userCustoms);
		return "users/userlist";
	}
	
	@RequestMapping(value="/addNewUser", method=RequestMethod.GET)
	public String addNewUser() throws Exception {
		return "users/adduser";
	}
	
	@RequestMapping(value="/insertNewUser", method={RequestMethod.POST, RequestMethod.GET})
	public String insertNewUser(UserQueryVo userQueryVo) throws Exception {
		userService.addUser(userQueryVo);
		return "users/updateUserTable";
	}
	
	/**
	 * 根据传入的单个ID，删除对应的数据
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteUser", method={RequestMethod.POST, RequestMethod.GET})
	public String deleteUser(HttpServletRequest request) throws Exception {
		Integer user_id = Integer.parseInt(request.getParameter("userid"));
		userService.deleteUser(user_id);
		return "users/updateUserTable";
	}
	
	/**
	 * 根据传入的数组数据，从数据库中批量删除数据
	 * @param userids
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteUsers", method={RequestMethod.POST, RequestMethod.GET})
	public String deleteUsers(Integer[] userids ) throws Exception {
		for(Integer user_id : userids) {
			userService.deleteUser(user_id);
		}
		return "users/updateUserTable";
	}
	
	/**
	 * 将用户信息传递到前台页面，进行编辑
	 * @param model 向前台Request域传递数据
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/editUser", method={RequestMethod.POST, RequestMethod.GET})
	public String editUser(Model model, HttpServletRequest request) throws Exception {
		Integer user_id = Integer.parseInt(request.getParameter("userid"));
		User user = userService.findUserByUserId(user_id);
		model.addAttribute("user", user);
		return "users/edituser";
	}
	
	@RequestMapping(value="updateUser", method={RequestMethod.POST, RequestMethod.GET})
	public String updateUser(UserQueryVo userQueryVo) throws Exception {
		UserCustom userCustom = userQueryVo.getUserCustom();
		userService.updateUser(userCustom);
		return "users/updateUserTable";
	}
	
}
