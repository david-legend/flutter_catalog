import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/empty.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class OtherProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        child: ListView(
          padding: const EdgeInsets.only(
            top: Sizes.PADDING_32,
            left: Sizes.PADDING_24,
            right: Sizes.PADDING_24,
            bottom: Sizes.PADDING_24,
          ),
          children: [
            Text(
              StringConst.PROJECTS,
              style: theme.textTheme.headline5.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            SpaceH16(),
            Container(
              width: assignWidth(
                  context: context, fraction: 1, subs: Sizes.MARGIN_24),
//              margin: EdgeInsets.symmetric(horizontal: Sizes.MARGIN_24),
              child: ListView.separated(
                itemCount: Data.projects.length,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ProjectCard(
                    title: Data.projects[index].title,
                    imagePath: Data.projects[index].imagePath,
                    isOnGithub: Data.projects[index].isOnGithub,
                    isOnPlayStore: Data.projects[index].isOnPlayStore,
                    isOnTheWeb: Data.projects[index].isOnTheWeb,
                    gitHubLink: Data.projects[index].gitHubLink,
                    playStoreLink: Data.projects[index].playStoreLink,
                    webLink: Data.projects[index].webLink,
                  );
                },
                separatorBuilder: (context, index) {
                  return SpaceH16();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectCardItem {
  ProjectCardItem({
    @required this.title,
    @required this.imagePath,
    this.isOnGithub = true,
    this.isOnPlayStore = false,
    this.isOnTheWeb = false,
    this.gitHubLink,
    this.playStoreLink,
    this.webLink,
  });

  final String title;
  final String imagePath;
  final String gitHubLink;
  final String playStoreLink;
  final String webLink;
  final bool isOnGithub;
  final bool isOnPlayStore;
  final bool isOnTheWeb;
}

class ProjectCard extends StatelessWidget {
  ProjectCard({
    @required this.title,
    @required this.imagePath,
    this.width,
    this.height = 280,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(Sizes.RADIUS_12),
    ),
    this.isOnGithub = true,
    this.isOnPlayStore = false,
    this.isOnTheWeb = false,
    this.gitHubLink,
    this.playStoreLink,
    this.webLink,
  });

  final String title;
  final double height;
  final double width;
  final String imagePath;
  final BorderRadiusGeometry borderRadius;
  final String gitHubLink;
  final String playStoreLink;
  final String webLink;
  final bool isOnGithub;
  final bool isOnPlayStore;
  final bool isOnTheWeb;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCard = width ??
        assignWidth(context: context, fraction: 1, subs: Sizes.MARGIN_24);
    return Container(
      height: height,
      width: widthOfCard,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: AppColors.white,
        boxShadow: [Shadows.containerShadow],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: borderRadius,
            child: Image.asset(
              imagePath,
              height: 200,
              width: widthOfCard,
              fit: BoxFit.cover,
            ),
          ),
          SpaceH4(),
          Padding(
            padding: const EdgeInsets.only(
              top: Sizes.PADDING_8,
              bottom: Sizes.PADDING_8,
              left: Sizes.PADDING_24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.subtitle1,
                ),
                SpaceH4(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    isOnGithub
                        ? InkWell(
                            onTap: () {
                              _launchInBrowser(gitHubLink);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(Sizes.PADDING_4),
                              child: Icon(
                                FontAwesomeIcons.github,
                                color: AppColors.black,
                              ),
                            ),
                          )
                        : Empty(),
                    isOnPlayStore ? SpaceW8() : Empty(),
                    isOnPlayStore
                        ? InkWell(
                            onTap: () {
                              _launchInBrowser(playStoreLink);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(Sizes.PADDING_4),
                              child: Icon(
                                FontAwesomeIcons.googlePlay,
                                color: AppColors.black,
                              ),
                            ),
                          )
                        : Empty(),
                    isOnTheWeb ? SpaceW8() : Empty(),
                    isOnTheWeb
                        ? InkWell(
                            onTap: () {
                              _launchInBrowser(webLink);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(Sizes.PADDING_4),
                              child: Icon(
                                FeatherIcons.globe,
                                color: AppColors.black,
                              ),
                            ),
                          )
                        : Empty(),
                  ],
                ),
              ],
            ),
          )
        ],
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
