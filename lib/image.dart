part of moralar_widgets;

class MoralarImage extends Image {
  final String name;
  final double? height;
  final double? width;

  MoralarImage.asset(
    this.name, {
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
