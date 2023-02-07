class UserData {
	int? id;
	String? email;
	String? firstName;
	String? lastName;
	String? avatar;

	UserData({this.id, this.email, this.firstName, this.lastName, this.avatar});

	factory UserData.fromJson(Map<String, dynamic> json) => UserData(
				id: json['id'] as int?,
				email: json['email'] as String?,
				firstName: json['first_name'] as String?,
				lastName: json['last_name'] as String?,
				avatar: json['avatar'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'email': email,
				'first_name': firstName,
				'last_name': lastName,
				'avatar': avatar,
			};
}
