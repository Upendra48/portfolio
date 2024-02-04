import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/sns_links.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'custom_text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: AppColors.primary_DarkCyan,
      child: Column(
        children: [
          // title
          //todo: Add a icon and right to it write Connect with me
          Text(
            "Connect with me",
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                color: AppColors.secondary_PastelBlue,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.0,
              ),
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 700,
                maxHeight: 100,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth >= 600.0) {
                    return buildNameEmailFieldDesktop();
                  } else {
                    return buildNameEmailFieldMobile();
                  }
                },
              )),
          const SizedBox(
            height: 15,
          ),
          // message
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextField(
              controller: _messageController,
              hintText: 'Your message',
              maxLines: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // send button
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width:
                  700, //todo:  check here its changed from double.infinity to 600.
              child: ElevatedButton(
                onPressed: () {
                  _sendEmail(context);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Send'),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),

          const SizedBox(
            height: 15,
          ),
          // SNS icon buttons links
          //todo: Add a icon and change the links for the sns
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset(
                  'contact_icons/github_logo.png',
                  width: 28,
                  height: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.linkedin]);
                },
                child: Image.asset(
                  'contact_icons/icons8-linkedin.gif',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.facebook]);
                },
                child: Image.asset(
                  'contact_icons/icons8-facebook.gif',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.instagram]);
                },
                child: Image.asset(
                  'contact_icons/icons8-instagram.gif',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.twitter]);
                },
                child: Image.asset(
                  'contact_icons/icons8-twitter-squared.gif',
                  width: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        // name
        Flexible(
          child: CustomTextField(
            controller: _nameController,
            hintText: 'Your name',
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        // email
        Flexible(
          child: CustomTextField(
            controller: _emailController,
            hintText: 'Your email',
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        // name
        Flexible(
          child: CustomTextField(
            controller: _nameController,
            hintText: 'Your name',
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        // email
        Flexible(
          child: CustomTextField(
            controller: _emailController,
            hintText: 'Your email',
          ),
        ),
      ],
    );
  }

  void _sendEmail(BuildContext context) async {
    final String name = _nameController.text;
    final String email = _emailController.text;
    final String message = _messageController.text;

    final Email emailData = Email(
      body: message,
      subject: 'Message from $name ($email)',
      recipients: ['upendraofficial10@gmail.com'],
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(emailData);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email sent successfully'),
        ),
      );
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to send email: $error'),
        ),
      );
    }
  }
}
