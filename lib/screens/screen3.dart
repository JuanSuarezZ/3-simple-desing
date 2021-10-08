import 'package:disenio1/widgets/background.dart';
import 'package:disenio1/widgets/card_table.dart';

import 'package:disenio1/widgets/page_title.dart';

import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
            Background(),
           _HomeBody(),

        ],
      ),
      // bottomNavigationBar: CustomNavigationBar(     ),
    );
  }

}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          PageTitle(),
          CardTable(),

        ],
      ),
    );
  }


}