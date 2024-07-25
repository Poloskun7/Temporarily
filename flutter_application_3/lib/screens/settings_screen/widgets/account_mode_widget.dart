import 'package:flutter/material.dart';
import 'package:flutter_application_3/Theme/app_colors.dart';
import 'package:flutter_application_3/screens/settings_screen/widgets/tariffs_widget.dart';

class AccountModeWidget extends StatefulWidget {
  const AccountModeWidget({super.key});

  @override
  State<AccountModeWidget> createState() => _AccountModeWidgetState();
}

List<String> options = ['Option 1', 'Option 2'];

class _AccountModeWidgetState extends State<AccountModeWidget> {
  String currentOption = options[0];
  void newScreen() {
    final navigator = Navigator.of(context);
    navigator
        .push(MaterialPageRoute(builder: (context) => const TariffsWidget()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Режим аккаунта'),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.mainAppColor,
            ),
            child: Column(
              children: <Widget>[
                RadioListTile(
                    activeColor: AppColors.mainText,
                    title: const Text(
                      'Клиент',
                      style: TextStyle(color: AppColors.mainText),
                    ),
                    value: options[0],
                    groupValue: currentOption,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    }),
                RadioListTile(
                    activeColor: AppColors.mainText,
                    title: const Text(
                      'Мастер',
                      style: TextStyle(color: AppColors.mainText),
                    ),
                    value: options[1],
                    groupValue: currentOption,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    }),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: currentOption == options[0]
                      ? Colors.grey
                      : AppColors.mainAppColor,
                ),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    if (currentOption == options[1]) {
                      newScreen();
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.money,
                          color: AppColors.mainText,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Тарифы',
                          style: TextStyle(color: AppColors.mainText),
                        ),
                        Spacer(),
                        Icon(
                          Icons.chevron_right,
                          color: AppColors.mainText,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: 
                Text(currentOption == options[0] ?
                    "Выбери режим 'Мастер', если хотите платить деньги бумажные " : ""),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
