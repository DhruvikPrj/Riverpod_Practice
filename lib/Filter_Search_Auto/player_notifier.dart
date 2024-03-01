import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'player_notifier.g.dart';

@Riverpod(keepAlive: true)
class PlayerNotifier extends _$PlayerNotifier {
  final List<Map<String, dynamic>> allPlayers = [
    {'name': 'Sachin Tendulkar', 'country': 'India'},
    {'name': 'Virat Kohli', 'country': 'India'},
    {'name': 'Ricky Ponting', 'country': 'Australia'},
    {'name': 'Kane Williamson', 'country': 'New Zealand'},
    {'name': 'AB de Villiers', 'country': 'South Africa'},
    {'name': 'Joe Root', 'country': 'England'},
    {'name': 'Shakib Al Hasan', 'country': 'Bangladesh'},
    {'name': 'Babar Azam', 'country': 'Pakistan'},
    {'name': 'Steve Smith', 'country': 'Australia'},
    {'name': 'Ross Taylor', 'country': 'New Zealand'},
    {'name': 'Kumar Sangakkara', 'country': 'Sri Lanka'},
    {'name': 'Kagiso Rabada', 'country': 'South Africa'},
    {'name': 'Rohit Sharma', 'country': 'India'},
    {'name': 'Pat Cummins', 'country': 'Australia'},
    {'name': 'Quinton de Kock', 'country': 'South Africa'},
    {'name': 'Kusal Perera', 'country': 'Sri Lanka'},
    {'name': 'Jason Holder', 'country': 'West Indies'},
    {'name': 'Tamim Iqbal', 'country': 'Bangladesh'},
    {'name': 'Kane Richardson', 'country': 'Australia'},
    {'name': 'Liton Das', 'country': 'Bangladesh'},
  ];

  @override
  build() {
    return allPlayers;
  }

  filterName(String playerName) {
    List<Map<String, dynamic>> results = [];

    if (playerName.isEmpty) {
      results = allPlayers;
    } else {
      // results = state!

      //     //error occured , need to fix.
      //     .where((element) => element['name']
      //         .toString()
      //         .toLowerCase()
      //         .contains(playerName.toLowerCase()))
      //     .toList();
    }
    state = results;
  }
}
