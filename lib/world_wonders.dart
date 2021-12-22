import 'package:google_maps_flutter/google_maps_flutter.dart';

class WorldWonder {
  final String name;
  final String description;
  final LatLng latLong;

  WorldWonder({
    required this.name,
    required this.description,
    required this.latLong,
  });
}

var worldWondersList = <WorldWonder>[
  WorldWonder(
    name: 'Great Wall of China',
    description:
        'Ancient world wonder that winds for more than 5,500 miles across China, with towers & walkways.',
    latLong: const LatLng(
      40.43216084180758,
      116.57040708522712,
    ),
  ),
  WorldWonder(
    name: 'Taj Mahal',
    description:
        '17th-century, Mughal-style, marble mausoleum with minarets, a mosque & famously symmetrical gardens.',
    latLong: const LatLng(
      27.175335673428222,
      78.04221730035984,
    ),
  ),
  WorldWonder(
    name: 'The Treasury, Petra, Jordan',
    description:
        'Carved out of sandstone rock face, this elaborate, ancient temple is said to have been a mausoleum.',
    latLong: const LatLng(
      30.32237070992996,
      35.451777885059556,
    ),
  ),
  WorldWonder(
    name: 'Christ the Redeemer',
    description:
        'Giant (98-ft.-tall) mountaintop statue of Jesus Christ, accessed by train & offering city views.',
    latLong: const LatLng(
      -22.95178261221184,
      -43.21048183712498,
    ),
  ),
  WorldWonder(
    name: 'Colosseum',
    description:
        'Monumental 3-tiered Roman amphitheater once used for gladiatorial games, with guided tour option.',
    latLong: const LatLng(
      41.89054071576094,
      12.492309342707411,
    ),
  ),
  WorldWonder(
    name: 'Machu Pichu',
    description:
        'Iconic hilltop ruins of a large 15th-century Inca city featuring numerous structures & terraces.',
    latLong: const LatLng(
      -13.162953145699777,
      -72.54490925745016,
    ),
  ),
  WorldWonder(
    name: 'Chichén Itzá',
    description:
        'Archaeological site with excavated ruins of the large Maya city, including an iconic step pyramid.',
    latLong: const LatLng(
      20.684694457253432,
      -88.56777138822471,
    ),
  ),
];
