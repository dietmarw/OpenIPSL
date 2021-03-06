within OpenIPSL.Electrical.ThreePhase.Loads;
model Dyn_wye_1Ph "Variable single-phase load"
  extends ThreePhaseComponent;
  import Modelica.Blocks.Interfaces.*;
  Modelica.Blocks.Interfaces.RealInput P_in "external P [pu]" annotation (
      Placement(
      visible=true,
      transformation(
        origin={-120,20},
        extent={{-20,-20},{20,20}},
        rotation=0),
      iconTransformation(
        origin={-60,20},
        extent={{-20,-20},{20,20}},
        rotation=0)));
  Modelica.Blocks.Interfaces.RealInput Q_in "external Q [pu]" annotation (
      Placement(
      visible=true,
      transformation(
        origin={-120,-40},
        extent={{-20,-20},{20,20}},
        rotation=0),
      iconTransformation(
        origin={-60,-60},
        extent={{-20,-20},{20,20}},
        rotation=0)));
  OpenIPSL.Interfaces.PwPin A annotation (Placement(
      transformation(
        extent={{-56.0,-10.0},{-36.0,10.0}},
        origin={-4,70},
        rotation=0),
      iconTransformation(
        extent={{-80.0,0.0},{-60.0,20.0}},
        origin={71,100},
        rotation=0),
      visible=true));
  parameter SI.ActivePower P0(displayUnit="MW") "Initial Active power"
    annotation (Dialog(group="Power flow"));
  parameter SI.ReactivePower Q0(displayUnit="Mvar") "Initial Reactive power"
    annotation (Dialog(group="Power flow"));

protected
  SI.ActivePower P_a(displayUnit="MW", start = P0)
    "Initial active power";
  SI.ReactivePower Q_a(displayUnit="Mvar", start = Q0)
    "Initial reactive power";

equation
  P_a = P_in * S_p;
  Q_a = Q_in * S_p;

  P_a = (A.vr*A.ir + A.vi*A.ii)*S_p;
  Q_a = (A.vi*A.ir - A.vr*A.ii)*S_p;

  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false, initialScale=0.1),
        graphics={Line(points={{-100,100},{100,100},{0,-100},{-100,100}}, color=
           {28,108,200}),Text(
          lineColor={28,108,200},
          extent={{-62,90},{66,45}},
          textString="Grounded-Wye Dynamic Load"),Text(
          origin={20,6},
          lineColor={28,108,200},
          extent={{-62,45},{22,30}},
          textString="PQ Load")}),
    Documentation(info="<html>
<p>This is a single-phase load model that allows the user to vary the power consumed during the simulation.</p>
<p>The user needs to input the active (<b><i>P0</i></b>) and reactive (<b><i>Q0</i></b>) powers consumed by the load.
The model allows the load to be represented as constant power only.</p>
<p>In addition to that, the real inputs <b><i>P_in</b></i> and <b><i>Q_in</b></i> multiply the values of active and reactive power, respectively, being consumed by the load. 
This allows the load to vary its consumed power over time during the simulation. 
Note that, since active and reactive powers can vary independently, the load's power factor can also vary.</p> 
<p> <\p>
</html>"));
end Dyn_wye_1Ph;
