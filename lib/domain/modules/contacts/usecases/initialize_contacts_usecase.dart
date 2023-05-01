import 'package:contacts_app/domain/core/failure.dart';
import 'package:contacts_app/domain/modules/contacts/repository/contacts_repository.dart';
import 'package:dartz/dartz.dart';

class InitializeContactsUsecase {
  final ContactsRepository repository;

  InitializeContactsUsecase({required this.repository});

  Future<Either<Failure, void>> call() async {
    var response = await repository.getContactsFromJSON();
    return response.fold(
      (l) => Left(l),
      (r) => repository.addContacts(r),
    );
  }
}
