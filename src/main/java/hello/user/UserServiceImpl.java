package hello.user;

import hello.security.Role;

import java.util.List;

import javax.inject.Inject;

import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

@Component
public class UserServiceImpl implements UserService {
	
	@Inject
	private UserRepository userRepository;

	@Override
	public User getUserById(long id) {
		return userRepository.findOne(id);
	}

	@Override
	public User getUserByEmail(String email) {
		return userRepository.findOneByEmail(email);
	}

	@Override
	public List<User> getAllUsers() {
		return userRepository.findAll(new Sort("email"));
	}

	@Override
	public User create(User user) {
		user.setRole(Role.USER);
		user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
		return userRepository.save(user);
	}

}
