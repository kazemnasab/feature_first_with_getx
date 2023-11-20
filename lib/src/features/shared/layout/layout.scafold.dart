import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/custom.loading.dart';
import '../widgets/custom.saving.dart';

class LayoutScafold extends StatelessWidget {
  bool loading = false;
  bool saving = false;
  Widget? appBar;
  Widget? body;
  Widget? bottomNavigationBar;
  Widget? floatingActionButton;
  FloatingActionButtonLocation? floatingActionButtonLocation;
  LayoutScafold(
      {this.loading = false,
      this.saving = false,
      this.appBar,
      this.body,
      this.bottomNavigationBar,
      this.floatingActionButton,
      this.floatingActionButtonLocation});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Scaffold(
              backgroundColor: Colors.transparent,
              appBar: this.appBar != null
                  ? this.appBar! as PreferredSizeWidget
                  : PreferredSize(child: SizedBox(), preferredSize: Size.zero),
              body: this.body != null
                  ? this.body!
                  : PreferredSize(child: SizedBox(), preferredSize: Size.zero),
              bottomNavigationBar: this.bottomNavigationBar != null
                  ? this.bottomNavigationBar!
                  : PreferredSize(child: SizedBox(), preferredSize: Size.zero),
              floatingActionButton: this.floatingActionButton != null
                  ? this.floatingActionButton!
                  : PreferredSize(child: SizedBox(), preferredSize: Size.zero),
              floatingActionButtonLocation:
                  this.floatingActionButtonLocation != null
                      ? this.floatingActionButtonLocation
                      : FloatingActionButtonLocation.endFloat),
          (loading! ? CustomLoading() : SizedBox()),
          (saving! ? CustomSaving() : SizedBox()),
        ],
      ),
    );
  }
}
