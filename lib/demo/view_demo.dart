import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
            child: Image.network(
          posts[index].imageUrl,
          fit: BoxFit.cover,
        )),
        Positioned(
            bottom: 10.0,
            right: 10.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(posts[index].title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                Text(posts[index].author,
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white)),
              ],
            ))
        // sizedBox.expand 填充整个可视界面
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _grideViewBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
//        padding: EdgeInsets.all(10.0),
      itemCount: posts.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//          crossAxisCount: 3,
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      itemBuilder: _grideViewBuilder,
      scrollDirection: Axis.vertical,
    );
  }
}

class GridViewExpendDemo extends StatelessWidget {
  List<Widget> _buildTitils(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.blue,
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'item:$index',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      // 主轴上最大的高度
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      scrollDirection: Axis.vertical,
      children: _buildTitils(100),
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      pageSnapping: true,
      // 界面停留在滑动的位置，false不会自动滑动以显示完整界面，true即为滑动位置不到一半，松开手退到原来的界面，大于一般就前进至那一界面
      scrollDirection: Axis.vertical,
      // 滑动方向，水平/竖直
      reverse: true,
      // 是否反转
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      controller: PageController(
        initialPage: 1, // 初始化界面，默认为0
        keepPage: false, // 是否记住界面位置，默认为true，记住
        viewportFraction: 0.75, // 界面占可视窗口的比例
      ),

      children: <Widget>[
        Container(
          color: Colors.brown,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.deepPurple,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.teal,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
