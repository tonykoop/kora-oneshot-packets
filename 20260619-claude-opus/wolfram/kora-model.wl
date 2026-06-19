(* Kora string model — generated. f = (1/2L) Sqrt[T/mu] *)
rho = 1150.0; (* nylon kg/m^3 *)
mu[d_] := rho*Pi*(d/2/1000)^2;                 (* d in mm -> kg/m *)
tensionKgf[d_, L_, f_] := mu[d]*(2 L f)^2/9.80665;
L = 0.670;                                    (* optimized speaking length, m *)
notes = {{"F2",87.31,1.6}, {"G2",98.0,1.6}, {"A2",110.0,1.6}, {"A#2",116.54,1.6}, {"C3",130.81,1.5}, {"D3",146.83,1.35}, {"E3",164.81,1.2}, {"F3",174.61,1.15}, {"G3",196.0,1.0}, {"A3",220.0,0.9}, {"A#3",233.08,0.85}, {"C4",261.63,0.75}, {"D4",293.66,0.65}, {"E4",329.63,0.6}, {"F4",349.23,0.55}, {"G4",392.0,0.5}, {"A4",440.0,0.45}, {"A#4",466.16,0.4}, {"C5",523.25,0.4}, {"D5",587.33,0.4}, {"E5",659.26,0.4}};
schedule = Table[{n[[1]], n[[2]], n[[3]], tensionKgf[n[[3]], L, n[[2]]]}, {n, notes}];
Grid[Prepend[schedule, {"note","Hz","gauge mm","T kgf"}], Frame -> All]
totalT = Total[schedule[[All, 4]]]
Manipulate[
  ListLinePlot[Table[tensionKgf[d, Lv, f], {f, 80, 720, 10}],
   PlotRange -> {0, 16}, AxesLabel -> {"freq", "kgf"}],
  {d, 0.4, 1.6}, {Lv, 0.45, 0.8}]
