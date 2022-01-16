import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Terminal extends HookWidget {
  static final background = TweenSequence<Color?>([
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.green.withOpacity(.5),
        end: Colors.transparent,
      ),
    ),
  ]);

  const Terminal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller =
        useAnimationController(duration: const Duration(milliseconds: 1500))
          ..repeat();
    return Stack(
      fit: StackFit.expand,
      children: [
        AnimatedBuilder(
          builder: (BuildContext context, Widget? child) {
            return Container(
              color:
                  background.evaluate(AlwaysStoppedAnimation(controller.value)),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Spacer(),
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText('Antonio Manuel Díaz Moreno',
                          speed: const Duration(milliseconds: 100),
                          textStyle: Theme.of(context).textTheme.headline1,
                          textAlign: TextAlign.center),
                    ],
                  ),
                  const SizedBox(height: 10),
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Developer | .NET | TypeScript | Dart | Angular | Flutter 🚀',
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.center,
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                  ),
                  const Spacer(),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      FlickerAnimatedText('Under Construction',
                          textStyle: Theme.of(context).textTheme.headline2),
                      FlickerAnimatedText(' ',
                          textStyle: Theme.of(context).textTheme.headline2),
                    ],
                  ),
                  // const Spacer(),
                ],
              ),
            );
          },
          animation: controller,
        ),
      ],
    );
  }
}
