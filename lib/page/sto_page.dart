import 'package:flutter/material.dart';
import 'package:forex_indicators_th/utility/palette.dart';
import 'package:forex_indicators_th/widgets/detail_box.dart';
import 'package:forex_indicators_th/widgets/image_box.dart';
import 'package:forex_indicators_th/widgets/title_box.dart';

class StoPage extends StatefulWidget {
  const StoPage({Key? key}) : super(key: key);

  @override
  _StoPageState createState() => _StoPageState();
}

class _StoPageState extends State<StoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgColor,
      appBar: AppBar(
        title: const Text('STO'),
      ),
      body: ListView(
        children: const [
          DetailBox(
            detail:
                'เป็น indicator Forex ชนิด  Oscillator (ซึ่งคำนี้มันก็แปลว่า การแกว่งไปแกว่งมานั่นเอง) นั่นอาจเป็นชื่อที่ใช้เรียกในแง่ของลักษณะที่เกิดขึ้นในวิธีของอินดิเคเตอร์แบบอื่นที่มีแนวโน้มแบบแกว่งไปแกว่งมาได้ ซึ่ง Stochastic Oscillator จะคล้ายกับอินดิเคเตอร์อื่น ๆ ที่ช่วยในการระบุพื้นที่ที่มีการซื้อเกิน (overbought) หรือ ขายเกิน (oversold) ผ่านการวัดโมเมนตัมโดยการวัดค่าของ  Stochastic  จะอยู่ในช่วง 0 – 100  จะแบ่งได้ 2โซนดังภาพคือโซน 0-20 และ โซน 80-100 นี่คือค่ามาตรฐานที่ให้มา',
          ),
          TitleBox(
            title: '1.โซน 0-20 เรียกว่าโซนขายมาก (Over Sold)',
          ),
          TitleBox(
            title: '2.โซน 80-100 เรียกว่าโซนซื้อมาก (Over Bought)',
          ),
          ImageBox(
            imagePath: 'images/sto1.jpg',
          ),
          DetailBox(
            detail:
                'ใช้งานได้ดีในภาวะที่ตลาดเป็น Side Way ลักษณะของ Sto นั้นจะมีความเร็วพอกับราคาทำให้เรามองกราฟได้ง่าย ๆ ว่าช่วงไหนที่ราคามีการซื้อเยอะ หรือช่วงไหนที่ราคามีการเทขายเยอะในตลาด  สำคัญครับ => Stochastic Oscillator ไม่เหมาะกับตลาดที่เป็นเทรน',
          ),
          ImageBox(
            imagePath: 'images/sto2.jpg',
          ),
          DetailBox(
            detail:
                'สำหรับในสภาพที่กราฟ Sideway จะกลับตัวที่โซน 10-25 และ 75-90 ใน EUR/USD ช่วง Sideway ใช้ได้ดีใน TF 5 นาที ถ้าใช้ Stochastic เทรดในช่วง Sideway  ให้เตรียมรองอีกสัก 2-3 ไม้ เผื่อโดนลากSuper  STO ( Super overbought/super oversold ) Super STO จะอยู่ในโซน 0-10 และ 90-100 สามารถใช้ได้กับ Trend ถ้าเข้า Super STO จะแสดงว่า ยังไปต่อได้อีก..',
          ),
        ],
      ),
    );
  }
}
