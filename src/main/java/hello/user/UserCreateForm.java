package hello.user;

import hello.security.Role;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

public class UserCreateForm {

	@NotEmpty
	private String email = "";

	@NotEmpty
	private String password = "";
	
	@NotEmpty
	private String username ="";

	@NotEmpty
	private String passwordRepeated = "";

	@NotNull
	private Role role = Role.USER;

}
