import 'package:flutter/material.dart';
import 'package:forex_indicators_th/utility/palette.dart';

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
                onTap: () {},
              ),
              MainButton(
                imagePath: 'images/BB.png',
                title: 'Bollinger Band (BB)',
                subTitie: 'ศึกษาแนวโน้มของตลาด',
                onTap: () {},
              ),
              MainButton(
                imagePath: 'images/STO.png',
                title: 'Stochastic Oscillator (STO)',
                subTitie: 'ศึกษาแรงเหวี่ยงของค่าเงิน',
                onTap: () {},
              ),
              MainButton(
                imagePath: 'images/MACD.png',
                title: 'Moving Average Convergence Divergence (MACD)',
                subTitie: 'ศึกษาจุดสิ้นสุดของราคา',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subTitie,
    required this.onTap,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String subTitie;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Palette.subColor,
        ),
        child: Center(
          child: ListTile(
            onTap: onTap,
            leading: Image.asset(
              imagePath,
            ),
            title: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              subTitie,
              style: const TextStyle(color: Colors.amber),
            ),
          ),
        ),
      ),
    );
  }
}
