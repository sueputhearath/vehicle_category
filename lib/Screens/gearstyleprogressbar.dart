import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

/// Gear style progress bar

class GearStyleProgressbar extends StatefulWidget {
  const GearStyleProgressbar({super.key});

  // ignore: prefer_const_constructors_in_immutables
  // GearStyleProgressbar() : super(key: key);

  @override
  _GearStyleProgressbarState createState() => _GearStyleProgressbarState();
}

class _GearStyleProgressbarState extends State<GearStyleProgressbar>
    with TickerProviderStateMixin {
  late Animation<double> linearAnimation;
  late AnimationController linearAnimationController;
  double animationValue = 0;
  @override
  void initState() {
    super.initState();

    /// Linear animation
    linearAnimationController = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);

    linearAnimation =
    CurvedAnimation(parent: linearAnimationController, curve: Curves.linear)
      ..addListener(() {
        setState(() {
          animationValue = linearAnimation.value * 360;
        });
      });
    linearAnimationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(axes: <RadialAxis>[
      RadialAxis(
        minimum: 0,
        interval: 1,
        maximum: 10,
        showLabels: false,
        showTicks: true,
        showAxisLine: true,
        showLastLabel: false,
        ticksPosition: ElementsPosition.outside,
        offsetUnit: GaugeSizeUnit.factor,
        minorTicksPerInterval: 0,
        startAngle: 360 - animationValue,
        endAngle: (360 - animationValue) + 359.9,
        centerX: 0.36,
        centerY: 0.36,
        isInversed: false,
        radiusFactor: 0.35,
        majorTickStyle: const MajorTickStyle(
          length: 0.2,
          thickness: 8,
          color: Colors.cyanAccent,
          lengthUnit: GaugeSizeUnit.factor,
        ),
        axisLineStyle: const AxisLineStyle(
          thickness: 0.3,
          color: Colors.cyanAccent,
          thicknessUnit: GaugeSizeUnit.factor,
        ),
      ),
      RadialAxis(
        minimum: 0,
        interval: 1,
        maximum: 10,
        centerX: 0.6,
        centerY: 0.6,
        showLabels: false,
        showTicks: true,
        showAxisLine: true,
        showLastLabel: false,
        ticksPosition: ElementsPosition.outside,
        offsetUnit: GaugeSizeUnit.factor,
        minorTicksPerInterval: 0,
        startAngle: animationValue,
        endAngle: animationValue + 359.9,
        radiusFactor: 0.35,
        majorTickStyle:const  MajorTickStyle(
          length: 0.2,
          thickness: 8,
          color: Colors.tealAccent,
          lengthUnit: GaugeSizeUnit.factor,
        ),
        axisLineStyle:const  AxisLineStyle(
          thickness: 0.3,
          color: Colors.tealAccent,
          thicknessUnit: GaugeSizeUnit.factor,
        ),
      ),
    ]);
  }

  @override
  void dispose() {
    linearAnimationController.dispose();
    super.dispose();
  }
}