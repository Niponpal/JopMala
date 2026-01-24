import 'package:flutter/material.dart';

class HOmescreenView extends StatefulWidget {
  const HOmescreenView({super.key});

  @override
  State<HOmescreenView> createState() => _HOmescreenViewState();
}

class _HOmescreenViewState extends State<HOmescreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text(
          "My Apps",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.grey,
          ),
        ),
        actions: [
          Padding(padding: const EdgeInsets.all(8.0), child: Icon(Icons.menu)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text(
              "জয় শ্রী কৃষ্ণ চৈতন্য প্রভু নিত্যানন্দ । শ্রী অদ্বৈত গদাধর শ্রীবাসাদি গৌর ভক্তবৃন্দ ।।",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w700,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "হরে কৃষ্ণ হরে কৃষ্ণ, কৃষ্ণ কৃষ্ণ হরে হরে, হরে রাম হরে রাম",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w700,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Left stat (01 – blue theme)
                  Container(
                    width: 170,
                    height: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.shade50,           // very light tint
                      border: Border.all(
                        color: Colors.blue.shade300,
                        width: 4,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.shade200.withOpacity(0.3),
                          blurRadius: 16,
                          offset: const Offset(0, 8),
                          spreadRadius: 2,
                        ),
                        BoxShadow(
                          color: Colors.white.withOpacity(0.7),
                          blurRadius: 10,
                          offset: const Offset(-4, -4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '01',
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.w800,
                              color: Colors.blue.shade800,
                              height: 1.0,
                              letterSpacing: -1.2,
                            ),
                          ),
                          Text(
                            'Active',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue.shade700,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green.shade50,
                      border: Border.all(
                        color: Colors.green.shade300,
                        width: 4,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.shade200.withOpacity(0.3),
                          blurRadius: 16,
                          offset: const Offset(0, 8),
                          spreadRadius: 2,
                        ),
                        BoxShadow(
                          color: Colors.white.withOpacity(0.7),
                          blurRadius: 10,
                          offset: const Offset(-4, -4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '108',
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.w800,
                              color: Colors.green.shade800,
                              height: 1.0,
                              letterSpacing: -1.2,
                            ),
                          ),
                          Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.green.shade700,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {


                    },
                    child: const Text(
                      "Count",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
