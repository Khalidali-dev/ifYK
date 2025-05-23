import 'package:ifyk_landing/ui/ui.dart';

@RoutePage()
class PrivacyPolicyPage extends ConsumerWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: deprecated_member_use
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: ColorPalette.black,
        body: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BackButton(
                        onPressed: () {
                          context.router.popForced();
                        },
                      ),
                      const Expanded(
                        child: Center(
                          child: CustomText(
                            label: 'Privacy Policy',
                            maxLines: 3,
                            fontWeight: FontWeight.bold,
                            align: TextAlign.center,
                            fontSize: 22,
                            textColor: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    color: ColorPalette.getDirectionDividerColor,
                    height: 1,
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     const CustomBackButton(),
                          //     const Expanded(
                          //       child: Center(
                          //         child: CustomText(
                          //           label: '614 N Dupont Hwy Ste 210 Dover, DE 19901 Privacy Policy',
                          //           maxLines: 3,
                          //           fontWeight: FontWeight.bold,
                          //           align: TextAlign.center,
                          //           fontSize: 20,
                          //           textColor: Colors.white,
                          //         ),
                          //       ),
                          //     ),
                          //     SizedBox(width: kIsWeb ? !context.router.canPop() ? 170 : 100 : 60)
                          //   ],
                          // ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 30),
                                Center(
                                  child: CustomText(
                                    label:
                                        '614 N Dupont Hwy Ste 210 Dover, DE 19901',
                                    maxLines: 3,
                                    fontWeight: FontWeight.bold,
                                    align: TextAlign.center,
                                    fontSize: 15,
                                    textColor: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Center(
                                  child: CustomText(
                                    label:
                                        'Type of website: Entertainment\nEffective date: 16th day of February, 2024',
                                    maxLines: 3,
                                    align: TextAlign.center,
                                    fontSize: 14,
                                    textColor: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      '614 N Dupont Hwy Ste 210 Dover, DE 19901 (the "Site") is owned and operated by Revolutionize LLC. Revolutionize LLC can be contacted at:',
                                  maxLines: 3,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      'support@ifykevents.com\n(845) 905-9003 \n80 Airport Drive, Wappingers Falls, NY 12590',
                                  maxLines: 3,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'Purpose',
                                  align: TextAlign.start,
                                  underlined: true,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'The purpose of this privacy policy (this "Privacy Policy") is to inform users of our Site of the following:',
                                  maxLines: 3,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      '1. The personal data we will collect;\n2. Use of collected data;\n3. Who has access to the data collected; and\n4. The rights of Site users.',
                                  maxLines: 4,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      'This Privacy Policy applies in addition to the terms and conditions of our Site.',
                                  maxLines: 4,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'Consent',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'By using our Site users agree that they consent to:',
                                  maxLines: 3,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      '1. The conditions set out in this Privacy Policy; and\n2. The collection, use, and retention of the data listed in this Privacy Policy.',
                                  maxLines: 4,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'Consent for Promotional Messages',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'Before sending any promotional messages, we will obtain consent from customers explicitly through a double opt-in mechanism. First, customers will fill out a consent form on our business site, indicating their willingness to receive promotional messages. After this initial opt-in, they will confirm their consent by replying "YES" or a similar confirmation on their mobile device. By completing the double opt-in process, you acknowledge and agree to receive promotional updates, offers, or other related communications. We prioritize compliance with all applicable regulations to ensure your experience is secure and user-friendly.',
                                  maxLines: 15,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'Personal Data We Collect',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'We only collect data that helps us achieve the purpose set out in this Privacy Policy. We will not collect any additional data beyond the data listed below without notifying you first.',
                                  maxLines: 4,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      'Data Collected in a Non-Automatic Way',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'We may also collect the following data when you perform certain functions on our Site:',
                                  maxLines: 3,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      '1. First and last name;\n2. Email address;\n3. Phone number;\n4. Address;\n5. Location;\n6. Liked Events;\n7. Event Searches;\n8. Event Category Selections;\n9. Location Searches; and\n10. Created Events.',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      'This data may be collected using the following methods:',
                                  maxLines: 3,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      '1. Creating an account;\n2. Location Request;\n3. Event Swipes;\n4. Event Likes;\n5. Location Searches;\n6. Creating an Event; and\n7. Category Selection.',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'How We Use Personal Data',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'Data collected on our Site will only be used for the purposes specified in this Privacy Policy or indicated on the relevant pages of our Site. We will not use your data beyond what we disclose in this Privacy Policy.',
                                  maxLines: 5,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      'The data we collect when the user performs certain functions may be used for the following purposes:',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      '1. Display Relevant Events;\n2. Communication; and\n3. User Identification',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'Who We Share Personal Data With',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label: 'Employees',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'We may disclose user data to any member of our organization who reasonably needs access to user data to achieve the purposes set out in this Privacy Policy',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'Other Disclosures',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'We will not sell or share your data with other third parties, except in the following cases:',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      '1. If the law requires it;\n2. If it is required for any legal proceeding;\n3. To prove or protect our legal rights; and\n4. To buyers or potential buyers of this company in the event that we seek to sell the company.',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      'If you follow hyperlinks from our Site to another Site, please note that we are not responsible for and have no control over their privacy policies and practices.',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'How Long We Store Personal Data',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'User data will be stored until the purpose the data was collected for has been achieved.',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      'You will be notified if your data is kept for longer than this period.',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'How We Protect Your Personal Data',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'To protect your security, we use Firebase authentication, ensuring all personal data is protected in secure facilities. All data is only accessible to our employees.',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      'While we take all reasonable precautions to ensure that user data is secure and that users are protected, there always remains the risk of harm. The Internet as a whole can be insecure at times and therefore we are unable to guarantee the security of user data beyond what is reasonably practical.',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'International Data Transfers',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'We transfer user personal data to the following countries:',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: '1. Philippines',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label: '2. Pakistan',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      'When we transfer user personal data we will protect that data as described in this Privacy Policy and comply with applicable legal requirements for transferring personal data internationally.',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'Children',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'The minimum age to use our website is 13 years of age. We do not knowingly collect or use personal data from children under 13 years of age. If we learn that we have collected personal data from a child under 13 years of age, the personal data will be deleted as soon as possible. If a child under 13 years of age has provided us with personal data their parent or guardian may contact our privacy officer.',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      'How to Access, Modify, Delete, or Challenge the Data Collected',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  maxLines: 2,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'If you would like to know if we have collected your personal data, how we have used your personal data, if we have disclosed your personal data and to who we disclosed your personal data, or if you would like your data to be deleted or modified in any way, please contact our privacy officer here:',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 20),
                                CustomText(
                                  label: 'ryderneave@outlook.com',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'Do Not Track Notice',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'Do Not Track ("DNT") is a privacy preference that you can set in certain web browsers. We do not track the users of our Site over time and across third party websites and therefore do not respond to browser-initiated DNT signals.',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      'How to Opt-Out of Data Collection, Use or Disclosure',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  maxLines: 2,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'In addition to the method(s) described in the How to Access, Modify, Delete, or Challenge the Data Collected section, we provide the following specific opt-out methods for the forms of collection, use, or disclosure of your personal data specified below:',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      '1. Email marketing. You can opt-out by clicking "unsubscribe" at the bottom of any marketing email or updating your email preferences under "Account Details"',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label:
                                      '2. Text Messaging. Users may receive text message notifications about their activities on our Site. To opt out of these messages: Reply "STOP" to any text message received from us. Update your preferences in your account settings by selecting "Opt-Out of Text Messages." Contact our support team at support@ifykevents.com or (845) 905-9003 to request text message opt-out. ​',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'Modifications',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'This Privacy Policy may be amended from time to time in order to maintain compliance with the law and to reflect any changes to our data collection process. When we amend this Privacy Policy we will update the "Effective Date" at the top of this Privacy Policy. We recommend that our users periodically review our Privacy Policy to ensure that they are notified of any updates. If necessary, we may notify users by email of changes to this Privacy Policy.',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 30),
                                CustomText(
                                  label: 'Contact Information',
                                  align: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  underlined: true,
                                  textColor: Colors.white,
                                ),
                                CustomText(
                                  label:
                                      'If you have any questions, concerns or complaints, you can contact our privacy officer at:',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),

                                CustomText(
                                  label: 'ryderneave@outlook.com',
                                  maxLines: 20,
                                  align: TextAlign.start,
                                  fontSize: 14,
                                  textColor: Colors.white,
                                ),
                                SizedBox(height: 50),
                                // CustomText(
                                //   label: '©2002-2024 LawDepot.com®',
                                //   maxLines: 10,
                                //   align: TextAlign.start,
                                //   fontSize: 9,
                                //     textColor: Colors.white,
                                // ),
                              ],
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
        ),
      ),
    );
  }
}
