import 'package:flutter/material.dart';
import 'package:forex_indicators_th/utility/palette.dart';
import 'package:forex_indicators_th/widgets/detail_box.dart';
import 'package:forex_indicators_th/widgets/image_box.dart';
import 'package:forex_indicators_th/widgets/title_box.dart';

class EmaPage extends StatefulWidget {
  const EmaPage({Key? key}) : super(key: key);

  @override
  _EmaPageState createState() => _EmaPageState();
}

class _EmaPageState extends State<EmaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgColor,
      appBar: AppBar(
        title: const Text('EMA'),
      ),
      body: ListView(
        children: const [
          DetailBox(
            detail:
                ' จัดเป็นอินดี้ในกลุ่มที่เป็น ค่าเฉลี่ยของราคา หมวด  Moving  Average  นักเทรดจะใช้ดูแนวโน้มของเทรน ทั้งวัดความแข็งแกร่งของเทรนและแนวโน้มด้วย เพื่อให้ความรู้สึกได้ถึงความโดดเด่นของเทรนที่เกิดขึ้นได้ด้วยนับได้ว่าอาจเป็นอินดิเคเตอร์ที่ดีที่สุดสำหรับ Forex มีการคำนวณความแตกต่างระหว่าง EMA ที่เร็วขึ้น และ EMA ที่ช้าลง ซึ่งเป็นแนวคิดหลักที่อยู่เบื้องหลังของอินดิเคเตอร์นี้ โดยที่อินดิเคเตอร์จะแปลงข้อมูลมาเป็นกราฟราคาสองบรรทัดเพื่อให้เราทราบแนวโน้ม',
          ),
          ImageBox(
            imagePath: 'images/ema1.jpg',
          ),
          DetailBox(
            detail:
                'EMA 14,34  จัดได้ว่าเป็นค่าเฉลี่ย ที่นิยมใช้กันอย่างแพร่หลายพอสมควร ,  EMA 50 , EMA100 , EMA200 ก็ใช้บ่อยเหมือนกัน  โดยใช้เป็นตัวระบุเทรนของกราฟ เช่น แท่งเทียนอยู่ต่ำกว่า EMA100',
          ),
          ImageBox(
            imagePath: 'images/ema2.jpg',
          ),
          DetailBox(
            detail:
                'หรือ EMA200  ถือว่าเป็นเทรนขาลง  .. แล้ว เส้น EMA ใช้กี่วันดีที่สุด ไม่สามารถฟันธงหรือตอบให้เคลียร์จบตรงประเด็นได้ว่าใช้กี่วันดีที่สุด เพราะนั่นขึ้นอยู่กับข้อจำกัดของเทรดที่ต่างกัน แต่หลักการสำหรับการเลือกใช้เส้นค่าเฉลี่ยนั้น  เส้นเหล่านี้จะช่วยอ่านแนวโน้มทั้งระยะสั้น กลาง ยาว ดังนั้นการแบ่งเส้นค่าเฉลี่ยเป็น 3 กลุ่ม ดังนี้…',
          ),
          TitleBox(
            title: '1.EMA ระยะสั้น',
          ),
          DetailBox(
            detail:
                'เส้นแนวโน้มที่นิยมใช้ 5-10 วัน ซึ่งจะช่วยบอกการเปลี่ยนแปลงของแนวโน้มแบบระยะสั้นมากๆ เหมาะกับคนที่มีเวลาเฝ้าหน้าจอ อย่างนักลงทุนแบบ Day Trade …ถ้าเร็วไปอาจใช้ช้าลงหน่อยเป็น 20 หรือ 25 วัน ช่วยลดความผันผวนและเห็นแนวโน้มชัดเจนขึ้น',
          ),
          TitleBox(
            title: '2.EMA ระยะกลาง',
          ),
          DetailBox(
            detail:
                'เส้นแนวโน้มหลักในภาพที่กว้างขึ้น เหมาะกับคนที่ไม่มีเวลาดูจอทั้งวัน อย่างนักลงทุนแบบ Trend Follower เส้นที่นิยมที่สุด คือ 50 วัน ตามด้วย 75 และ 100 วัน',
          ),
          TitleBox(
            title: '3.EMA ระยะยาว',
          ),
          DetailBox(
            detail:
                'เป็นเส้นแสดงแนวโน้มการเคลื่อนไหวรอบใหญ่หลักเดือนและปี บอกสภาวะของแนวโน้มขาขึ้นและขาลงอย่างชัดเจน เส้นที่นิยมใช้มากที่สุด คือ 200 วัน',
          ),
        ],
      ),
    );
  }
}
