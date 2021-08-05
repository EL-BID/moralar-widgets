part of moralar_widgets;

class MoralarImage extends Image {
  @override
  final double? height;

  @override
  final double? width;

  MoralarImage.asset(
    String name, {
    this.height,
    this.width,
  }) : super(
          image: AssetImage(
            name,
            package: 'moralar_widgets',
          ),
          width: width,
          height: height,
        );
}
