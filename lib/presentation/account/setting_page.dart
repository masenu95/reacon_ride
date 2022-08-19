import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:reacon_customer/application/setting/setting_bloc.dart';
import 'package:reacon_customer/presentation/core/shared/bottom_bar.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeList {
  final String? title;
  final String? subtitle;

  ThemeList({this.title, this.subtitle});
}

class Settings extends StatefulWidget {
  static const routeName = '/setting';
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String? selectedTheme;
  final List<ThemeList> themes = <ThemeList>[
    ThemeList(
      title: 'Dark Mode',
      subtitle: 'Experience an exciting Dark Mode',
    ),
    ThemeList(
      title: 'Light Mode',
      subtitle: 'Experience an exciting Light Mode',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text('Settings',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500)),
          titleSpacing: 0.0,
        ),
        body: FadedSlideAnimation(
          Stack(
            children: [
              ListView(
                children: [
                  Container(
                    height: 57.7,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    //color: kCardBackgroundColor,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Select Mode',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: kTextColor,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.08),
                      ),
                    ),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: themes.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return RadioListTile(
                        value: themes[index].title,
                        title: Text(
                          themes[index].title!,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        subtitle: Text(
                          themes[index].subtitle!,
                          style: Theme.of(context).textTheme.caption,
                        ),
                        groupValue: selectedTheme,
                        onChanged: (dynamic value) {
                          setState(() {
                            print(value);
                            selectedTheme = value.toString();
                          });
                        },
                      );
                    },
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: BottomBar(
                  text: 'Save',
                  onTap: () {
                    if(selectedTheme == 'Light Mode'){
                      context.read<SettingBloc>().add(SettingEvent.lightTheme());
                    }else if(selectedTheme == 'Dark Mode'){
                      context.read<SettingBloc>().add(SettingEvent.darkTheme());
                    }
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          beginOffset: Offset(0, 0.3),
          endOffset: Offset(0, 0),
          slideCurve: Curves.linearToEaseOut,
        ));
  }
}
