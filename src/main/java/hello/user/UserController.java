package hello.user;

import hello.security.Role;

import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
	@Inject
	private UserService userService;
	
	private UserCreateFormValidator userFormValidator;
	
	@RequestMapping("/users")
	public ModelAndView getUsersPage(){
		return new ModelAndView("/user/users","users",userService.getAllUsers());
	}
	

    @InitBinder("form")
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(userFormValidator);
    }

	
	@RequestMapping("/user/{id}")
    public ModelAndView getUserPage(@PathVariable Long id) {
        return new ModelAndView("user", "user", userService.getUserById(id));
    }
	
	@RequestMapping(value= "/user/create",method=RequestMethod.GET)
	public ModelAndView getUserCreatePage(){
		return new ModelAndView("/user/user","form",new User());
	}
	
	@RequestMapping(value = "/user/create", method = RequestMethod.POST)
    public String handleUserCreateForm(@Valid @ModelAttribute("form") User user, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "/user/user";
        }
        try {
        	user.setRole(Role.USER);
            userService.create(user);
        } catch (DataIntegrityViolationException e) {
            bindingResult.reject("email.exists", "Email already exists");
            return "/user/user";
        }
        return "redirect:/users";
    }
	
}
