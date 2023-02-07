import 'package:electi_test/controller/core/color/colors.dart';
import 'package:electi_test/controller/core/size/size.dart';
import 'package:electi_test/controller/core/style/text_style.dart';
import 'package:electi_test/model/user_data.dart';
import 'package:flutter/cupertino.dart';

class HomeTileWidget extends StatelessWidget {
  const HomeTileWidget({
    Key? key,
    required this.userDetails,
  }) : super(key: key);

  final UserData? userDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
              color: AppColors.secondaryGreyColor,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Container(
                width: 90,
                height: 80,
                decoration: BoxDecoration(
                    color: AppColors.greyColor,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(userDetails?.avatar ?? ''),
                        fit: BoxFit.cover)),
              ),
              kWidth10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(style: GoogleFont.homeText, children: [
                    const TextSpan(text: 'Name : '),
                    TextSpan(text: '${userDetails?.lastName}'),
                    TextSpan(text: ' ${userDetails?.lastName}'),
                  ])),
                  RichText(
                      text: TextSpan(style: GoogleFont.homeSubText, children: [
                    const TextSpan(text: 'Email : '),
                    TextSpan(text: '${userDetails?.email}'),
                  ])),
                ],
              )
            ],
          )),
    );
  }
}
