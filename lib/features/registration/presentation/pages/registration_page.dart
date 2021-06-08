import 'package:find_skill/features/onboarding/presentation/widgets/app_bar.dart';
import 'package:find_skill/features/registration/presentation/provider/registration_form_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final GlobalKey<FormState> _addressFormKey = GlobalKey<FormState>();

  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FindSkillAppBar(),
      body: SafeArea(
        child: Form(
          key: _addressFormKey,
          child: Column(
            children: [
              SizedBox(height: 4.h), //24
              Text(
                "Registration",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 2.h),
                child: TextFormField(
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Mobile Number',
                  ),
                  autocorrect: false,
                  onChanged: (number) => context
                      .read(registrationFormProvider)
                      .setMobileNo(number: int.parse(number)),
                  validator: (value) {
                    value = value.toString();
                    if (value.length != 10 ||
                        value.contains(RegExp(r"\[A-Z]|[a-z]"))) {
                      return "Invalid Phone Number";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 2.h),
                child: TextFormField(
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                  obscureText: true,
                  autocorrect: false,
                  onChanged: (password) => context
                      .read(registrationFormProvider)
                      .setPassword(password: password),
                  validator: (value) {
                    value = value.toString();
                    if (value.length <= 8) {
                      return "Password too short";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 2.h),
                child: TextFormField(
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Name',
                  ),
                  obscureText: true,
                  autocorrect: false,
                  onChanged: (name) => context
                      .read(registrationFormProvider)
                      .setName(name: name),
                  validator: (value) {
                    value = value.toString();
                    if (value.isNotEmpty) {
                      return "Please enter your full name";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 2.h),
                child: TextFormField(
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'City Name',
                  ),
                  obscureText: true,
                  autocorrect: false,
                  onChanged: (cityName) => context
                      .read(registrationFormProvider)
                      .setCityName(cityName: cityName),
                  validator: (value) {
                    value = value.toString();
                    if (value.isNotEmpty) {
                      return "Please enter your city name";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}
