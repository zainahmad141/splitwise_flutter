import 'package:flutter/material.dart';
import 'package:splitwise_flutter/view/dashboard/add/new_entry.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final emailController = TextEditingController();
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
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.close),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              focusNode: _focusNode,
              enabled: true,
              controller: emailController,
              decoration: const InputDecoration(
                prefix: Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text(
                    "With you and: ",
                  ),
                ),
                prefixStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                hintStyle:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                hintText: 'Enter names, emails, or phone #s',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Recent",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            InkWell(
              child: ListTile(
                title: const Text("Eggs"),
                trailing: Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.grey.shade200,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black12, width: 1)),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/health-benefits-of-eggs-1296x728-feature.jpg?w=1155&h=1528"),
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewEntry()));
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Irfan Bhai"),
              trailing: Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey.shade200,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12, width: 1)),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images5.alphacoders.com/133/1338709.png"),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Groups",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              title: const Text("Eggs"),
              trailing: Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey.shade200,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12, width: 1)),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/health-benefits-of-eggs-1296x728-feature.jpg?w=1155&h=1528"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              title: const Text("Khaba Global"),
              trailing: Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey.shade200,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12, width: 1)),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/640px-Good_Food_Display_-_NCI_Visuals_Online.jpg"),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Friends on Splitwise",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              title: const Text("Azan"),
              trailing: Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey.shade200,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12, width: 1)),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images5.alphacoders.com/133/1338709.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              title: const Text("Qamar"),
              trailing: Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey.shade200,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12, width: 1)),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://miro.medium.com/v2/resize:fit:1400/0*ax6zaHxB7V-VpF7u.jpeg"),
                ),
              ),
            ),
            ListTile(
              title: const Text("Zain"),
              trailing: Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey.shade200,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12, width: 1)),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images5.alphacoders.com/133/1338709.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Adeel"),
              trailing: Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey.shade200,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12, width: 1)),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://miro.medium.com/v2/resize:fit:1400/0*ax6zaHxB7V-VpF7u.jpeg"),
                ),
              ),
            ),
            ListTile(
              title: const Text("Abdullah"),
              trailing: Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey.shade200,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12, width: 1)),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images5.alphacoders.com/133/1338709.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Sameer"),
              trailing: Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey.shade200,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12, width: 1)),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://miro.medium.com/v2/resize:fit:1400/0*ax6zaHxB7V-VpF7u.jpeg"),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "From your Contacts",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              title: const Text("Irfan Bhai"),
              subtitle: const Text("+924786054541"),
              trailing: Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey.shade200,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12, width: 1)),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://miro.medium.com/v2/resize:fit:1400/0*ax6zaHxB7V-VpF7u.jpeg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
