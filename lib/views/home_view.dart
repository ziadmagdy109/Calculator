import 'package:calculator/core/theme/app_colors.dart';
import 'package:calculator/widgets/button_icon.dart';
import 'package:calculator/widgets/calcalculate_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.backGroundBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              children: [
                //First Half
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "12,454",
                      style: TextStyle(
                        fontSize: 60,
                        color: AppColors.white,
                        fontWeight: FontWeight(500),
                      ),
                    ),
                  ),
                ),
                //Second Half
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  CalcalculateButton(
                                    textButton: "Ac",
                                    colorText: AppColors.white,
                                    backgroundColor: AppColors.greyLight,
                                    sizeText: 24,
                                  ),
                                  ButtonIcon(
                                    icon: Icons.backspace_outlined,
                                    colorIcon: AppColors.white,
                                  ),
                                  CalcalculateButton(
                                    textButton: "/",
                                    colorText: AppColors.white,
                                    backgroundColor: AppColors.blueDark,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  CalcalculateButton(textButton: "7"),
                                  CalcalculateButton(textButton: "8"),
                                  CalcalculateButton(textButton: "9"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  CalcalculateButton(textButton: "4"),
                                  CalcalculateButton(textButton: "5"),
                                  CalcalculateButton(textButton: "6"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  CalcalculateButton(textButton: "1"),
                                  CalcalculateButton(textButton: "2"),
                                  CalcalculateButton(textButton: "3"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  CalcalculateButton(textButton: "0", flex: 2),
                                  CalcalculateButton(textButton: "."),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          CalcalculateButton(
                            flex: 4,
                            textButton: "*",
                            colorText: AppColors.white,
                            backgroundColor: AppColors.blueDark,
                          ),
                          CalcalculateButton(
                            flex: 4,
                            textButton: "-",
                            colorText: AppColors.white,
                            backgroundColor: AppColors.blueDark,
                          ),
                          CalcalculateButton(
                            flex: 6,
                            textButton: "+",
                            colorText: AppColors.white,
                            backgroundColor: AppColors.blueDark,
                          ),
                          CalcalculateButton(
                            flex: 6,
                            textButton: "=",
                            colorText: AppColors.white,
                            backgroundColor: AppColors.blueLight,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
