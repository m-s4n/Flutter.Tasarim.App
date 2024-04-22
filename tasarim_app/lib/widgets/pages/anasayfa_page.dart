import 'package:flutter/material.dart';
import 'package:tasarim_app/widgets/fragments/home_app_bar.dart';
import 'package:tasarim_app/widgets/fragments/kullanicilar_fragment.dart';
import 'package:tasarim_app/widgets/fragments/banner_fragment.dart';
import 'package:tasarim_app/widgets/fragments/tabbar_bottom_fragment.dart';

class AnaSayfaPage extends StatefulWidget {
  const AnaSayfaPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnaSayfaPageState createState() => _AnaSayfaPageState();
}

class _AnaSayfaPageState extends State<AnaSayfaPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      bottomNavigationBar: TabbarBottomFragment(
        tabController: _tabController,
      ),
      body: _Icerik(),
    );
  }
}

class _Icerik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [KullanicilarFragment(), BannerFragment()],
    );
  }
}
