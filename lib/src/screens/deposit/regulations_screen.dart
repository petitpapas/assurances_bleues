import 'package:flutter/material.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';
import '../base/rounded_icon_button.dart';

class RegulationScreen extends StatelessWidget {
  const RegulationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.blueColor,
        elevation: 0,
        leading: RoundeIconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: ColorResources.blueColor,
            size: 17,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            "Regulations for Master/ Visa/ JCB",
            overflow: TextOverflow.ellipsis,
            style: defaultSemiBold.copyWith(
              color: ColorResources.whiteColor,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              Center(
                child: Text(
                  "Regulations for Master/ Visa/ JCB",
                  textAlign: TextAlign.center,
                  style: defaultMedium.copyWith(
                    fontSize: Dimensions.FONT_SIZE_DEFAULT + 3,
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              SizedBox(
                width: Dimensions.getScreenSize(context).width * .8,
                child: Text(
                  "When linking your card successfully with your Npay account, your card account will be temporarily held for \$ 1, this amount will be refunded after 7 days depending on the Bank you use. \n\n\nWhen checking in a bank account or a statement, another quarter may find that the \$ 1 amount is being held. This is for the purpose of authentication only, ensuring that your card is valid and sufficient for future payment transactions. Npay makes sure there is no payment transaction on your card.",
                  style: defaultRegular.copyWith(
                    fontSize: Dimensions.FONT_SIZE_SMALL + 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
