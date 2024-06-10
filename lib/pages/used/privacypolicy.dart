import 'package:flutter/material.dart';
import '../../localization/app_localization.dart'; // Import localization

class PrivacyPolicyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final isRtl = Localizations.localeOf(context).languageCode == 'ar';
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('privacy_policy'.tr(context)),
      ),
      body: Directionality(
        textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'privacy_policy'.tr(context),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'last_updated'.tr(context),
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 16),
              Text(
                'welcome'.tr(context),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'privacy_intro'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'information_we_collect'.tr(context),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'information_we_collect_details'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'personal_information'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'usage_data'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'how_we_use_your_information'.tr(context),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'how_we_use_your_information_details'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'provide_operate_maintain'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'improve_personalize_expand'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'communicate_with_you'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'send_updates'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'sharing_your_information'.tr(context),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'sharing_your_information_details'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'third_party_providers'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'law_enforcement'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'data_protection_rights'.tr(context),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'data_protection_rights_details'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'changes_to_privacy_policy'.tr(context),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'changes_to_privacy_policy_details'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'contact_us'.tr(context),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'contact_us_details'.tr(context),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
