class InformationDisplaysModel {
  String name;
  String details;
  int numberOfElements;

  InformationDisplaysModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<InformationDisplaysModel> fetchAll() => [
        InformationDisplaysModel(
          name: 'Card',
          details: 'A Material Design card. A card has slightly rounded corners and a shadow',
          numberOfElements: 0,
        ),
        InformationDisplaysModel(
          name: 'Chip',
          details: 'A Material Design chip. Chips represent complex entities in small blocks, such as a contact.',
          numberOfElements: 0,
        ),
        InformationDisplaysModel(
          name: 'CircularProgressIndicator',
          details: 'A material design circular progress indicator, which spins to indicate that the application is busy.',
          numberOfElements: 0,
        ),
        InformationDisplaysModel(
          name: 'DataTable',
          details:
              'Data tables display sets of raw data. They usually appear in desktop enterprise products. The DataTable widget implements this component.',
          numberOfElements: 0,
        ),
        InformationDisplaysModel(
          name: 'GridView',
          details:
              'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
          numberOfElements: 0,
        ),
        InformationDisplaysModel(
          name: 'Icon',
          details: 'A Material Design icon.',
          numberOfElements: 0,
        ),
        InformationDisplaysModel(
          name: 'Image',
          details: 'A widget that displays an image.',
          numberOfElements: 0,
        ),
        InformationDisplaysModel(
          name: 'LinearProgressIndicator',
          details: 'A material design linear progress indicator, also known as a progress bar.',
          numberOfElements: 0,
        ),
        InformationDisplaysModel(
          name: 'Tooltip',
          details:
              'Tooltips provide text labels that help explain the function of a button or other user interface action. Wrap the button in a Tooltip widget to...',
          numberOfElements: 0,
        ),
      ];
}
