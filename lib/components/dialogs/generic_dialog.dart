import 'package:borrow4less/constants/global_variables.dart';
import 'package:flutter/material.dart';




Future<T?> showGenericDialog<T>({
  required BuildContext context,
  required String dialogTitle,
  required String dialogSubtile,
  Function()? onTap,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return Material(
        color: Colors.black.withAlpha(150),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Spacer(),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: IconButton(
                      onPressed: onTap ??
                          () {
                            Navigator.pop(context);
                          },
                      icon: const Icon(Icons.close),
                    ),
                  ),
                  SizedBox(
                    width: GlobalVariables.screenWidth(context) * 0.1,
                  )
                ],
              ),
              SizedBox(
                height: GlobalVariables.screenWidth(context) * 0.1,
              ),
              Container(
                width: GlobalVariables.screenWidth(context) * 0.8,
                height: GlobalVariables.screenHeight(context) * 0.45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: GlobalVariables.screenHeight(context) * 0.08,
                    ),
                    // SizedBox(
                    //   height: 80,
                    //   width: 80,
                    //   child: SvgPicture.asset(
                    //     'asset/svg_images/login_successful.svg',
                    //   ),
                    // ),
                    SizedBox(
                      height: GlobalVariables.screenHeight(context) * 0.03,
                    ),
                    Text(
                      dialogTitle,
                      style: GlobalVariables.paragraph1.copyWith(
                        fontSize: 24,
                        color: GlobalVariables.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: GlobalVariables.screenHeight(context) * 0.02,
                    ),
                    Text(
                      dialogSubtile,
                      textAlign: TextAlign.center,
                      style: GlobalVariables.paragraph1.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff012e72).withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
