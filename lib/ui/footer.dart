import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/config/constants.dart';

import '../config/colors.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .15,
        vertical: 30,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Get in touch
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 2,
                          height: 20,
                          color: AppColors.yellow,
                        ),
                        const SizedBox(width: 7.5),
                        Text(
                          'GET IN TOUCH',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'There are many variations of passages of Lorem Ipsum available but the that.',
                      style: TextStyle(
                        color: AppColors.greyLight,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Email Address',
                      style: TextStyle(
                        color: AppColors.greyLight,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      AppConstants.mail,
                      style: TextStyle(
                        color: AppColors.greyLight,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        color: AppColors.greyLight,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      AppConstants.phone,
                      style: TextStyle(
                        color: AppColors.greyLight,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Location',
                      style: TextStyle(
                        color: AppColors.greyLight,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      AppConstants.location,
                      style: TextStyle(
                        color: AppColors.greyLight,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 20),
              // Aout me
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 2,
                          height: 20,
                          color: AppColors.yellow,
                        ),
                        const SizedBox(width: 7.5),
                        Text(
                          'ABOUT ME',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth.',
                      style: TextStyle(
                        color: AppColors.greyLight,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              // My projects
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 2,
                          height: 20,
                          color: AppColors.yellow,
                        ),
                        const SizedBox(width: 7.5),
                        Text(
                          'MY PROJECTS',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        _buildProject(
                            context, 'images/topfood.png', Colors.red[50]),
                        _buildProject(
                            context, 'images/omran.png', Colors.brown[50]),
                        _buildProject(
                            context, 'images/toptaxi.png', Colors.yellow[50]),
                        _buildProject(
                            context, 'images/jibly.png', Colors.red[50]),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Divider(
            color: AppColors.greyLight.withOpacity(.75),
            thickness: .5,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Proudly powered by OuahidDev ©${DateTime.now().year}',
                style: TextStyle(
                  color: AppColors.greyLight.withOpacity(.75),
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'images/github.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'images/linkedin.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'images/twitter.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'images/facebook.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProject(BuildContext context, String imagePath, Color color) {
    return Container(
      color: color,
      padding: const EdgeInsets.all(25),
      width: MediaQuery.of(context).size.width * .1,
      height: MediaQuery.of(context).size.width * .1,
      child: Image.asset(imagePath),
    );
  }
}
