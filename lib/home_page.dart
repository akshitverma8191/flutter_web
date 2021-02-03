import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task1_infigon/firestore_data.dart';
import 'firestore_data.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

class home_page_fornt_end extends StatefulWidget {
  @override
  _home_page_fornt_endState createState() => _home_page_fornt_endState();
}

class _home_page_fornt_endState extends State<home_page_fornt_end> {
  List<bool> ques;
  var data_model1 = data_model();
  TextEditingController name;
  TextEditingController email;
  TextEditingController question;

  @override
  void initState() {
    ques = [];
    for (int i = 0; i < 6; i++) {
      ques.add(false);
    }
    name = TextEditingController(text: "");
    email = TextEditingController(text: "");
    question = TextEditingController(text: "");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width * .25,
                  height: MediaQuery.of(context).size.height * .1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/main.png"),
                        fit: BoxFit.contain),
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "EXPLORE",
                  style: TextStyle(
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
                SizedBox(
                  width: 35,
                ),
                Text(
                  "ADMISSIONS",
                  style: TextStyle(
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
                Expanded(child: Container()),
                Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: MediaQuery.of(context).size.height * .1,
            width: MediaQuery.of(context).size.width * .38,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Text(
                "GET IN TOUCH",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700],
                    letterSpacing: 0,
                    wordSpacing: 0),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                // Left expanded Card
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  elevation: 6.0,
                  child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    width: MediaQuery.of(context).size.width * .375,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .05,
                            ),
                            Text(
                              "Infigon Futures",
                              style: TextStyle(
                                  color: Colors.blue[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .05,
                            ),
                            Container(
                              height: 1,
                              width: 150,
                              color: Colors.blue[700].withOpacity(.7),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .05,
                            ),
                            Text(
                              "E-mail :",
                              style: TextStyle(
                                  color: Colors.blue[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            Text(
                              "samriddhadas.das8@gmail.com",
                              style: TextStyle(
                                  color: Colors.blue[700],
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            Icon(
                              Icons.next_plan_outlined,
                              size: 15,
                              color: Colors.blue[900],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .05,
                            ),
                            Text(
                              "Mobile : ",
                              style: TextStyle(
                                  color: Colors.blue[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            Text(
                              "+91 00000 00000",
                              style: TextStyle(
                                  color: Colors.blue[700],
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ],
                        ),

                        //mid text here
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .25,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal),
                                        text:
                                            "601, Eco Residency, Makwana Rd, near Vasant Oasis, Marol, Andheri East, Mumbai, Maharashtra 400059")
                                  ],
                                  text: "Address : ",
                                  style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // End text here
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Latest Facebook Posts",
                          style: TextStyle(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .15,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          "Latest Instagram Posts",
                          style: TextStyle(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .15,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Right expanded Card
                Expanded(
                  child: Card(
                    elevation: 12.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    margin: EdgeInsets.only(right: 10),
                    child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      //width: MediaQuery.of(context).size.width * .55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          //This expanded container contain the predefined question answers
                          Expanded(
                              child: Container(
                            child: ListView.builder(
                                itemCount: ques.length,
                                itemBuilder: (BuildContext context, index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Iorem ipsum dolor sit amet, consectetur?",
                                            style: TextStyle(
                                                color: Colors.blue[700],
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Expanded(child: Container()),
                                          !ques[index]
                                              ? InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      ques[index] = true;
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.blue[700],
                                                  ),
                                                )
                                              : InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      ques[index] = false;
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.remove,
                                                    color: Colors.blue[700],
                                                  ),
                                                ),
                                        ],
                                      ),
                                      Divider(
                                        color: Colors.grey.withOpacity(.4),
                                      ),
                                      ques[index]
                                          ? Text(
                                              "lobesoih l;asdhkfsdf asdf sf sdlfkjs ;lksjadfl;kj asdfkj;lj sdflksjdfkl asdfsdfasdf asdf asd f asdf asdf\nasdfsdf ",
                                              style: TextStyle(
                                                  color: Colors.grey
                                                      .withOpacity(.8),
                                                  fontSize: 12),
                                            )
                                          : Text(""),
                                    ],
                                  );
                                }),
                          )),
                          Row(
                            children: [
                              Text(
                                "Didn't find your question?",
                                style: TextStyle(
                                    color: Colors.blue[700], fontSize: 12),
                              ),
                              Text(
                                " JOIN OUR COMMUNITY",
                                style: TextStyle(
                                    color: Colors.blue[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                    color: Colors.blue[700],
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                padding: EdgeInsets.only(
                                    bottom: 8, left: 5, right: 5),
                                width: MediaQuery.of(context).size.width * .2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey.withOpacity(.25)),
                                height: 15,
                                child: Center(
                                  child: TextField(
                                    onChanged: (e) {
                                      name.text = e;
                                    },
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none),
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "EMAIL",
                                style: TextStyle(
                                    color: Colors.blue[700],
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  padding: EdgeInsets.only(
                                      bottom: 8, left: 5, right: 5),
                                  // width: MediaQuery.of(context).size.width * .1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey.withOpacity(.25)),
                                  height: 15,
                                  child: Center(
                                    child: TextField(
                                      onChanged: (e) {
                                        email.text = e;
                                      },
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none),
                                      style: TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5, right: 5),
                                child: Text(
                                  "QUESTION",
                                  style: TextStyle(
                                      color: Colors.blue[700],
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: 2, left: 5, right: 5),
                                  height:
                                      MediaQuery.of(context).size.height * .1,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(.25),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: TextField(
                                    onChanged: (e) {
                                      question.text = e;
                                    },
                                    maxLines: null,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none),
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () async {
                                  Loader.show(context,
                                      progressIndicator:
                                          CircularProgressIndicator());
                                  await data_model1.register_quesry(
                                      email: email.text,
                                      name: name.text,
                                      question: question.text);

                                  setState(() {
                                    Loader.hide();
                                    email.clear();
                                    name.clear();
                                    ques.clear();
                                    for (int i = 0; i < 6; i++) {
                                      ques.add(false);
                                    }
                                  });
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * .075,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.blue[700]),
                                  child: Center(
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
