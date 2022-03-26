import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ramen/helper/constant/settings.dart';
import 'package:ramen/helper/ui/app_hex_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: _HomePage()),
    );
  }
}

class _HomePage extends StatefulWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _tabSection(),
    );
  }

  Widget _tabSection() {
    return DefaultTabController(
        length: 4,
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image(image: const AssetImage(Settings.assetsImagesDir + "logo.png"), width: MediaQuery.of(context).size.width / 3),
                          TabBar(
                            labelStyle: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold, fontSize: 15),
                            indicator: CircleTabIndicator(color: Colors.red, radius: 4),
                            labelColor: Colors.red,
                            unselectedLabelColor: Colors.grey,
                            tabs: const [
                              Tab(
                                text: 'Ramen',
                              ),
                              Tab(
                                text: 'Sushi',
                              ),
                              Tab(
                                text: 'Drink',
                              ),
                              Tab(
                                text: 'Donburi',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _listRamen1(),
                          const Icon(Icons.train),
                          const Icon(Icons.train),
                          const Icon(Icons.train),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  color: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(Icons.menu, color: Colors.white, size: 30,))
            ],
          ),
        ));
  }

  Widget _listRamen1() {
    return Container(
      color: Theme.of(context).primaryColor,
      child: PageView(

        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Expanded(
                  flex: 2,
                  child: _imageContent(const AssetImage(Settings.assetsImagesDir + "4.png"))),
             
              Expanded(
                child: Column(
                  children: [
                    _valueContent("Chicken Chili Ramen", "Ramen untuk kamu yang berjiwa pemberani", "Rp 20.000"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "Vector-1.png")),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "+",
                            style: GoogleFonts.halant(fontWeight: FontWeight.bold, fontSize: 35, color: AppHexColor("#0D82A8")),
                          ),
                        ),
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "Vector-2.png")),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "+",
                            style: GoogleFonts.halant(fontWeight: FontWeight.bold, fontSize: 35, color: AppHexColor("#0D82A8")),
                          ),
                        ),
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "Vector-3.png")),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "+",
                            style: GoogleFonts.halant(fontWeight: FontWeight.bold, fontSize: 35, color: AppHexColor("#0D82A8")),
                          ),
                        ),
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "icon.png")),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Expanded(
                  flex: 2,
                  child: _imageContent(const AssetImage(Settings.assetsImagesDir + "rapokki.png"))),
             
              Expanded(
                child: Column(
                  children: [
                    _valueContent("Rapokki Ramen", "Ramen dengan saus cabai yang bikin kamu ketagihan", "Rp 23.000"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "Vector-1.png")),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "+",
                            style: GoogleFonts.halant(fontWeight: FontWeight.bold, fontSize: 35, color: AppHexColor("#0D82A8")),
                          ),
                        ),
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "Vector-2.png")),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "+",
                            style: GoogleFonts.halant(fontWeight: FontWeight.bold, fontSize: 35, color: AppHexColor("#0D82A8")),
                          ),
                        ),
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "Vector.png")),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "+",
                            style: GoogleFonts.halant(fontWeight: FontWeight.bold, fontSize: 35, color: AppHexColor("#0D82A8")),
                          ),
                        ),
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "icon.png")),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Expanded(
                  flex: 2,
                  child: _imageContent(const AssetImage(Settings.assetsImagesDir + "2.png"))),
             
              Expanded(
                child: Column(
                  children: [
                    _valueContent("Akai Ramen", "Ramen tapi tidak berkuah", "Rp 23.000"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "Vector-1.png")),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "+",
                            style: GoogleFonts.halant(fontWeight: FontWeight.bold, fontSize: 35, color: AppHexColor("#0D82A8")),
                          ),
                        ),
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "Vector-2.png")),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "+",
                            style: GoogleFonts.halant(fontWeight: FontWeight.bold, fontSize: 35, color: AppHexColor("#0D82A8")),
                          ),
                        ),
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "icon.png")),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Expanded(
                  flex: 2,
                  child: _imageContent(const AssetImage(Settings.assetsImagesDir + "3.png"))),
             
              Expanded(
                child: Column(
                  children: [
                    _valueContent("Spicy MISO ramen", "Ramen dengan kuah miso pedas", "Rp 20.000"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "Vector-1.png")),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "+",
                            style: GoogleFonts.halant(fontWeight: FontWeight.bold, fontSize: 35, color: AppHexColor("#0D82A8")),
                          ),
                        ),
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "Vector-2.png")),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "+",
                            style: GoogleFonts.halant(fontWeight: FontWeight.bold, fontSize: 35, color: AppHexColor("#0D82A8")),
                          ),
                        ),
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "Vector-3.png")),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "+",
                            style: GoogleFonts.halant(fontWeight: FontWeight.bold, fontSize: 35, color: AppHexColor("#0D82A8")),
                          ),
                        ),
                        _iconContent(const AssetImage(Settings.assetsImagesDir + "Vector-4.png")),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _imageContent(AssetImage image) {
    var height = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height / 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: image,
          width: size * 0.9,
        ),
      ),
    );
  }

  Widget _valueContent(
    String title,
    String subTitle,
    String rupiah,
  ) {
    var size = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: size,
          margin: EdgeInsets.only(right: size / 6),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
            color: Colors.red,
          ),
          child: Text(
            title,
            style: GoogleFonts.halant(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            subTitle,
            style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold, color: AppHexColor("#0D82A8"), fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            rupiah,
            style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold, color: AppHexColor("#0D82A8"), fontSize: 20),
          ),
        )
      ],
    );
  }

  Widget _iconContent(AssetImage image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image(
        image: image,
        width: 40,
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius}) : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset = offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
