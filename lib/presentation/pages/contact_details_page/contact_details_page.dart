import 'package:contacts_app/domain/modules/contacts/entities/index/index.dart';
import 'package:contacts_app/presentation/base/app_routes.dart';
import 'package:contacts_app/presentation/base/app_texts.dart';
import 'package:contacts_app/presentation/cubits/contact_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

typedef OnDone = void Function(
  BuildContext context, {
  required int? contactID,
  required String phoneNumber,
  required String firstName,
  required String? lastName,
  required String? streetAddress1,
  required String? streetAddress2,
  required String? city,
  required String? state,
  required String? zipCode,
});

class ContactDetailsPage extends StatefulWidget {
  final String title;
  final OnDone onDone;

  const ContactDetailsPage({required this.title, required this.onDone});

  @override
  State<ContactDetailsPage> createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {
  late final int? id;
  late final TextEditingController _phoneNumberTextEditingController;
  late final TextEditingController _firstNameTextEditingController;
  late final TextEditingController _lastNameTextEditingController;
  late final TextEditingController _streetAddress1TextEditingController;
  late final TextEditingController _streetAddress2TextEditingController;
  late final TextEditingController _cityTextEditingController;
  late final TextEditingController _stateTextEditingController;
  late final TextEditingController _zipCodeTextEditingController;

  @override
  void initState() {
    var contact = BlocProvider.of<ContactDetailsCubit>(context).state;

    id = contact?.contactID;
    _phoneNumberTextEditingController = TextEditingController(text: contact?.phoneNumber);
    _firstNameTextEditingController = TextEditingController(text: contact?.firstName);
    _lastNameTextEditingController = TextEditingController(text: contact?.lastName);
    _streetAddress1TextEditingController = TextEditingController(text: contact?.streetAddress1);
    _streetAddress2TextEditingController = TextEditingController(text: contact?.streetAddress2);
    _cityTextEditingController = TextEditingController(text: contact?.city);
    _stateTextEditingController = TextEditingController(text: contact?.state);
    _zipCodeTextEditingController = TextEditingController(text: contact?.zipCode);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.go(AppRoutes.contacts.path);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => context.go(AppRoutes.contacts.path),
            child: Icon(Icons.arrow_back_sharp),
          ),
          title: Text(widget.title),
        ),
        body: BlocBuilder<ContactDetailsCubit, ContactEntity?>(
          builder: (_, contact) {
            return ListView(
              children: [
                ContactField(controller: _firstNameTextEditingController, hintText: AppTexts.firstName),
                ContactField(controller: _lastNameTextEditingController, hintText: AppTexts.lastName),
                ContactField(controller: _phoneNumberTextEditingController, hintText: AppTexts.phoneNumber),
                ContactField(controller: _streetAddress1TextEditingController, hintText: AppTexts.streetAddress1),
                ContactField(controller: _streetAddress2TextEditingController, hintText: AppTexts.streetAddress2),
                ContactField(controller: _cityTextEditingController, hintText: AppTexts.city),
                ContactField(controller: _stateTextEditingController, hintText: AppTexts.state),
                ContactField(controller: _zipCodeTextEditingController, hintText: AppTexts.zipCode)
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            widget.onDone(
              context,
              contactID: id,
              phoneNumber: _phoneNumberTextEditingController.text,
              firstName: _firstNameTextEditingController.text,
              lastName: _lastNameTextEditingController.text,
              streetAddress1: _streetAddress1TextEditingController.text,
              streetAddress2: _streetAddress2TextEditingController.text,
              city: _cityTextEditingController.text,
              state: _stateTextEditingController.text,
              zipCode: _zipCodeTextEditingController.text,
            );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(AppTexts.done),
              ),
            );
            context.go(AppRoutes.contacts.path);
          },
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}

class ContactField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const ContactField({required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
        ),
        controller: controller,
      ),
    );
  }
}
