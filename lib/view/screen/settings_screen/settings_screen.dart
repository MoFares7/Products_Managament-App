import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:products_managament/configs/size.dart';
import 'package:products_managament/view/screen/Rootscreen/root_screen.dart';
import 'package:sizer/sizer.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var languge = 'ar';
  bool isEnglish = true;

  bool isDarkModeEnabled = false;

  //ValueNotifier<String> buttonClickedTimes = ValueNotifier('ar');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            splashRadius: 20,
            icon: Icon(
              Icons.arrow_back,
              size: 20,
              color: Theme.of(context).dividerColor,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            tr('Settings'),
            style: TextStyle(
                color: Theme.of(context).dividerColor, fontSize: 12.sp),
          ),
        ),
        body: SingleChildScrollView(
            child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: deffultpadding / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: deffultpadding),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Icon(Icons.language),
                              const SizedBox(
                                width: deffultpadding * 2,
                              ),
                              Text('language'.tr()),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: DropdownButtonFormField<Locale>(
                            alignment: Alignment.centerRight,
                            decoration: const InputDecoration(
                              fillColor: Colors.transparent,
                              filled: true,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            // value: context.locale,
                            onChanged: (newLanguage) async {
                              context.setLocale(newLanguage!);
                            },
                            items: const [
                              DropdownMenuItem(
                                child: Text('Arabic'),
                                value: Locale('ar'),
                              ),
                              DropdownMenuItem(
                                child: Text('English'),
                                value: Locale('en'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: deffultpadding,
                    ),
                    ListTile(
                      title: Text(
                        tr('mode'),
                      ),
                      leading: const Icon(
                        Icons.brightness_2,
                      ),
                      // trailing: const DarkModeSwitch()
                    ),
                    const SizedBox(
                      height: deffultpadding,
                    ),
                    InkWell(
                      onTap: () {
                        showLogOutDialog(context);
                      },
                      child: ListTile(
                        title: Text(
                          tr('Logout'),
                        ),
                        leading: const Icon(
                          Icons.logout_outlined,
                        ),
                        // trailing: const DarkModeSwitch()
                      ),
                    ),
                    const SizedBox(
                      height: deffultpadding,
                    ),
                  ],
                ))));
  }
}
/**
 * 
 
class DarkModeSwitch extends StatelessWidget {
  const DarkModeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      activeColor: Theme.of(context).primaryColor,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      
      },
    );
  }
}
*/