import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef OnCodeEnteredCompletion = void Function(String value);
typedef OnCodeChanged = void Function(String value);

class OtpTextField extends StatefulWidget {
  final int numberOfFields;
  final double fieldWidth;
  final double borderWidth;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final Color disabledBorderColor;
  final Color borderColor;
  final Color cursorColor;
  final EdgeInsetsGeometry margin;
  final TextInputType keyboardType;
  final TextStyle textStyle;
  final List<TextStyle> styles;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final OnCodeEnteredCompletion onSubmit;
  final OnCodeEnteredCompletion onCodeChanged;
  final bool obscureText;
  final bool showFieldAsBox;
  final bool enabled;
  final bool filled;
  final bool autoFocus;
  final bool hasCustomInputDecoration;
  final Color fillColor;
  final BorderRadius borderRadius;
  final InputDecoration decoration;

  OtpTextField({
    this.numberOfFields = 4,
    this.fieldWidth = 40.0,
    this.margin = const EdgeInsets.only(right: 8.0),
    this.textStyle,
    this.styles = const [],
    this.keyboardType = TextInputType.number,
    this.borderWidth = 2.0,
    this.cursorColor,
    this.disabledBorderColor = const Color(0xFFE7E7E7),
    this.enabledBorderColor = const Color(0xFFE7E7E7),
    this.borderColor = const Color(0xFFE7E7E7),
    this.focusedBorderColor = const Color(0xFF4F44FF),
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.onSubmit,
    this.obscureText = false,
    this.showFieldAsBox = false,
    this.enabled = true,
    this.autoFocus = false,
    this.hasCustomInputDecoration = false,
    this.filled = false,
    this.fillColor = const Color(0xFFFFFFFF),
    this.decoration,
    this.onCodeChanged,
    this.borderRadius = const BorderRadius.all(Radius.circular(4.0)),
  })  : assert(numberOfFields > 0),
        assert(styles != null
            ? styles.length == numberOfFields
            : styles.length == 0);

  @override
  _OtpTextFieldState createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  List<String> _verificationCode;
  List<FocusNode> _focusNodes;
  List<TextEditingController> _textControllers;

  @override
  void initState() {
    super.initState();
    _verificationCode = List<String>(widget.numberOfFields);
    _focusNodes = List<FocusNode>(widget.numberOfFields);
    _textControllers = List<TextEditingController>(widget.numberOfFields);
  }

  @override
  void dispose() {
    super.dispose();
    _textControllers
        .forEach((TextEditingController controller) => controller.dispose());
  }

  @override
  Widget build(BuildContext context) {
    return generateTextFields(context);
  }

  Widget _buildTextField({
    @required BuildContext context,
    @required int index,
    TextStyle style,
  }) {
    return Container(
      width: widget.fieldWidth,
      margin: widget.margin,
      child: TextField(
        keyboardType: widget.keyboardType,
        textAlign: TextAlign.center,
        maxLength: 1,
        style: style ?? widget.textStyle,
        autofocus: widget.autoFocus,
        cursorColor: widget.cursorColor,
        controller: _textControllers[index],
        focusNode: _focusNodes[index],
        enabled: widget.enabled,
        decoration: widget.hasCustomInputDecoration
            ? widget.decoration
            : InputDecoration(
                counterText: "",
                filled: widget.filled,
                fillColor: widget.fillColor,
                focusedBorder: widget.showFieldAsBox
                    ? outlineBorder(widget.focusedBorderColor)
                    : underlineInputBorder(widget.focusedBorderColor),
                enabledBorder: widget.showFieldAsBox
                    ? outlineBorder(widget.enabledBorderColor)
                    : underlineInputBorder(widget.enabledBorderColor),
                disabledBorder: widget.showFieldAsBox
                    ? outlineBorder(widget.disabledBorderColor)
                    : underlineInputBorder(widget.disabledBorderColor),
                border: widget.showFieldAsBox
                    ? outlineBorder(widget.borderColor)
                    : underlineInputBorder(widget.borderColor),
              ),
        obscureText: widget.obscureText,
        onChanged: (String value) {
          //save entered value in a list
          _verificationCode[index] = value;
          onCodeChanged(verificationCode: value);
          changeFocusToNextNodeWhenValueIsEntered(
            value: value,
            indexOfTextField: index,
          );
          onSubmit(verificationCode: _verificationCode);
        },
      ),
    );
  }

  OutlineInputBorder outlineBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: widget.borderWidth,
        color: color,
      ),
      borderRadius: widget.borderRadius,
    );
  }

  UnderlineInputBorder underlineInputBorder(Color color) {
    return UnderlineInputBorder(
      borderRadius: widget.borderRadius,
      borderSide: BorderSide(
        color: color,
        width: widget.borderWidth,
      ),
    );
  }

  Widget generateTextFields(BuildContext context) {
    List<Widget> textFields = List.generate(widget.numberOfFields, (int i) {
      addFocusNodeToEachTextField(index: i);
      addTextEditingControllerToEachTextField(index: i);

      if (widget.styles.length > 0) {
        return _buildTextField(
            context: context, index: i, style: widget.styles[i]);
      }
      return _buildTextField(context: context, index: i);
    });

    return Row(
      mainAxisAlignment: widget.mainAxisAlignment,
      crossAxisAlignment: widget.crossAxisAlignment,
      children: textFields,
    );
  }

  void addFocusNodeToEachTextField({@required int index}) {
    if (_focusNodes[index] == null) {
      _focusNodes[index] = FocusNode();
    }
  }

  void addTextEditingControllerToEachTextField({@required int index}) {
    if (_textControllers[index] == null) {
      _textControllers[index] = TextEditingController();
    }
  }

  void changeFocusToNextNodeWhenValueIsEntered({
    @required String value,
    @required int indexOfTextField,
  }) {
    //only change focus to the next textField if the value entered has a length greater than one
    if (value.length > 0) {
      //if the textField in focus is not the last textField,
      // change focus to the next textField
      if (indexOfTextField + 1 != widget.numberOfFields) {
        //change focus to the next textField
        FocusScope.of(context).requestFocus(_focusNodes[indexOfTextField + 1]);
      } else {
        //if the textField in focus is the last textField, unFocus after text changed
        _focusNodes[indexOfTextField].unfocus();
      }
    }
  }

  void onSubmit({@required List<String> verificationCode}) {
    if (verificationCode.every((String code) => code != null && code != '')) {
      widget.onSubmit(verificationCode.join());
    }
  }

  void onCodeChanged({@required String verificationCode}) {
    widget.onCodeChanged(verificationCode);
  }
}
