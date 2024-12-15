import 'package:flutter/material.dart';

class NewOrderCard extends StatelessWidget {
const NewOrderCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xff131420)
      ),
      padding: EdgeInsets.all(16.0),

      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Imagen del primer producto
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xff20C895, ) 
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Derlis Diaz", style: TextStyle(color: Color(0xffE5E0E3), fontSize: 20),),


                ],
              ),

              SizedBox(height: 20),
              Text("Orden #1023", style: TextStyle(color: Color(0xffE5E0E3), fontSize: 20),)
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TagWidget(text: "Pago en puerta", primary: 0xff43A047, secondary: 0x201b5e20, icon: Icons.payments_outlined,),
                      SizedBox(width: 10,),
                      TagWidget(text: "35min", primary: 0xff6d4c41, secondary: 0x203e2723, icon: Icons.schedule,),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TagWidget(text: "1.200.000Gs", primary: 0xfff57f17, secondary: 0x20fdd835, icon: Icons.attach_money,),
                      SizedBox(width: 10,),
                      TagWidget(text: "5 unidades", primary: 0xfff44336, secondary: 0x20e53935, icon: Icons.inventory_2_outlined,),

                    ],
                  )
                ],
              )
              ,Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff20C895)
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                child: Text("Ver pedido", style: TextStyle(color: Color(0xffE5E0E3, ),fontSize: 20, fontWeight: FontWeight.w400),),
              )
            ],


          ),
          Column()
        ],
      ),
    );
  }
}

class TagWidget extends StatelessWidget {
  final String text;
  final int primary;
  final int secondary;
  final IconData icon;
  const TagWidget({
    super.key, required this.text, required this.primary, required this.secondary, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Color(secondary),
        borderRadius: BorderRadius.circular(10)
        
      ),
    
      child: Row(
        children: [
          Icon(icon, color: Color(primary), size: 25,),
          SizedBox(width: 10,),
          Text(text, style: TextStyle(color: Color(primary), fontSize: 13, fontWeight: FontWeight.w400),),
        ],
      ),
    );
  }
}