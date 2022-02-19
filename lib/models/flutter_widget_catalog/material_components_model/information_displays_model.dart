class InformationDisplaysModel {
  String name;
  String details;
  List<InformationDisplaysModel>? subWidget;

  InformationDisplaysModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<InformationDisplaysModel> fetchAll() => [
        InformationDisplaysModel(
          name: 'Card',
          details: 'A Material Design card. A card has slightly rounded corners and a shadow',
        ),
        InformationDisplaysModel(
          name: 'Chip',
          details: 'A Material Design chip. Chips represent complex entities in small blocks, such as a contact.',
        ),
        InformationDisplaysModel(
          name: 'CircularProgressIndicator',
          details: 'A material design circular progress indicator, which spins to indicate that the application is busy.',
        ),
        InformationDisplaysModel(
          name: 'DataTable',
          details:
              'Data tables display sets of raw data. They usually appear in desktop enterprise products. The DataTable widget implements this component.',
        ),
        InformationDisplaysModel(
          name: 'GridView',
          details:
              'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
        ),
        InformationDisplaysModel(
          name: 'Icon',
          details: 'A Material Design icon.',
        ),
        InformationDisplaysModel(
          name: 'Image',
          details: 'A widget that displays an image.',
        ),
        InformationDisplaysModel(
          name: 'LinearProgressIndicator',
          details: 'A material design linear progress indicator, also known as a progress bar.',
        ),
        InformationDisplaysModel(
          name: 'Tooltip',
          details:
              'Tooltips provide text labels that help explain the function of a button or other user interface action. Wrap the button in a Tooltip widget to...',
        ),
      ];
}
