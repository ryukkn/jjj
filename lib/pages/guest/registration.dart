import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lichen_care/pages/guest/home_sliders.dart';
import '/firebase_options.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late final TextEditingController _firstName;
  late final TextEditingController _lastName;
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _confirmPassword;

  bool isFirebaseInitialized = true;
  bool passwordError = false;
  String errorMessage = '';
  String successMessage = '';

  @override
  void initState() {
    _firstName = TextEditingController();
    _lastName = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Create a FocusNode for the text field
  final FocusNode _firstNameFocus = FocusNode();
  final FocusNode _lastNameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _confirmPasswordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey, // Add the key to your Scaffold
      backgroundColor: Color(0xFFFFF4E9),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFF4E9),
        leading: Container(
          margin: EdgeInsets.only(left: 30.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MyCarousel(),
                ),
              );
            },
          ),
        ),
        title: Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 34.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 100.0,
      ),
      body: isFirebaseInitialized
          ? SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Create an account',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    _buildTextField('First Name', false, Icons.person,
                        _firstName, _firstNameFocus),
                    SizedBox(height: 30.0),
                    _buildTextField('Last Name', false, Icons.person, _lastName,
                        _lastNameFocus),
                    SizedBox(height: 30.0),
                    _buildTextField(
                        'Email', false, Icons.email, _email, _emailFocus),
                    SizedBox(height: 30.0),
                    _buildTextField('Password', true, Icons.lock, _password,
                        _passwordFocus),
                    SizedBox(height: 30.0),
                    _buildTextField('Confirm Password', true, Icons.lock,
                        _confirmPassword, _confirmPasswordFocus),
                    SizedBox(height: 60.0),
                    Container(
                      child: ElevatedButton(
                        onPressed: () async {
                          if (_firstName.text.isEmpty ||
                              _lastName.text.isEmpty ||
                              _email.text.isEmpty ||
                              _password.text.isEmpty ||
                              _confirmPassword.text.isEmpty) {
                            errorMessage = 'Please fill in all fields.';
                            successMessage = '';
                            _showSnackBar(errorMessage);
                            return;
                          }

                          try {
                            final email = _email.text;
                            final password = _password.text;
                            final confirmPassword = _confirmPassword.text;

                            if (password == confirmPassword) {
                              setState(() {
                                passwordError = false; // Reset password error
                              });

                              final userCredential = await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                email: email,
                                password: password,
                              );

                              if (userCredential.user != null) {
                                // Send an email verification link to the user
                                await userCredential.user!
                                    .sendEmailVerification();

                                // Show the verification email pop-up dialog
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return EmailVerificationDialog();
                                  },
                                );

                                setState(() {
                                  successMessage =
                                      'Verification email sent. Check your inbox!';
                                  errorMessage = '';
                                });

                                _showSnackBar(successMessage);
                              }
                            } else {
                              setState(() {
                                passwordError = true; // Set password error
                              });

                              errorMessage = 'Passwords do not match.';
                              successMessage = '';

                              _showSnackBar(errorMessage);
                            }
                          } on FirebaseAuthException catch (e) {
                            errorMessage = 'Error: ${e.message}';
                            successMessage = '';
                            _showSnackBar(errorMessage);
                          }
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 23.0,
                            color: Colors.white,
                          ),
                        ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFFF7F50)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.white, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?',
                            style: TextStyle(fontSize: 16.0)),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/login', (Route<dynamic> route) => false);
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFF7F50),
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  Widget _buildTextField(String label, bool isPassword, IconData? icon,
      TextEditingController controller, FocusNode focusNode) {
    double w = MediaQuery.of(context).size.width;

    return Column(
      children: [
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          obscureText: isPassword,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: label,
            labelStyle: TextStyle(
              color: Colors.grey,
            ),
            prefixIcon: Icon(
              icon,
              color: focusNode.hasFocus ? Color(0xFFFF7F50) : Colors.grey,
            ),
            prefixIconConstraints: BoxConstraints(
              minWidth: 40,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Color(0xFFFF7F50),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: w * 0.05,
              vertical: 4.0,
            ),
          ),
        ),
      ],
    );
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Center(
        child: Text(message, textAlign: TextAlign.center),
      ),
    ));
  }
}

class EmailVerificationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Rounded borders
      ),
      title: Text(
        'Successful registration! but first, we need to verify your email.',
        style: TextStyle(
          color: Color(0xFFFF7F50), // Orange color
        ),
      ),
      content: Text(
          'A verification email has been sent to your email address. Please check your email and click the verification link to activate your account.'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
            Navigator.of(context).pushNamedAndRemoveUntil('/login',
                (Route<dynamic> route) => false); // Navigate to the login page
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
