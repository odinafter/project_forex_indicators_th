import 'package:flutter/material.dart';
import 'package:forex_indicators_th/utility/palette.dart';
import 'package:forex_indicators_th/widgets/detail_box.dart';
import 'package:forex_indicators_th/widgets/image_box.dart';
import 'package:forex_indicators_th/widgets/title_box.dart';

class BbPage extends StatefulWidget {
  const BbPage({Key? key}) : super(key: key);

  @override
  _BbPageState createState() => _BbPageState();
}

class _BbPageState extends State<BbPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgColor,
      appBar: AppBar(
        title: const Text('BB'),
      ),
      body: ListView(
        children: const [
          DetailBox(
            detail:
                ' จัดเป็นอินดี้ในกลุ่มที่เป็น ค่าเฉลี่ยของราคา หมวด  Moving  Average  นักเทรดจะใช้ดูแนวโน้มของเทรน ทั้งวัดความแข็งแกร่งของเทรนและแนวโน้มด้วย เพื่อให้ความรู้สึกได้ถึงความโดดเด่นของเทรนที่เกิดขึ้นได้ด้วยนับได้ว่าอาจเป็นอินดิเคเตอร์ที่ดีที่สุดสำหรับ Forex มีการคำนวณความแตกต่างระหว่าง EMA ที่เร็วขึ้น และ EMA ที่ช้าลง ซึ่งเป็นแนวคิดหลักที่อยู่เบื้องหลังของอินดิเคเตอร์นี้ โดยที่อินดิเคเตอร์จะแปลงข้อมูลมาเป็นกราฟราคาสองบรรทัดเพื่อให้เราทราบแนวโน้ม',
          ),
          ImageBox(
            imagePath: 'images/bb1.jpg',
          ),
          DetailBox(
            detail:
                'มาดูกันว่า เจ้า indicator forex : Bollinger Bands อย่างคร่าว ๆ ก่อนนะครับ  ใช้อะไรได้บ้าง',
          ),
          TitleBox(
            title: '1.ใช้ในการหาแนวต้านและแนวรับของกราฟ',
          ),
          DetailBox(
            detail:
                'เส้นขอบบนทำหน้าที่เป็นแนวต้าน ส่วนเส้นที่ 2 คือเส้นขอบกลางทำหน้าที่เป็นทั้งแนวต้านและแนวรับ  เส้นขอบล่าง ทำหน้าที่เป็นแนวรับ',
          ),
          TitleBox(
            title: '2.ใช้ในการหาแนวโน้มของกราฟราคา',
          ),
          DetailBox(
            detail: 'แนวโน้มขาลง  , แนวโน้มขาขึ้น',
          ),
          TitleBox(
            title: 'แนวโน้มขาลง',
          ),
          DetailBox(
            detail:
                'ลักษณะของแนวโน้มขาลง ราคาจะอยู่บริเวณเส้นขอบล่างและไม่ค่อยจะขึ้นไปทะลุเส้นขอบกลางไปได้ หรืออาจจะขึ้นไปทะลุเส้นขอบกลางไปได้แต่ก็อาจจะกลับมาที่เส้นขอบล่าง',
          ),
          TitleBox(
            title: 'แนวโน้มขาขึ้น',
          ),
          DetailBox(
            detail:
                'ลักษณะของแนวโน้มขาขึ้น ราคาจะอยู่บริเวณเส้นขอบบนและไม่ค่อยจะตกลงมาทะลุเส้นขอบกลางไปได้ หรืออาจจะตกลงมาทะลุเส้นขอบกลางไปได้แต่ก็อาจจะกลับมาที่เส้นขอบบน',
          ),
          ImageBox(
            imagePath: 'images/bb2.jpg',
          ),
          TitleBox(
            title:
                '3.Bollinger Bands นั้นเราสามารถใช้เป็นสัญญาณเตือนเมื่อตลาดเข้าสู่สถานะ Overboughts',
          ),
          DetailBox(
            detail:
                '(Bollinger Bands จะแคบ) และ Oversold (Bollinger Bands จะกว้าง)',
          ),
          TitleBox(
            title: 'การใช้ Bollinger Bands คู่กับ  Indicator Forex อื่น  ',
          ),
          DetailBox(
            detail:
                'Bollinger Bands นั้นสามารถใช้ร่วมกับ Indicators ตัวอื่น ๆ เช่น Relative Strength Index (RSI) และ MACD เพราะฉะนั้นก่อนที่จะนำ Indicators 2 ตัวข้างต้นมาใช้ร่วมกับ Bollinger Bands แนะนำว่าให้ทำ Back-test เสียก่อนนะครับ ซึ่งถ้าทำ Back-test แล้วจะเห็นว่ามีเสถียรภาพในการใช้งานพอสมควร',
          ),
          ImageBox(
            imagePath: 'images/bb3.jpg',
          ),
        ],
      ),
    );
  }
}
