import 'package:flutter/material.dart';

import '../../../../utils/constant/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class CPrimaryHeaderContainer extends StatelessWidget {
  const CPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CCurvedEdgeWidget(
      child: Container(
        color: CColors.primary,
        child: SizedBox(
          height: 350,
          child: Stack(
            children: [
              Positioned(
                top: -50,
                right: -150,
                child: CCircularContainer(
                  height: 300,
                  width: 300,
                  color: CColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 50,
                right: -150,
                child: CCircularContainer(
                  height: 300,
                  width: 300,
                  color: CColors.white.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
