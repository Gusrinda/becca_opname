import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum FormTextInputValidation { empty }

class FormTextInput extends FormzInput<String, FormTextInputValidation> {
  FormTextInput.pure([TextEditingController? textEditingController])
      : textEditingController =
            textEditingController ?? TextEditingController(),
        super.pure('');

  FormTextInput.dirty({
    String value = '',
    TextEditingController? textEditingController,
  })  : textEditingController =
            textEditingController ?? TextEditingController(text: value),
        super.dirty(value);

  final TextEditingController textEditingController;

  String? get valueIfNotEmpty {
    if (value.isNotEmpty) return value;
    return null;
  }

  FormTextInput toDirty({String? value, bool fromTextController = false}) {
    return FormTextInput.dirty(
      textEditingController: textEditingController,
      value: value ??
          (fromTextController ? textEditingController.text : this.value),
    );
  }

  @override
  FormTextInputValidation? validator(String? value) {
    return value?.isNotEmpty == true ? null : FormTextInputValidation.empty;
  }
}
