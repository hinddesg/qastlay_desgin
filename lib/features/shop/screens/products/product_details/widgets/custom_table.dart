import 'package:flutter/material.dart';

import '../../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/functions/helper_function.dart';

class DataTableWidget extends StatelessWidget {
  final List<String> columnHeaders;
  final List<List<String>> rowData;

  const DataTableWidget({
    super.key,
    required this.columnHeaders,
    required this.rowData,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return RoundedContainer(
    backgroundColor: dark ? CustomColors.dark : CustomColors.white,
    showBorder: true,
    child: SizedBox(
    width: double.infinity,
      child: DataTable(
        columns: columnHeaders
            .map((header) => DataColumn(label: Text(header,style: Theme.of(context).textTheme.headlineSmall,)))
            .toList(),
        rows: rowData.map((dataRow) =>
            DataRow(cells: dataRow.map((cell) => DataCell(Text(cell,style: Theme.of(context).textTheme.bodyMedium))).toList(),
        ))
            .toList(),
      ),
    ));
  }
}