within iPSL.NonElectrical.Continuous;
model ImLag_p2 "Lag filter"

  Modelica.Blocks.Interfaces.RealInput p1 annotation(Placement(transformation(extent = {{-41, -10}, {-21, 10}}), iconTransformation(extent = {{-41, -10}, {-30, 6}})));
  Modelica.Blocks.Interfaces.RealOutput n1 annotation(Placement(transformation(extent = {{31, -10}, {51, 10}}), iconTransformation(extent = {{39, -8}, {50, 8}})));
  //  parameter Real T1 "Lead time constant";
  parameter Real K "Block gain";
  parameter Real T "Lag time constant";
  parameter Real nStartValue "Output start value";
  parameter Real n0startValue = nStartValue / K;
  Real n0;
  Real y1;
  Real y2;
initial equation
  y1 = n0startValue;
  y2 = nStartValue;
equation
  //equivalent to n+T2*der(n)=K*p;
  T * der(y1) = (-y1) + p1;
  n0 = y1;
  //equivalent to n+T2*der(n)=K*p;
  T * der(y2) = (-y2) + n0;
  n1 = y2;
  annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics={  Rectangle(extent = {{-40, 40}, {40, -40}}, lineColor = {0, 0, 255}), Text(extent = {{-32, -2}, {34, -18}}, lineColor = {0, 0, 255}, textString = "1 + T s"), Line(points = {{-14, 0}, {18, 0}}, color = {0, 0, 255}, smooth = Smooth.Bezier, thickness = 0.5), Text(extent = {{-34, 20}, {36, 2}}, lineColor = {0, 0, 255}, textString = "K"), Text(extent = {{-18, 16}, {-32, -14}}, lineColor = {0, 0, 255}, textString = "("), Text(extent = {{20, 14}, {32, -14}}, lineColor = {0, 0, 255}, textString = ")"), Text(extent = {{28, 20}, {34, 8}}, lineColor = {0, 0, 255}, textString = "2", textStyle = {TextStyle.Bold})}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics),
    Documentation(info="<html>
<p><br><span style=\"font-family: MS Shell Dlg 2;\">&LT;iPSL: iTesla Power System Library&GT;</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Copyright 2015 RTE (France), AIA (Spain), KTH (Sweden) and DTU (Denmark)</span></p>
<ul>
<li><span style=\"font-family: MS Shell Dlg 2;\">RTE: http://www.rte-france.com/ </span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">AIA: http://www.aia.es/en/energy/</span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">KTH: https://www.kth.se/en</span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">DTU:http://www.dtu.dk/english</span></li>
</ul>
<p><span style=\"font-family: MS Shell Dlg 2;\">The authors can be contacted by email: info at itesla-ipsl dot org</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This package is part of the iTesla Power System Library (&QUOT;iPSL&QUOT;) .</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The iPSL is free software: you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The iPSL is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">You should have received a copy of the GNU Lesser General Public License along with the iPSL. If not, see &LT;http://www.gnu.org/licenses/&GT;.</span></p>
</html>"));
end ImLag_p2;
