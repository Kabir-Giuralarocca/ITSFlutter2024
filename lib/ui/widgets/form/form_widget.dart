import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController username = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            Text('Form', style: TextStyle(fontSize: 24)),
            FormInput(
              controller: username,
              label: 'Username',
              hint: 'Enter Username',
              icon: Icon(Icons.person),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Username is required.';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            FormInput(
              controller: email,
              label: 'Email',
              hint: 'Enter Email',
              icon: Icon(Icons.mail),
            ),
            SizedBox(height: 16),
            FormInputPassord(
              controller: password,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required.';
                }
                if (value.length < 8) {
                  return 'Password is too short.';
                }
                return null;
              },
            ),
            SizedBox(height: 24),
            FilledButton(
              onPressed: () {
                if (formKey.currentState?.validate() == true) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Column(children: [
                        Text('Form is valid!'),
                        Text('Username: ${username.text}'),
                        Text('Email: ${email.text}'),
                        Text('Password: ${password.text}'),
                      ]),
                    ),
                  );
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class FormInput extends StatelessWidget {
  const FormInput({
    super.key,
    required this.label,
    required this.hint,
    required this.icon,
    this.validator,
    this.controller,
  });
  final String label;
  final String hint;
  final Widget? icon;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixIcon: icon,
        filled: true,
        fillColor: Colors.purple[50],
      ),
    );
  }
}

class FormInputPassord extends StatefulWidget {
  const FormInputPassord({super.key, this.validator, this.controller});
  final String? Function(String? value)? validator;
  final TextEditingController? controller;

  @override
  State<FormInputPassord> createState() => _FormInputPassordState();
}

class _FormInputPassordState extends State<FormInputPassord> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      validator: widget.validator,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',
        filled: true,
        fillColor: Colors.purple[50],
        suffix: GestureDetector(
          onTap: () => setState(() {
            _obscureText = !_obscureText;
          }),
          child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
