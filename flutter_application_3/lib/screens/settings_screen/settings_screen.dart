import 'package:flutter/material.dart';
import 'package:flutter_application_3/Theme/app_colors.dart';
import 'package:flutter_application_3/screens/settings_screen/widgets/account_mode_widget.dart';

class SettingsScreen extends StatelessWidget {
  static List<ContainerWidget> containerWidgets = [
    ContainerWidget(
      rowWidgets: const [
        RowWidget(icon: Icons.account_circle, text: 'Режим аккаунта'),
        RowWidget(icon: Icons.type_specimen_sharp, text: 'Something'),
        RowWidget(icon: Icons.other_houses, text: 'Other'),
      ],
    ),
    ContainerWidget(
      rowWidgets: const [
        RowWidget(icon: Icons.phone, text: 'Phone'),
        RowWidget(icon: Icons.message, text: 'Message'),
        RowWidget(icon: Icons.chat, text: 'Chat'),
        RowWidget(icon: Icons.devices, text: 'Devices'),
        RowWidget(icon: Icons.language, text: 'Language'),
      ],
    ),
    ContainerWidget(
      rowWidgets: const [
        RowWidget(icon: Icons.holiday_village, text: 'Holliday'),
        RowWidget(icon: Icons.camera, text: 'Camera'),
      ],
    ),
    ContainerWidget(
      rowWidgets: const [
        RowWidget(icon: Icons.help, text: 'Help'),
      ],
    ),
  ];
  const SettingsScreen({super.key});

  get widgetList => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: ListView(
        children: 
          containerWidgets,
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  List<RowWidget> rowWidgets;
  ContainerWidget({super.key, required this.rowWidgets});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.mainAppColor,
      ),
      child: Column(
        children: [
          for (int i = 0; i < rowWidgets.length; i++)
            Column(
              children: [
                rowWidgets[i],
                if (i < rowWidgets.length - 1) const Divider(
                  indent: 48,
                ), 
              ],
            ),
        ],
      ),
    );
  }
}

class RowWidget extends StatefulWidget {
  final IconData icon;
  final String text;
  const RowWidget({super.key, required this.icon, required this.text});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  void newScreen() {
    final navigator = Navigator.of(context);
      navigator.push(
        MaterialPageRoute(builder: (context) => const AccountModeWidget()));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: newScreen,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(children: [
          Icon(
            widget.icon,
            color: AppColors.mainText,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            widget.text,
            style: const TextStyle(color: AppColors.mainText),
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right,
            color: AppColors.mainText,
          ),
        ]),
      ),
    );
  }
}
