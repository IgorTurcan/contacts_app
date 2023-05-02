import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:contacts_app/presentation/core/app_texts.dart';
import 'package:contacts_app/presentation/cubits/contact_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/app_colors.dart';
import '../contact_details_page/address_info_field.dart';
import 'address_edit_field.dart';
import 'edit_field.dart';

typedef OnDone = void Function(
  BuildContext context, {
  required int? id,
  required String phoneNumber,
  required String firstName,
  required String? lastName,
  required List<AddressEntity> addresses,
});
typedef OnBack = void Function(BuildContext context);

class ContactEditPage extends StatelessWidget {
  final String title;
  final OnBack onBack;
  final OnDone onDone;

  const ContactEditPage({required this.title, required this.onDone, required this.onBack});

  @override
  Widget build(BuildContext context) {
    var contact = BlocProvider.of<ContactDetailsCubit>(context).state;

    final TextEditingController phoneNumberController = TextEditingController(text: contact?.phoneNumber);
    final TextEditingController firstNameController = TextEditingController(text: contact?.firstName);
    final TextEditingController lastNameController = TextEditingController(text: contact?.lastName);

    return WillPopScope(
      onWillPop: () async {
        onBack(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => onBack(context),
            child: Icon(Icons.arrow_back_sharp),
          ),
          title: Text(title),
          backgroundColor: AppColors.green,
        ),
        body: BlocBuilder<ContactDetailsCubit, ContactEntity?>(
          builder: (_, contact) {
            return ListView(
              padding: EdgeInsets.only(bottom: 30),
              children: [
                EditField(controller: firstNameController, label: AppTexts.firstName),
                EditField(controller: lastNameController, label: AppTexts.lastName),
                EditField(controller: phoneNumberController, label: AppTexts.phoneNumber),
                ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: contact?.addresses.length,
                  itemBuilder: (_, index) => AddressInfoField(address: contact?.addresses[index]),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppTexts.addNewAddress),
                    SizedBox(
                      height: 40,
                      child: FloatingActionButton(
                        onPressed: () => _showDialog(context),
                        child: const Icon(Icons.add),
                        backgroundColor: AppColors.green,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            var contactDetailsCubit = BlocProvider.of<ContactDetailsCubit>(context);
            onDone(
              context,
              id: contactDetailsCubit.state?.id,
              firstName: firstNameController.text,
              lastName: lastNameController.text,
              phoneNumber: phoneNumberController.text,
              addresses: contactDetailsCubit.state?.addresses ?? [],
            );
          },
          child: const Icon(Icons.check),
          backgroundColor: AppColors.green,
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Container(
          margin: EdgeInsets.symmetric(
            vertical: 0.3 * MediaQuery.of(context).size.height,
            horizontal: 0.05 * MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
          ),
        );
      },
    );
  }
}
