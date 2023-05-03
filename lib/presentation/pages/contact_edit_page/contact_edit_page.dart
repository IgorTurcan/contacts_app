import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:contacts_app/presentation/core/app_texts.dart';
import 'package:contacts_app/presentation/cubits/contact_details_cubit.dart';
import 'package:contacts_app/presentation/pages/contact_edit_page/view_models/address_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/app_colors.dart';
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

class ContactEditPage extends StatefulWidget {
  final String title;
  final OnBack onBack;
  final OnDone onDone;

  const ContactEditPage({required this.title, required this.onDone, required this.onBack});

  @override
  State<ContactEditPage> createState() => _ContactEditPageState();
}

class _ContactEditPageState extends State<ContactEditPage> {
  late final TextEditingController _phoneNumberController;
  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;
  final List<AddressController> _addressControllers = [];

  @override
  void initState() {
    var contact = BlocProvider.of<ContactDetailsCubit>(context).state;
    _initializeAddressControllers();

    _phoneNumberController = TextEditingController(text: contact?.phoneNumber);
    _firstNameController = TextEditingController(text: contact?.firstName);
    _lastNameController = TextEditingController(text: contact?.lastName);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.onBack(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => widget.onBack(context),
            child: Icon(Icons.arrow_back_sharp),
          ),
          title: Text(widget.title),
          backgroundColor: AppColors.green,
        ),
        body: BlocBuilder<ContactDetailsCubit, ContactEntity?>(
          builder: (_, contact) {
            return ListView(
              children: [
                EditField(controller: _firstNameController, label: AppTexts.firstName),
                EditField(controller: _lastNameController, label: AppTexts.lastName),
                EditField(controller: _phoneNumberController, label: AppTexts.phoneNumber),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _addressControllers.length,
                  itemBuilder: (_, index) => AddressEditField(addressController: _addressControllers[index]),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: _addEmptyAddress,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppTexts.addNewAddress),
                      SizedBox(width: 10),
                      SizedBox(
                        height: 30,
                        child: FloatingActionButton(
                          onPressed: _addEmptyAddress,
                          backgroundColor: AppColors.green,
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            var contactDetailsCubit = BlocProvider.of<ContactDetailsCubit>(context);
            var addresses = _addressControllers.where((el) => el.isNotEmpty).map((el) => el.address).toList();
            widget.onDone(
              context,
              id: contactDetailsCubit.state?.id,
              firstName: _firstNameController.text,
              lastName: _lastNameController.text,
              phoneNumber: _phoneNumberController.text,
              addresses: addresses,
            );
          },
          child: const Icon(Icons.check),
          backgroundColor: AppColors.green,
        ),
      ),
    );
  }

  void _initializeAddressControllers() {
    var contact = BlocProvider.of<ContactDetailsCubit>(context).state;
    if (contact?.addresses == null || contact!.addresses.isEmpty) {
      _addressControllers.add(AddressController(null));
    } else {
      for (var address in contact.addresses) {
        _addressControllers.add(AddressController(address));
      }
    }
    setState(() {});
  }

  void _addEmptyAddress() {
    _addressControllers.add(AddressController(null));
    setState(() {});
  }
}
