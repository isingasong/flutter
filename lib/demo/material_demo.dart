import 'package:flutter/material.dart';
import 'package:flutter_app2/demo/alert_dialog_demo.dart';
import 'package:flutter_app2/demo/bottom_sheet_demo.dart';
import 'package:flutter_app2/demo/button_demo.dart';
import 'package:flutter_app2/demo/card.dart';
import 'package:flutter_app2/demo/checkbox_demo.dart';
import 'package:flutter_app2/demo/chip_demo.dart';
import 'package:flutter_app2/demo/data_table_demo.dart';
import 'package:flutter_app2/demo/date_time_demo.dart';
import 'package:flutter_app2/demo/expansion_panel_demo.dart';
import 'package:flutter_app2/demo/flatingActionButton_demo.dart';
import 'package:flutter_app2/demo/form_demo.dart';
import 'package:flutter_app2/demo/paginated_data_table_demo.dart';
import 'package:flutter_app2/demo/radio_demo.dart';
import 'package:flutter_app2/demo/simple_dialog_demo.dart';
import 'package:flutter_app2/demo/slider_demo.dart';
import 'package:flutter_app2/demo/snack_bar_demo.dart';
import 'package:flutter_app2/demo/stepper_demo.dart';
import 'package:flutter_app2/demo/switch_demo.dart';
import 'package:flutter_app2/demo/widget_demo.dart';

class MaterialDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
              title: 'FloatingActionButton', page: FlatingActionButtonDemo()),
          ListItem(title: 'ButtonDemo', page: ButtonDemo()),
          ListItem(title: 'PopupButttonDemo', page: WidgetDemo()),
          ListItem(title: 'FormDemo', page: ForeDemo()),
          ListItem(title: 'CheckBoxDemo', page: CheckBoxDemo()),
          ListItem(title: 'RadioDemo', page: RadioDemo()),
          ListItem(title: 'SwitchDemo', page: SwitchDemo()),
          ListItem(title: 'SliderDemo', page: SliderDemo()),
          ListItem(title: 'DateTimeDemo', page: DateTimeDemo()),
          ListItem(title: 'SimpleDialogDemo', page: SimpleDialogDemo()),
          ListItem(title: 'AlertDialogDemo', page: AlertDialogDemo()),
          ListItem(title: 'BottomSheetDemo', page: BottomSheetDemo()),
          ListItem(title: 'SnackBarDemo', page: SnackBarDemo()),
          ListItem(title: 'ExpansionPanelDemo', page: ExpansionPanelDemo()),
          ListItem(title: 'ChipDemo', page: ChipDemo()),
          ListItem(title: 'DataTableDemo', page: DataTableDemo()),
          ListItem(title: 'PaginatedDataTableDemo', page: PaginatedDataTableDemo()),
          ListItem(title: 'CardDemo', page: CardDemo()),
          ListItem(title: 'StepperDemo', page: StepperDemo()),

        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
