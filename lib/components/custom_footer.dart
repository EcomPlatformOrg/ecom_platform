// lib/components/custom_footer.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white, // 设置背景颜色为白色
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // 使内容分布在行的两端
        children: [
          Row(
            // 社交媒体图标
            children: [
              IconButton(
                icon: const Icon(FontAwesomeIcons.facebookF,
                    color: Colors.blueAccent),
                onPressed: () {},
                iconSize: 20.0,
              ),
              IconButton(
                icon:
                    const Icon(FontAwesomeIcons.instagram, color: Colors.pink),
                onPressed: () {},
                iconSize: 20.0,
              ),
              IconButton(
                icon: const Icon(FontAwesomeIcons.youtube, color: Colors.red),
                onPressed: () {},
                iconSize: 20.0,
              ),
              IconButton(
                icon: const Icon(FontAwesomeIcons.google, color: Colors.blue),
                onPressed: () {},
                iconSize: 20.0,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50.0),
            child: Text(
              // 版权信息
              '© 2023 ECOM Company',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0, // 使字体变小
                fontWeight: FontWeight.bold, // 使字体变粗
              ),
            ),
          ),
        ],
      ),
    );
  }
}
