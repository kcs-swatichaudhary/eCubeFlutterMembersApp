import 'package:flutter/material.dart';
import 'package:flutter_app/ui/utils/StringsFile.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  _RegistrationFormState myAppState=new _RegistrationFormState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EDIT PROFILE"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
          child: RegistrationForm(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: MaterialButton(
          onPressed: myAppState.register,
          height: 50.0,
          minWidth: double.infinity,
          color: Colors.deepOrangeAccent,
          textColor: Colors.white,
          child: Text(
            send,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }

}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();

}

class _RegistrationFormState extends State<RegistrationForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final List<String> mList = ['Mr.', 'Mrs.', 'Miss.', 'Other.'];

  var fNameController = new TextEditingController();
  var mNameController = new TextEditingController();
  var lNameController = new TextEditingController();
  var emailController = new TextEditingController();
  var mobileNumController = new TextEditingController();
  var addressController = new TextEditingController();
  var areaController = new TextEditingController();
  var cityController = new TextEditingController();
  var stateController = new TextEditingController();
  var countryController = new TextEditingController();
  var zipcodeController = new TextEditingController();
  String _fname,
      _mname,
      _lname,
      _email,
      _mobile,
      _address,
      _area,
      _city,
      _country,
      _zipcode,
      _state;
  var currentSelectedValue;

  @override
  void initState() {
    currentSelectedValue = mList[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // new Expanded(
          /*    child: Text(
              "hjbjkdsfhuifhuiafhafhfoiaoifajoiajfoiafifoiwweruiwrhiwerwerwerwe",
              style: TextStyle(color: Colors.black, fontSize: 12.0),
            ),
          ),*/
          Text(
            "hjbjkdsfhuifhuiafhafhfoiaoifajoiajfoiafifosdsdsdfdsfdsfdsfdsfiwweruiwrhiwerwerwerwhjbjkdsfhuifhuiafhafhfoiaoifajoiajfoiafifosdsdsdfdsfdsfdsfdsfiwweruiwrhiwerwerwerwe",
            style: TextStyle(color: Colors.black, fontSize: 15.0,backgroundColor: const Color(0xFFEFEFEF)),
          ),
          const SizedBox(height: 16.0),
          new DropdownButton<String>(
            isExpanded: true,
            icon: Icon(Icons.arrow_drop_down,color: Colors.deepOrangeAccent,),
            items: mList.map((String value) {
              return new DropdownMenuItem<String>(
                value: value,

                child: new Text(value),
              );
            }).toList(),
            value: currentSelectedValue,
            onChanged: (newValue) {
              setState(() {
                currentSelectedValue = newValue;
              });
            },
          ),
          Container(
              child: TextFormField(
            validator: (input) {
              if (input.isEmpty) return enterPrifix + " " + first_name;
              return null;
            },
            onSaved: (val) {
              _fname = val;
            },
            controller: fNameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: first_name,
              hintStyle: TextStyle(color: Colors.deepOrange),
            ),
          )),
          const SizedBox(height: 16.0),
          Container(
              child: TextFormField(
            controller: mNameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: middle_name,
            ),
            validator: (input) {
              if (input.isEmpty) return enterPrifix + " " + middle_name;
              return null;
            },
            onSaved: (val) {
              _mname = val;
            },
          )),
          const SizedBox(height: 16.0),
          Container(
              child: TextFormField(
            controller: lNameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: last_name,
            ),
            validator: (input) {
              if (input.isEmpty) return enterPrifix + " " + last_name;
              return null;
            },
            onSaved: (val) {
              _lname = val;
            },
          )),
          const SizedBox(height: 16.0),
          Container(
              child: TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: email,
            ),
            validator: (input) {
              Pattern pattern = email_pattern;
              RegExp regex = new RegExp(pattern);
              if (input.isEmpty) {
                return enterPrifix + " " + email;
              } else if (!regex.hasMatch(input)) {
                return enterPrifix + " " + email_pattern;
              } else {
                return null;
              }
            },
            onSaved: (val) {
              _email = val;
            },
          )),
          const SizedBox(height: 16.0),
          Container(
              child: TextFormField(
            controller: mobileNumController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: mobile_no,
            ),
            validator: (input) {
              Pattern pattern = mobile_pattern;
              RegExp regex = new RegExp(pattern);
              if (input.isEmpty) {
                return enterPrifix + " " + mobile_no;
              } else if (!regex.hasMatch(input)) {
                return enterPrifix + " " + msg_selected_valid_mobile_number;
              } else {
                return null;
              }
            },
            onSaved: (val) => _mobile = val,
          )),
          const SizedBox(height: 16.0),
          Container(
              child: TextFormField(
            controller: addressController,
            keyboardType: TextInputType.multiline,
            maxLines: 2,
            decoration: InputDecoration(
              labelText: address,
            ),
            validator: (input) {
              return (input.isEmpty) ? enterPrifix + " " + address : null;
            },
            onSaved: (val) => _address = val,
          )),
          const SizedBox(height: 16.0),
          Container(
              child: TextFormField(
            controller: areaController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: area,
            ),
            validator: (input) {
              return (input.isEmpty) ? enterPrifix + " " + area : null;
            },
            onSaved: (val) => _area = val,
          )),
          const SizedBox(height: 16.0),
          Container(
              child: TextFormField(
            controller: cityController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: city,
            ),
            validator: (input) {
              return (input.isEmpty) ? enterPrifix + " " + city : null;
            },
            onSaved: (val) => _city = val,
          )),
          const SizedBox(height: 16.0),
          Container(
              child: TextFormField(
            controller: stateController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: state,
            ),
            validator: (input) {
              return (input.isEmpty) ? enterPrifix + " " + state : null;
            },
            onSaved: (val) => _state = val,
          )),
          const SizedBox(height: 16.0),
          Container(
              child: TextFormField(
            controller: countryController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: country,
            ),
            validator: (input) {
              return (input.isEmpty) ? enterPrifix + " " + country : null;
            },
            onSaved: (val) => _country = val,
          )),
          const SizedBox(height: 16.0),
          Container(
              child: TextFormField(
            controller: zipcodeController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: zipCode,
            ),
            validator: (input) {
              return (input.isEmpty) ? enterPrifix + " " + zipCode : null;
            },
            onSaved: (val) => _zipcode = val,
          )),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
  void register() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      Navigator.pop(context, 'Nope!');
    }
    else{

    }
  }

}
