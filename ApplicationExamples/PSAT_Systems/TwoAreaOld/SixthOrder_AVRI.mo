within PSAT_Systems.TwoAreaOld;
model SixthOrder_AVRI "5-bus system with 6th-order machine and AVR Type I"
  extends PSAT_Systems.TwoAreaOld.BaseClasses.BaseOrder6;
  Modelica.Blocks.Sources.Constant vref2(k=1.198705028536746) annotation (
      Placement(transformation(
        extent={{-5,-5},{5,5}},
        rotation=0,
        origin={-149,9})));
  OpenIPSL.Electrical.Controls.PSAT.AVR.AVRTypeI aVRTypeI(
    v0=1.05,
    vrmin=0,
    vrmax=7.57,
    Te=0.4,
    Tr=0.05,
    Ae=0,
    Be=0,
    vref0=1.198705028536746,
    vf0=1.046883400898693)
    annotation (Placement(transformation(extent={{-134,-2},{-118,12}})));
equation
  connect(aVRTypeI.vf, order6.vf) annotation (Line(points={{-117.2,5.14},{-114.6,
          5.14},{-114.6,5},{-112,5}}, color={0,0,127}));
  connect(aVRTypeI.v, order6.v) annotation (Line(points={{-135.92,2.48},{-140,
          2.48},{-140,-14},{-88,-14},{-88,3},{-91,3}}, color={0,0,127}));
  connect(vref2.y, aVRTypeI.vref) annotation (Line(points={{-143.5,9},{-139.75,
          9},{-139.75,8.92},{-135.76,8.92}}, color={0,0,127}));
  annotation (
    Diagram(coordinateSystem(extent={{-160,-80},{160,80}}, preserveAspectRatio=
            false)),
    Icon(coordinateSystem(extent={{-160,-80},{160,80}})),
    experiment(
      StopTime=20,
      __Dymola_fixedstepsize=0.0001,
      __Dymola_Algorithm="Rkfix2"),
    __Dymola_experimentSetupOutput,
    Documentation(info="<html>
<table cellspacing=\"1\" cellpadding=\"1\" border=\"1\">
<tr>
<td><p>Reference</p></td>
<td><p></p></td>
</tr>
<tr>
<td><p>Last update</p></td>
<td>Tin Rabuzin, May 2016</td>
</tr>
<tr>
<td><p>Author</p></td>
<td><p>Yuwa Chompoobutrgool, SmarTS Lab, KTH Royal Institute of Technology</p></td>
</tr>
<tr>
<td><p>Contact</p></td>
<td><p><a href=\"mailto:luigiv@kth.se\">luigiv@kth.se</a></p></td>
</tr>
</table>
</html>"));
end SixthOrder_AVRI;
