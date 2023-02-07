import 'user_data.dart';
import 'support.dart';

class UserModelClass {
	int? page;
	int? perPage;
	int? total;
	int? totalPages;
	List<UserData>? data;
	Support? support;

	UserModelClass({
		this.page, 
		this.perPage, 
		this.total, 
		this.totalPages, 
		this.data, 
		this.support, 
	});

	factory UserModelClass.fromJson(Map<String, dynamic> json) {
		return UserModelClass(
			page: json['page'] as int?,
			perPage: json['per_page'] as int?,
			total: json['total'] as int?,
			totalPages: json['total_pages'] as int?,
			data: (json['data'] as List<dynamic>?)
						?.map((e) => UserData.fromJson(e as Map<String, dynamic>))
						.toList(),
			support: json['support'] == null
						? null
						: Support.fromJson(json['support'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toJson() => {
				'page': page,
				'per_page': perPage,
				'total': total,
				'total_pages': totalPages,
				'data': data?.map((e) => e.toJson()).toList(),
				'support': support?.toJson(),
			};
}
