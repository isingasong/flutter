import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  Animation _animationColor;
  CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));

    _animationController.addListener(() {
//      print('${_animationController.value}');
      setState(() {});
    });

    _curvedAnimation = CurvedAnimation(
        parent: _animationController, curve: Curves.bounceInOut);
    _animation = Tween(begin: 20.0, end: 100.0).animate(_curvedAnimation);
    _animationColor = ColorTween(begin: Colors.red, end: Colors.black)
        .animate(_curvedAnimation);

    _animationController.addStatusListener((AnimationStatus status) {
      print('$status');
    });

//    _animationController.forward(); // 播放动画
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          AnimationHeart(_animationController, [_animation, _animationColor]),
    );
  }
}

class AnimationHeart extends AnimatedWidget {
  final List animations;
  final AnimationController animationController;

  AnimationHeart(this.animationController, this.animations)
      : super(listenable: animationController);

  @override
  Widget build(BuildContext context) {
    return
     IconButton(
          icon: Icon(
            Icons.favorite,
          ),
          iconSize: animations[0].value,
          color: animations[1].value,
          onPressed: () {
            switch (animationController.status) {
              case AnimationStatus.completed:
                animationController.reverse();
                break;
              default:
                animationController.forward();
                break;
            }
          });
  }
}
