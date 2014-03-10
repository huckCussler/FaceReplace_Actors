all: compile run

compile: ImgRgn.class Main.class Phase1.class Phase2.class Phase3.class Ph3Msg.class MatchMaker.class SrcRgn.class

ImgRgn.class: ImgRgn.hj
	cd ../ ; hjc frActors/ImgRgn.hj

Main.class: Main.hj
	cd ../ ; hjc frActors/Main.hj

Phase1.class: Phase1.hj
	cd ../ ; hjc frActors/Phase1.hj

Phase2.class: Phase2.hj
	cd ../ ; hjc frActors/Phase2.hj

Phase3.class: Phase3.hj
	cd ../ ; hjc frActors/Phase3.hj

Ph3Msg.class: Ph3Msg.hj
	cd ../ ; hjc frActors/Ph3Msg.hj

MatchMaker.class: MatchMaker.hj
	cd ../ ; hjc frActors/MatchMaker.hj

SrcRgn.class: SrcRgn.hj
	cd ../ ; hjc frActors/SrcRgn.hj

Phase4.class: Phase4.hj
	cd ../ ; hjc frActors/Phase4.hj

Ph4Src.class: Ph4Src.hj
	cd ../ ; hjc frActors/Ph4Src.hj

Ph4Tgt.class: Ph4Tgt.hj
	cd ../ ; hjc frActors/Ph4Tgt.hj

run:
	cd ../ ; hj frActors.Main frActors/rawImgsForTimingTests/fiveOneTwo/fiveOneTwoByFiveOneTwo/

runSingle:
	cd ../ ; hj -places 1:1 frActors.Main frActors/SampleImages/oneTwoEightByOneTwoEight/

runStealHelp:
	cd ../ ; hjc -rt h frActors/Main.hj
	cd ../ ; hj frActors.Main frActors/SampleImages/Composite/

clean:
	rm -f *~
	rm -f *#
	rm -f *.class
