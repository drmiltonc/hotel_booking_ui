import 'package:flutter/material.dart';
import 'package:hotel_booking_ui/widgets/widgets.dart';
import 'package:intl/intl.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    final locationTextController = TextEditingController();
    final dateFromTextController = TextEditingController();
    final dateToTextController = TextEditingController();

    locationTextController.text = 'Singapore';

    dateFromTextController.text = dateToTextController.text =
        DateFormat('dd MMM yyyy').format(DateTime.now());

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.withAlpha(50))),
        child: Column(children: [
          Row(children: [
            const Icon(Icons.location_on, color: Colors.indigo),
            const SizedBox(width: 20),
            CustomTextField(controller: locationTextController, label: 'Where')
          ]),
          const Divider(),
          Row(children: [
            const Icon(Icons.calendar_month, color: Colors.indigo),
            const SizedBox(width: 20),
            CustomTextField(controller: dateFromTextController, label: 'From'),
            CustomTextField(controller: dateFromTextController, label: 'To')
          ]),
          const SizedBox(height: 10),
          const CustomElevatedButton()
        ]));
  }
}
