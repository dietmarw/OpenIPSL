within OpenIPSL.Examples.Machines.PSSE;
model GEN "SMIB system with one load and flexible GEN model (needs replaceable support)"
  extends OpenIPSL.Examples.SMIBpartial;
  Electrical.Machines.PSSE.Plant G1(
    redeclare Electrical.Machines.PSSE.GENROE machine(
      M_b=100,
      Tpd0=5,
      Tppd0=0.07,
      Tppq0=0.09,
      H=4.28,
      D=0,
      Xd=1.84,
      Xq=1.75,
      Xpd=0.41,
      Xppd=0.2,
      Xl=0.12,
      S10=0.11,
      S12=0.39,
      V_0=1,
      P_0=40,
      angle_0=4.046276,
      Q_0=5.416582,
      Xppq=0.2,
      R_a=0,
      Xpq=2,
      Tpq0=2),
    redeclare OpenIPSL.Electrical.Controls.PSSE.TG.ConstantPower governor,
    redeclare OpenIPSL.Electrical.Controls.PSSE.ES.ConstantExcitation exciter,
    redeclare OpenIPSL.Electrical.Controls.PSSE.PSS.DisabledPSS pss)
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
equation
  connect(G1.pwPin, GEN1.p)
    annotation (Line(points={{-59,0},{-49.5,0},{-40,0}}, color={0,0,255}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}})), Documentation(revisions="<html>
<!--DISCLAIMER-->
<p>OpenIPSL:</p>
<p>Copyright 2016 SmarTS Lab (Sweden)</p>
<ul>
<li>SmarTS Lab, research group at KTH: <a href=\"https://www.kth.se/en\">https://www.kth.se/en</a></li>
</ul>
<p>The authors can be contacted by email: <a href=\"mailto:luigiv@kth.se\">luigiv@kth.se</a></p>

<p>This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. </p>
<p>If a copy of the MPL was not distributed with this file, You can obtain one at <a href=\"http://mozilla.org/MPL/2.0/\"> http://mozilla.org/MPL/2.0</a>.</p>

<p></p>
<p>iPSL:</p>
<p>Copyright 2015-2016 RTE (France), SmarTS Lab (Sweden), AIA (Spain) and DTU (Denmark)</p>
<ul>
<li>RTE: <a href=\"http://www.rte-france.com\">http://www.rte-france.com</a></li>
<li>SmarTS Lab, research group at KTH: <a href=\"https://www.kth.se/en\">https://www.kth.se/en</a></li>
<li>AIA: <a href=\"http://www.aia.es/en/energy\"> http://www.aia.es/en/energy</a></li>
<li>DTU: <a href=\"http://www.dtu.dk/english\"> http://www.dtu.dk/english</a></li>
</ul>
<p>The authors can be contacted by email: <a href=\"mailto:info@itesla-ipsl.org\">info@itesla-ipsl.org</a></p>

<p>This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. </p>
<p>If a copy of the MPL was not distributed with this file, You can obtain one at <a href=\"http://mozilla.org/MPL/2.0/\"> http://mozilla.org/MPL/2.0</a>.</p>
</html>
"));
end GEN;
