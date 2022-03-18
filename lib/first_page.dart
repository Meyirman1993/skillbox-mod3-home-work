import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_application_1/resources/resources.dart';
import './templates/logo_with_name.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  final List<LogoWithName> _listOfLogo = <LogoWithName>[
    LogoWithName(name: 'Instagram', image: SvgIcons.instagram),
    LogoWithName(name: 'Skype', image: SvgIcons.skype),
    LogoWithName(name: 'Google', image: SvgIcons.google),
    LogoWithName(name: 'Whatsapp', image: SvgIcons.whatsapp),
    LogoWithName(name: 'Vk', image: SvgIcons.vk)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          primary: true,
          title: const Text('data'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                itemCount: _listOfLogo.length,
                itemBuilder:
                    (BuildContext context, int itemindex, int realIndex) {
                  return Column(
                    children: [
                      SvgPicture.asset(
                        _listOfLogo[itemindex].image,
                        width: 200,
                        height: 200,
                      ),
                      Text(_listOfLogo[itemindex].name,
                          style: TextStyle(fontSize: 20))
                    ],
                  );
                },
                options: CarouselOptions(
                  height: 300,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 20),
                ),
              ),
              Image.network(
                "https://publicdomainvectors.org/photos/Kiste-lineart.png",
                width: 150,
                height: 150,
              ),
              Text('Image from internet', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
