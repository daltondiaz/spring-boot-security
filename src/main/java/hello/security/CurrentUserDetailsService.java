package hello.security;

import hello.user.User;
import hello.user.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CurrentUserDetailsService implements UserDetailsService {
	
	private final UserService userSerivice;
	
	@Autowired
	public CurrentUserDetailsService(UserService userService) {
		this.userSerivice = userService;
	}

	@Override
	public CurrentUser loadUserByUsername(String email)
			throws UsernameNotFoundException {
		User user = userSerivice.getUserByEmail(email);
		return new CurrentUser(user);
	}

}
