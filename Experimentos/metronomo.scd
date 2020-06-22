s.boot;


a = {arg bpm; Tdef(\Metronomo,{
inf.do{
{LFTri.ar(100)*Line.kr(1,0,0.1,doneAction:2)}.play;
		"tic".postln;
		(60/bpm).wait;

	}

});
}



a.value(180).play;

