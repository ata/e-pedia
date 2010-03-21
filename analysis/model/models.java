class Discussion {
	public Serial id;
	public String title;

	public Discussion() {
		
	}

}

/*(NULL)*/
class DiscussionPost {
	public String title;
	public Text content;

	public DiscussionPost() {
		
	}

}

/*(NULL)*/
class Course {
	public String full_name;
	public String short_name;
	public Text description;
	public Iinteger visibility;

	public Course() {
		
	}

}

/*(NULL)*/
class Setting {
	public String code;
	public String value;

	public Setting() {
		
	}

}

class Role {
	public String name;

	public Role() {
		
	}

}

class User {
	public String login;
	public String password;
	public String email;

	public User() {
		
	}

}

/*(NULL)*/
class UserGroup {
	public String name;
	public List<Role> roles;

	public UserGroup() {
		
	}

}

/*(NULL)*/
class CourseItem {
	public String title;
	public Course course;

	public CourseItem() {
		
	}

}

/*(NULL)*/
class CourseCategory {
	public String name;
	public string description;

	public CourseCategory() {
		
	}

}

