import 'package:flutter/material.dart';

class NewEntry extends StatefulWidget {
  const NewEntry({super.key});

  @override
  State<NewEntry> createState() => _NewEntryState();
}

class _NewEntryState extends State<NewEntry> {
  final eggController = TextEditingController();
  final receiptController = TextEditingController();
  final rupeesController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus(); // Automatically focus the TextFormField
    });
  }

  @override
  void dispose() {
    _focusNode.dispose(); // Clean up the focus node
    eggController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.close),
        title: const Center(
            child: Text(
          "Add an expense",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 13),
            child: Text(
              "Save",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: RichText(
                      text: TextSpan(
                          text: "With",
                          style: TextStyle(
                              color: Colors.grey.shade800, fontSize: 16),
                          children: <TextSpan>[
                        const TextSpan(
                            text: ' You',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: ' and:',
                            style: TextStyle(color: Colors.grey.shade800, fontSize: 16)),
                      ])),
                ),
                Container(
                  width: screenWidth * 0.65,
                  child: TextFormField(
                    focusNode: _focusNode,
                    enabled: true,
                    controller: eggController,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white, width: 1.0), // Default border
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white, width: 2.0), // Focused border
                      ),
                      prefix: Padding(
                        padding: EdgeInsets.all(7.0),
                      ),
                      prefixStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 1,
              thickness: 0.7,
              color: Colors.grey.shade300,
            ),
            SizedBox(
              height: screenHeight * 0.12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(1),
                              blurRadius: 0.1,
                              offset:
                                  const Offset(0, 2), // changes position of shadow
                            ),
                          ]),
                      child: Icon(Icons.receipt),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        enabled: true,
                        controller: receiptController,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade300,
                              fontWeight: FontWeight.w400),
                          hintText: 'Enter a despcription',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(1),
                              blurRadius: 0.1,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ]),
                      child: const Center(
                          child: Text(
                        "Rs",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        enabled: true,
                        controller: rupeesController,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 24,
                              color: Colors.grey.shade300,
                              fontWeight: FontWeight.w700),
                          hintText: '0.00',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * .04,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Paid by  ",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade800),
                    ),
                    Container(
                      height: 28,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(1),
                              blurRadius: 0.1,
                              offset:
                                  const Offset(0, 2), // changes position of shadow
                            ),
                          ]),
                      child: Center(
                          child: Text(
                        "you",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade800),
                      )),
                    ),
                    Text(
                      "  and split  ",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade800),
                    ),
                    Container(
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(1),
                              blurRadius: 0.1,
                              offset:
                                  const Offset(0, 2), // changes position of shadow
                            ),
                          ]),
                      child: Center(
                          child: Text(
                        "equally",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade800),
                      )),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
