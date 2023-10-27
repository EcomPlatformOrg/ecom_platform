import 'package:flutter/material.dart';

class LoginRegisterButton extends StatelessWidget {
  const LoginRegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).buttonTheme.colorScheme;
    final borderColor = colorScheme?.onSurface ??
        Colors.blue; // Use a default value if colorScheme is null

    return OutlinedButton(
      onPressed: () {
        // Navigate to login/register page
        // Use Navigator.push to navigate to another page
      },
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: borderColor), // Use the borderColor variable
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: const Text(
        'Login/Register',
        style: TextStyle(
            fontSize: 12, color: Colors.blue), // Set font size and text color
      ),
    );
  }
}
