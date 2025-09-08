import 'package:flutter/material.dart';

import 'curved_edges.dart';

class CCurvedEdgeWidget extends StatelessWidget {
  const CCurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: CustomCurvedEdges(), child: child);
  }
}
