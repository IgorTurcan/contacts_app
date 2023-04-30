import 'package:objectbox/objectbox.dart';

@Entity()
class Contact {
  @Id()
  String contactID;
  String? firstName;
  String? lastName;
  String? streetAddress1;
  String? streetAddress2;
  String? city;
  String? state;
  String? zipCode;

  Contact({
    required this.contactID,
    this.firstName,
    this.lastName,
    this.streetAddress1,
    this.streetAddress2,
    this.city,
    this.state,
    this.zipCode,
  }) : assert(firstName != null || lastName != null, 'Contact must have at least on name!');
}
