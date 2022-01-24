import 'package:flutter/material.dart';
import 'package:forex_indicators_th/utility/palette.dart';
import 'package:forex_indicators_th/widgets/detail_box.dart';
import 'package:forex_indicators_th/widgets/image_box.dart';
import 'package:forex_indicators_th/widgets/title_box.dart';

class MacdPage extends StatefulWidget {
  const MacdPage({Key? key}) : super(key: key);

  @override
  _MacdPageState createState() => _MacdPageState();
}

class _MacdPageState extends State<MacdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgColor,
      appBar: AppBar(
        title: const Text('MACD'),
      ),
      body: ListView(
        children: const [
          DetailBox(
            detail:
                'จัดได้ว่าเป็น อินดี้ตัวต้น ๆ ตัว TOP  ที่นักเทรดใช้งานกันเลย.. ย่อมาจาก Moving Average Convergence Divergence ตัวนี้ทำงานแบบ วิ่งในกรอบ สถานะ Over Bought , Over sold และร่วมกับ เส้น Moving Averageปกติแล้วเส้น MACD จะคำนวณโดยนำ EMA 26 วัน ลบกับ EMA12 วัน และจากนั้น EMA 9 วันของ MACD จะถูกพล็อตจุดเป็นเส้นสัญญาณแนวโน้ม เมื่อเส้น MACD ตัดตัวต่ำกว่าเส้นสัญญาณก็จะเป็นสัญญาณขายเมื่อมันข้ามเหนือเส้นสัญญาณมันเป็นสัญญาณซื้อ สามารถตั้งค่าพารามิเตอร์ทั้งสาม (26, 12 และ 9) ตามที่ต้องการ เช่นเดียวกับค่าเฉลี่ยเคลื่อนที่ การดำเนินของอินดิเคเตอร์จะช่วยให้การค้นหาการตั้งค่าที่เหมาะสมที่สุด',
          ),
          ImageBox(
            imagePath: 'images/macd1.jpg',
          ),
          ImageBox(
            imagePath: 'images/macd2.jpg',
          ),
          DetailBox(
            detail:
                'เราสามารถนำไปใช้งานเพื่อทำกำไรได้ใน 3 รูปแบบด้วยกัน ประกอบไปด้วย',
          ),
          TitleBox(
            title: '1.ทำการซื้อขายเมื่อแท่ง MACD Histogram ตัดที่เส้น 0.0',
          ),
          DetailBox(
            detail:
                'หรือหลักง่ายๆ คือให้มองว่าเส้น 0.0 คือผิวน้ำ และแท่ง MACD Histogram เป็นภูเขา เราจะสังเกตุดังนี้คือหาก MACD Histogram กำลังขึ้นเป็นลักษณะอยู่เหนือน้ำเราจะทำการ Buy แต่ในทางกลับกัน คือถ้า MACD Histogram กำลังลงสู่ใต้น้ำ เราจะทำการ Sell',
          ),
          TitleBox(
            title:
                '2.รอให้เส้น Signal Line (เส้นสีแดง) และ Moving Average (เส้นสีน้ำเงิน) ตัดกันได้สักพักหนึ่ง',
          ),
          DetailBox(
            detail:
                'จึงทำการซื้อขาย เราจะไม่ทำการซื้อขายทันทีที่ทั้งสองเส้นตัดกัน โดยหลักการดูก็คือ ณ จุดตัด ถ้าเส้น Signal Line มีทิศทางลงให้ทำการ Buy แต่ในทางกลับกันคือ ถ้ามีทิศทางขึ้นให้ทำการ Sell',
          ),
        ],
      ),
    );
  }
}
