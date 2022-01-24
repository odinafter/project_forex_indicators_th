import 'package:flutter/material.dart';
import 'package:forex_indicators_th/page/ema_page.dart';
import 'package:forex_indicators_th/page/sto_page.dart';
import 'package:forex_indicators_th/utility/palette.dart';

import '../widgets/main_button.dart';
import 'bb_page.dart';
import 'macd_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgColor,
      appBar: AppBar(
        title: const Text('Forex Indicator'),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Palette.bgColor,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Palette.mainColor),
              child: Image.asset('images/forex.png'),
            ),
            const ListTile(
              leading: Icon(
                Icons.people,
                color: Palette.mainColor,
              ),
              title: Text(
                'วุฒิกุล กิตติภาดากุล',
                style: TextStyle(color: Palette.subColor),
              ),
              trailing: Text(
                'ผู้พัฒนา',
                style: TextStyle(color: Palette.mainColor),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.email,
                color: Palette.mainColor,
              ),
              title: Text(
                'odinafter@gmail.com',
                style: TextStyle(color: Palette.subColor),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.phone,
                color: Palette.mainColor,
              ),
              title: Text(
                '0846824746',
                style: TextStyle(color: Palette.subColor),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.3,
            image: AssetImage('images/economic.png'),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MainButton(
                imagePath: 'images/EMA.png',
                title: 'Exponential Moving Average (EMA)',
                subTitie: 'ศึกษาค่าเฉลี่ยของกราฟ',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmaPage(),
                    ),
                  );
                },
              ),
              MainButton(
                imagePath: 'images/BB.png',
                title: 'Bollinger Band (BB)',
                subTitie: 'ศึกษาแนวโน้มของตลาด',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BbPage(),
                    ),
                  );
                },
              ),
              MainButton(
                imagePath: 'images/STO.png',
                title: 'Stochastic Oscillator (STO)',
                subTitie: 'ศึกษาแรงเหวี่ยงของค่าเงิน',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoPage(),
                    ),
                  );
                },
              ),
              MainButton(
                imagePath: 'images/MACD.png',
                title: 'Moving Average Convergence Divergence (MACD)',
                subTitie: 'ศึกษาจุดสิ้นสุดของราคา',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MacdPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
