/*
class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  int counter = 0;

  void _onPressed() {
    setState(() {
      counter++;
    });
    _controller.forward(from: 0.0);
  }

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        splashColor: Colors.red,
        child: Icon(Icons.slow_motion_video),
      ),
      body: AnimatedBuilder(
        animation: _controller,
        child: CounterWidget(
          counter: counter,
        ),
        builder: (_, child) => Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(360 * _controller.value * (pi / 180.0)),
          child: child,
        ),
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  final int counter;

  const CounterWidget({Key key, this.counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('building `CounterWidget`');
    return Center(
      child: Text(
        counter.toString(),
        style: Theme.of(context).textTheme.display4.apply(fontWeightDelta: 3),
      ),
    );
  }
}*/
