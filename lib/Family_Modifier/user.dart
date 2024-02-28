// while need to pass Multiple  values :
// use Equitable dependancies.
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name;
  final String address;
  const User(this.name, this.address);

  @override
  // TODO: implement props
  List<Object?> get props => [name, address];
}
