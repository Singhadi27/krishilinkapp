import 'package:flutter/material.dart';

class TermsOfUsePage extends StatelessWidget {
  const TermsOfUsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms of Use'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '1. TERMS OF USE ENFORCEABILITY',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You acknowledge and agree that you have freely and voluntarily entered into these Terms of Use for Localveu (the “App”), have read and understood each and every provision, and any interpretation of these Terms of Use shall not be construed against us because we drafted these Terms of Use.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              '2. DISCLAIMER',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'YOU ACKNOWLEDGE AND AGREE THAT THE APP AND ITS CONTENTS ARE PROVIDED ON AN “AS IS”, “AS AVAILABLE” BASIS AND WE DO NOT MAKE ANY, AND HEREBY SPECIFICALLY DISCLAIM ANY, REPRESENTATIONS, ENDORSEMENTS, GUARANTEES, OR WARRANTIES, EXPRESS OR IMPLIED, REGARDING THE APP OR ITS CONTENTS, INCLUDING, WITHOUT LIMITATION, ANY REGARDING OR ARISING FROM: (I) MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE, OR NONINFRINGEMENT OF INTELLECTUAL PROPERTY RIGHTS; (II) COURSE OF DEALING, COURSE OF USAGE, OR COURSE OF PERFORMANCE; OR (III) TIMELINESS, ACCURACY, RELIABILITY OR CONTENT OF THE APP AND ANY INFORMATION PROVIDED THROUGH THE APP UNDER THIS AGREEMENT. WITHOUT LIMITING THE GENERALITY OF THE FOREGOING, WE DISCLAIM ANY WARRANTY REGARDING THE PROFITABILITY OF TRANSACTIONS EXECUTED ON THE APP OR THE RESULTS TO BE OBTAINED FROM THE USE OF THE INFORMATION ON THE APP, AND INFORMATION ON THE APP IS NOT INTENDED TO PROVIDE LEGAL, FINANCIAL, ACCOUNTING, TAX OR OTHER ADVICE, AND SHOULD NOT BE RELIED UPON AS PROFESSIONAL ADVICE.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              '3. LIMITATION OF LIABILITY',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'WE ARE NOT LIABLE FOR DIRECT, INDIRECT, INCIDENTAL, CONSEQUENTIAL, SPECIAL, PUNITIVE, EXEMPLARY, OR ANY OTHER DAMAGES (COLLECTIVELY, THE “DAMAGES”), ARISING OUT OF YOUR USE OR INABILITY TO USE THE APP. THIS PROVISION ENTITLED “LIMITATION OF LIABILITY” APPLIES REGARDLESS OF: (A) OUR NEGLIGENCE; (B) OUR GROSS NEGLIGENCE; (C) ANY FAILURE OF AN ESSENTIAL PURPOSE; AND (D) WHETHER SUCH LIABILITY ARISES IN NEGLIGENCE, CONTRACT, TORT, OR ANY OTHER THEORY OF LEGAL LIABILITY. THIS PROVISION ENTITLED “LIMITATION OF LIABILITY” APPLIES EVEN IF WE HAVE BEEN ADVISED OF THE POSSIBILITY OF OR COULD HAVE FORESEEN THE DAMAGES. IN THOSE STATES THAT DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR THE DAMAGES, OUR LIABILITY IS LIMITED TO THE FULLEST POSSIBLE EXTENT PERMITTED BY LAW. WE ARE NOT RESPONSIBLE AND NOT LIABLE FOR ANY INFORMATION, PRODUCTS, OR SERVICES PROVIDED BY OTHER WEBSITES THAT LINK TO OR FROM THE APP.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              '4. YOUR USE OF THE APP',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              '4.1 Your Right to Use the App. We grant you a non-exclusive, personal, and revocable right to access the App.',
              style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            const Text(
              '4.2 Passwords. You are responsible for protecting the confidentiality of your password(s), and for the acts and omissions of any third party that accesses the App through use of your password, as if such acts and omissions were your own.',
              style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            const Text(
              '4.3 Changes to the App and Premium Features. We shall have the right at any time to change or discontinue any aspect or feature of the App, including, but not limited to, content, hours of availability, and equipment needed for access or use.',
              style: TextStyle(fontSize: 16,color: Colors.black),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '5. ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'CHANGED TERMS',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black), // Adjust the color as needed
                  ),
                  TextSpan(
                    text: '. We shall have the right at any time to amend these Terms of Use, effective immediately upon notice on the App, and any use of the App by you after notice is subject to these new amendments. Please note that access to premium app features may be subject to a fee and additional agreement(s), which we will provide to you for your approval before charging you.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '6. ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'EQIPMENT',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black), // Adjust the color as needed
                  ),
                  TextSpan(
                    text: '. You must obtain, pay for and maintain all software, hardware and anything else needed to use the App.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '7. ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'TERMINATION AND SERVIVAL',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black), // Adjust the color as needed
                  ),
                  TextSpan(
                    text: '. Either we or you may terminate these Terms of Use at any time. Without limiting the foregoing, we shall have the right to immediately terminate these Terms of Use, as to you, by terminating your access to the App, for our convenience, for any reason or no reason, or for any breach by you of these Terms of Use. You may terminate these Terms of Use by deleting your profile and ceasing to use the App, but if you use the App again in the future, then you will have agreed to these Terms of Use again. Sections 1, 2, 3, 6, and 7 survive any termination or expiration of these Terms of Use.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '8. ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'GENERAL',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black), // Adjust the color as needed
                  ),
                  TextSpan(
                    text: 'Entire Agreement and Amendments. This Agreement is the entire agreement between us and supersedes all earlier and simultaneous agreements regarding the subject matter. Governing Law and Forum. All claims regarding this Agreement are governed by and construed in accordance with the Laws of India, applicable to contracts wholly made and performed in such jurisdiction, except for any choice or conflict of Law principles, and must be litigated in India, regardless of the inconvenience of the forum. No Waivers, Cumulative Remedies. Our failure to insist upon strict performance of any provision of this Agreement is not a waiver of any of our rights under this Agreement. All of our remedies under this Agreement, at Law or in equity, are cumulative and nonexclusive. Severability: If any portion of this Agreement is held to be unenforceable, the unenforceable portion must be construed as nearly as possible to reflect our original intent, the remaining portions remain in full force and effect, and the unenforceable portion remains enforceable in all other contexts and jurisdictions. Notices: All notices to us under this Agreement must be sent to [your contact email]. Captions and Plural Terms: All captions are for purposes of convenience only and are not to be used in interpretation or enforcement of this Agreement. Terms defined in the singular have the same meaning in the plural and vice versa.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate back to the home page without login
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
