import 'package:flutter/material.dart';
import 'package:fly_ease_app/config/router/route.dart';
import 'package:fly_ease_app/widgets/button_widget.dart';
import 'package:fly_ease_app/widgets/dropdown_input_field.dart';
import 'package:fly_ease_app/widgets/textfield.dart';

class PassengerDetailsScreen extends StatefulWidget {
  const PassengerDetailsScreen({super.key});

  @override
  State<PassengerDetailsScreen> createState() => _PassengerDetailsScreenState();
}

class _PassengerDetailsScreenState extends State<PassengerDetailsScreen> {
  final List<String> _genderList = <String>['Female', 'Male'];
  final List<String> _countryList = <String>['Nigeria', ''];
  final emailController = TextEditingController();
  final titleController = TextEditingController();
  final lastNameController = TextEditingController();
  final firstNameController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final passportNumberController = TextEditingController();
  final passportExpiryDateController = TextEditingController();
  final primaryColor = const Color.fromRGBO(74, 144, 226, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(199, 221, 246, 1),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_left,
            size: 30,
          ),
        ),
        title: const Column(
          children: [
            Text(
              'Abuja - Cairo',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Sat, 18 Now',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(118, 118, 118, 1),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 23),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(237, 244, 252, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.lightbulb_outlined,
                        color: Color.fromRGBO(255, 99, 71, 1),
                      ),
                      Text(
                        'Use all given names and surnames  exactly as they appear in your passport/ ID to avoid complications.',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: DropDownInputField(genderList: _genderList),
                    ),
                    const SizedBox(width: 36),
                    Flexible(
                      child: MyTextField(
                          controller: titleController,
                          obscureText: false,
                          hintText: 'title'),
                    )
                  ],
                ),
                const SizedBox(height: 12),
                MyTextField(
                  controller: lastNameController,
                  obscureText: false,
                  hintText: 'Last name*',
                ),
                const SizedBox(height: 12),
                MyTextField(
                  controller: firstNameController,
                  obscureText: false,
                  hintText: 'First name*',
                ),
                const SizedBox(height: 12),
                MyTextField(
                  controller: lastNameController,
                  obscureText: false,
                  hintText: 'Last name*',
                ),
                const SizedBox(height: 12),
                MyTextField(
                  controller: dateOfBirthController,
                  obscureText: false,
                  hintText: 'Date of birth*',
                ),
                const SizedBox(height: 12),
                MyTextField(
                  controller: emailController,
                  obscureText: false,
                  hintText: 'Email*',
                ),
                const SizedBox(height: 12),
                DropDownInputField(genderList: _countryList),
                const SizedBox(height: 12),
                MyTextField(
                  controller: passportNumberController,
                  obscureText: false,
                  hintText: 'Passport number*',
                ),
                const SizedBox(height: 12),
                MyTextField(
                  controller: passportExpiryDateController,
                  obscureText: false,
                  hintText: 'Passport expiry date*',
                ),
                const SizedBox(height: 12),
                Material(
                  child: CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    activeColor: Colors.white,
                    checkColor: primaryColor,
                    side: BorderSide(
                      color: primaryColor,
                      style: BorderStyle.solid,
                    ),
                    title: Transform.translate(
                      offset: const Offset(-15, 0),
                      child: const Text(
                          'I understand and agree with the Terms and conditions.'),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                ),
                const SizedBox(height: 16),
                MyButton(
                  label: 'Checkout',
                  backgroundColor: primaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.paymentScreen);
                  },
                  textColor: Colors.white,
                  borderColor: primaryColor,
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
