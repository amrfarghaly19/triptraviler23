import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../localization/app_localization.dart';
import '../prividerlanguage.dart';

class langugaeSelect extends StatefulWidget {
  @override
  State<langugaeSelect> createState() => _langugaeSelectState();
}

class _langugaeSelectState extends State<langugaeSelect> {
  String selectedLanguage = '';
  String language = '';

  get languageCode => null;

  @override
  void initState() {
    super.initState();
    _loadSelectedLanguage();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (AppLocalization.of(context).locale.languageCode == 'en') {
      language = 'English';
    } else {
      language = 'Arabic';
    }
    print("$languageCode , $selectedLanguage");
    print(AppLocalization.of(context).locale.languageCode);
  }

  Future<void> _loadSelectedLanguage() async {
    final savedLanguage = await AppLocalization.getLanguage();
    if (mounted) {
      setState(() {
        selectedLanguage = savedLanguage ?? 'en';
        print("selected lang is $savedLanguage");
        // Default to English if no language is set
      });
    }
  }

  Future<void> _setSelectedLanguage(BuildContext context, String languageCode) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('language', languageCode);
    AppLocalization.of(context).setLanguage(languageCode);
    print(languageCode);

    final languageProvider = Provider.of<LanguageProvider>(context, listen: false);
    languageProvider.setSelectedLanguage(languageCode);

    if (mounted) {
      setState(() {
        selectedLanguage = languageCode;
      });
    }

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      extendBody: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Settings'.tr(context))),
      body: Column(
        children: [
          ListTile(
            title: Text('English'.tr(context)),
            onTap: () => _setSelectedLanguage(context, 'en'),
          ),
          ListTile(
            title: Text('Arabic'.tr(context)),
            onTap: () => _setSelectedLanguage(context, 'ar'),
          ),
        ],
      ),
    );
  }
}
