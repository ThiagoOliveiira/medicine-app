import 'package:flutter/material.dart';
import 'package:medicine_app/exports.dart';

class SplashPage extends StatelessWidget {
  final SplashPresenter presenter;
  const SplashPage({super.key, required this.presenter});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: AppColor.scaffoldBackgroundColorDark,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'MEDICINE',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontSize: size.width * 0.1,
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                ),
                Text(
                  'APP',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                        fontSize: size.width * 0.1,
                        fontWeight: FontWeight.w400,
                      ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
