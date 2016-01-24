package hello.user;

import java.util.List;


public interface UserService {
	
	User getUserById(long id);
	User getUserByEmail(String email);
	List<User> getAllUsers();
	User create(User user);
	
}
