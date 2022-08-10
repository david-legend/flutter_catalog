import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';


class CollaboratorItem {
  CollaboratorItem({
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;
}

class CollaboratorListTile extends StatefulWidget {
  CollaboratorListTile({
    required this.title,
    required this.imagePath,
    this.isSelected = false,
  });

  final String title;
  final String imagePath;
  final bool isSelected;

  @override
  _CollaboratorListTileState createState() => _CollaboratorListTileState();
}

class _CollaboratorListTileState extends State<CollaboratorListTile> {
  late bool isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ListTile(
      onTap: () => _onSelect(),
      contentPadding: EdgeInsets.symmetric(vertical: Sizes.PADDING_12),
      leading: ClipRRect(
        borderRadius: BorderRadius.all(
          const Radius.circular(
            Sizes.RADIUS_30,
          ),
        ),
        child: Image.asset(widget.imagePath),
      ),
      title: Text(
        widget.title,
        style: textTheme.titleLarge?.copyWith(color: RoamAppColors.black50),
      ),
      trailing: Container(
        child: Container(
          width: Sizes.WIDTH_24,
          height: Sizes.HEIGHT_24,
          decoration: BoxDecoration(
            color: isSelected ? RoamAppColors.accentColor : RoamAppColors.white,
            borderRadius: BorderRadius.circular(Sizes.RADIUS_30),
            border: isSelected
                ? null
                : Border.all(
              color: RoamAppColors.grey,
            ),
          ),
          child: isSelected
              ? Center(
            child: Icon(
              Icons.done,
              color: RoamAppColors.white,
              size: Sizes.ICON_SIZE_16,
            ),
          )
              : null,
        ),
      ),
    );
  }

  void _onSelect() {
    setState(() {
      isSelected = !isSelected;
    });
  }
}
