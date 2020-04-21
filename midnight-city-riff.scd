s.boot;

(
SynthDef.new(\midnightcitykeyboard,{
	arg freq=440,atk=0.05,rel=1,amp=1.2,pan=0;
	var sig,env;
	env= EnvGen.kr(Env.new([0,1,0],[atk,rel],[-1,1]),doneAction:2);
	sig= Pan2.ar(LFTri.ar(freq),pan,amp)*env;
	Out.ar(0,sig);
}).add;
)

(
p= Pbind(
	\instrument,\midnightcitykeyboard,
	\midinote,Pseq([
[78,66],[74,62],71,[78,66,57,52],0,
[78,66],74,71,[78,66,57],0,
[78,66],[74,62],[71,59],[78,66,54,49],0,
[78,66],[74,62],71,[78,66,54,49],[78,66,54,49],[78,66,54,49],[78,66,54,49],[55,50],0

	],inf),
	\dur,Pseq([
		0.56,0.56,0.4,0.82,0.8,
		0.56,0.56,0.4,0.82,0.8,
		0.56,0.56,0.4,0.82,0.8,
		0.56,0.56,0.4,0.17,0.17,0.17,0.17,0.17,0.5,

	],inf)
).play;
)

