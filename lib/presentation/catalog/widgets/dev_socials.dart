import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DevSocials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: Sizes.PADDING_16),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                _launchInBrowser(StringConst.DEV_LINKED_IN);
              },
              child: Padding(
                padding: EdgeInsets.all(Sizes.PADDING_8),
                child: Icon(
                  FontAwesomeIcons.linkedin,
                  color: AppColors.violet400,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                _launchInBrowser(StringConst.DEV_GITHUB);
              },
              child: Padding(
                padding: EdgeInsets.all(Sizes.PADDING_8),
                child: Icon(
                  FontAwesomeIcons.github,
                  color: AppColors.violet400,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                _launchInBrowser(StringConst.DEV_TWITTER);
              },
              child: Padding(
                padding: EdgeInsets.all(Sizes.PADDING_8),
                child: Icon(
                  FontAwesomeIcons.twitter,
                  color: AppColors.violet400,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                _launchInBrowser(StringConst.DEV_INSTAGRAM);
              },
              child: Padding(
                padding: EdgeInsets.all(Sizes.PADDING_8),
                child: Icon(
                  FontAwesomeIcons.instagram,
                  color: AppColors.violet400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
//        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
