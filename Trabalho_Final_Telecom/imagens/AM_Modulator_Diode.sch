v 20110115 2
C 40000 40000 0 0 0 title-B.sym
C 44100 44300 1 0 0 vsin-1.sym
{
T 44800 44950 5 10 1 1 0 0 1
refdes=Vc
T 44800 45150 5 10 0 0 0 0 1
device=vsin
T 44800 45350 5 10 0 0 0 0 1
footprint=none
T 44800 44750 5 10 0 1 0 0 1
refdes=Vc
}
C 45200 44300 1 0 0 vsin-1.sym
{
T 45900 44950 5 10 1 1 0 0 1
refdes=Vs
T 45900 45150 5 10 0 0 0 0 1
device=vsin
T 45900 45350 5 10 0 0 0 0 1
footprint=none
T 45900 44750 5 10 0 1 0 0 1
value=a
}
C 45900 45500 1 0 0 resistor-1.sym
{
T 46200 45900 5 10 0 0 0 0 1
device=RESISTOR
T 46100 45800 5 10 1 1 0 0 1
refdes=R2
T 46400 45800 5 10 1 1 0 0 1
value=10k
}
C 45900 46000 1 0 0 resistor-1.sym
{
T 46200 46400 5 10 0 0 0 0 1
device=RESISTOR
T 46100 46300 5 10 1 1 0 0 1
refdes=R1
T 46400 46300 5 10 1 1 0 0 1
value=10k
}
C 47500 45900 1 0 0 diode-1.sym
{
T 47900 46500 5 10 0 0 0 0 1
device=DIODE
T 47800 46400 5 10 1 1 0 0 1
refdes=D1
T 47600 45700 5 10 1 1 0 0 1
value=1N4148
}
C 47100 44400 1 90 0 resistor-1.sym
{
T 46700 44700 5 10 0 0 90 0 1
device=RESISTOR
T 46900 45100 5 10 1 1 180 0 1
refdes=R3
T 46600 44700 5 10 1 1 0 0 1
value=10k
}
C 49900 46200 1 180 0 resistor-1.sym
{
T 49600 45800 5 10 0 0 180 0 1
device=RESISTOR
T 49400 46400 5 10 1 1 180 0 1
refdes=R5
T 49100 45800 5 10 1 1 0 0 1
value=12k
}
C 50300 44600 1 90 0 capacitor-1.sym
{
T 49600 44800 5 10 0 0 90 0 1
device=CAPACITOR
T 49600 45200 5 10 1 1 0 0 1
refdes=C1
T 49400 44800 5 10 0 0 90 0 1
symversion=0.1
T 49500 45000 5 10 1 1 0 0 1
value=2.2n
}
C 51000 45500 1 270 0 inductor-1.sym
{
T 51500 45300 5 10 0 0 270 0 1
device=INDUCTOR
T 51300 45100 5 10 1 1 0 0 1
refdes=L1
T 51700 45300 5 10 0 0 270 0 1
symversion=0.1
T 51300 44900 5 10 1 1 0 0 1
value=1m
}
N 45500 45500 45500 45600 4
N 45500 45600 45900 45600 4
N 45900 46100 44400 46100 4
N 44400 46100 44400 45500 4
C 48900 44700 1 90 0 resistor-1.sym
{
T 48500 45000 5 10 0 0 90 0 1
device=RESISTOR
T 48700 45400 5 10 1 1 180 0 1
refdes=R4
T 48300 45100 5 10 1 1 0 0 1
value=3.3k
}
N 46800 46100 47500 46100 4
N 47000 45300 47000 46100 4
N 46800 45600 47000 45600 4
C 45400 43300 1 0 0 gnd-1.sym
N 45500 43600 45500 44300 4
N 44400 44300 44400 43600 4
N 44400 43600 51100 43600 4
N 47000 43600 47000 44400 4
N 48800 43600 48800 44700 4
N 50100 43600 50100 44600 4
N 48400 46100 49000 46100 4
N 48800 45600 48800 46100 4
N 49900 46100 51100 46100 4
N 51100 45500 51100 46900 4
N 50100 45500 50100 46100 4
N 51100 43600 51100 44600 4
C 50200 46800 1 0 0 terminal-1.sym
{
T 50510 47550 5 10 0 0 0 0 1
device=terminal
T 50510 47400 5 10 0 0 0 0 1
footprint=CONNECTOR 1 1
T 50450 46850 5 10 1 1 0 6 1
refdes=C
}
C 47900 46800 1 0 0 terminal-1.sym
{
T 48210 47550 5 10 0 0 0 0 1
device=terminal
T 48210 47400 5 10 0 0 0 0 1
footprint=CONNECTOR 1 1
T 48150 46850 5 10 1 1 0 6 1
refdes=B
}
C 46100 46800 1 0 0 terminal-1.sym
{
T 46410 47550 5 10 0 0 0 0 1
device=terminal
T 46410 47400 5 10 0 0 0 0 1
footprint=CONNECTOR 1 1
T 46350 46850 5 10 1 1 0 6 1
refdes=A
}
N 47000 46100 47000 46900 4
N 48800 46900 48800 46100 4
