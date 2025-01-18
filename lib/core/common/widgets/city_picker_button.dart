import 'package:boaad/core/common/controller/city_controller.dart';
import 'package:boaad/core/common/widgets/custom_text_form_field.dart';
import 'package:boaad/core/network/request_state.dart';
import 'package:boaad/core/utils/city_picker_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class CityPickerButton extends StatelessWidget {
  final String title;
  final String value;
  final void Function(Map<String, dynamic>) onChoose;

  const CityPickerButton({
    super.key,
    required this.title,
    required this.value,
    required this.onChoose,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CityController>(
      builder: (cityController) {
        switch (cityController.countriesRequestState) {
          case RequestState.loading:
            return CircularProgressIndicator();
          case RequestState.done:
            return GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CityPickerDialog(
                      title: 'أختر الدولة',
                      searchFieldHint: 'البحث عن دولة',
                      list: cityController.cities,
                      onChoose: onChoose,
                    );
                  },
                );
              },
              child: CustomTextFormField(
                title: title,
                initialValue: value,
                readOnly: true,
                enabled: false,
              ),
            );
          case RequestState.error:
            return Text('حدث خطأ');
        }
      },
    );
  }
}
