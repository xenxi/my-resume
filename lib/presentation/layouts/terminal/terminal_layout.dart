import 'package:antoniomdm/presentation/layouts/terminal/widgets/popup_options_bar.dart';
import 'package:antoniomdm/presentation/layouts/terminal/widgets/windows_navigation_bar.dart';
import 'package:antoniomdm/shared/values/image_path.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shared/components/launcher_funtions.dart';

class TerminalLayout extends StatelessWidget {
  final Widget child;
  const TerminalLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox.expand(
            child: Image(image: AssetImage(ImagePath.bg7), fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.center,
            child: FittedBox(
              child: SizedBox(
                height: 500,
                width: 600,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.all(20),
                  elevation: 8,
                  child: Column(
                    children: [
                      const PopupOptionsBar(),
                      Expanded(child: child),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: WindowsNavigationBar(),
          ),
        ],
      ),
    );
  }
}
