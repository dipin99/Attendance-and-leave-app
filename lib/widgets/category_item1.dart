import 'package:flutter/material.dart';

class CategoryItem1 extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  
  CategoryItem1(this.title, this.color, this.id,);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
        child: InkWell(
          onTap: () => {},
          splashColor: Color.fromARGB(255, 12, 109, 230),
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 140,
            width: 140,
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '_',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '9.0\ndays',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                      ),
                    ),
                    
                  
                ),
              ],
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}