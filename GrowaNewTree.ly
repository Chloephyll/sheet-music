\version "2.18.2-1"

global = {
  \key f \major
  \dynamicUp
}
sopranonotes = \relative c' {
	\time 6/8
	d2.\ppp ~ d2. ~ d2. ~ d2. ~ 
	d2. ~ d2. ~ d2. ~ d2. ~
	d2. ~ d2. ~ d2. ~ d2. ~
	d2.\< ~ d2.
	r2.\! r2. r2. r2. r2 r8 d8\mp
	%look out
	d2. ~ d4. ~ d8 r8 d 
	d4 e8 f ( g ) a8 ~ a g f'
	e ( a, ) d f2.
}
sopranowords = \lyricmode { 
	Homm* 
	Look out, look out the win -- dows of 
	sub -- ur -- ban peaks
}
altonotes = \relative c' {
	a2.\ppp ~ a2. ~ a2. ~ a2. ~ 
	a2. ~ a2. ~ a2. ~ a2.
	a2. ~ a2. ~ a2. ~ a2. ~
	a2.\< ~ a2.
	r2.\! r2. r2. r2. r2.
%look out
	r4 d8 d4. ~ d4. ~ d8 r8 d8 
%look out the windows
	d4 c8 d ( e ) f ~ 
	f g a f ( a ) f d2.
	
}
altowords = \lyricmode { 
	Homm* 
	Look out,
	look out the win -- dows
	of sub -- ur -- ban peaks
}
tenornotes = \relative c {
  \clef "G_8"
	r4. r4.
	
}
tenorwords = \lyricmode {
	How few are the work -- ers, 
	how great are our woes
}
bassnotes = \relative c {
  \clef bass
	r4. r4. r4. r4 a8\mf
%how few are the workers are great are our woes
	a8 d d d e f e a, a a r a16 a 
%could a heavier task have been imposed
	d8. ( e16 ) f c f8 ( g ) a 
	g ( d ) d d r8 d16 e 
%when we hold both mass and quantity
	f8 ( g ) a
	g ( a ) bes 
	a ( bes ) c d8 r d,16 ( e ) 
%grow out of us a good new tree
	f8 ( g ) a g ( f ) d16 ( f ) 
	g4. e f4. ~ f8 r8 d16 ( e ) 
	f8 ( g ) a g ( a ) f 
	e4.\< c d2. r2.\!
	
}
basswords = \lyricmode { 
	How few are the work -- ers, 
	how great are our woes
	could a heav -- i -- er task have been im -- posed; 
	When we hold both mass and quan -- ti -- ty
	Grow out of us a Good New Tree.
	Grow out of us a Good New Tree. 
}

pianoUpper = \relative c' {
	r2. r2. r2. r2. 
	r2. r2. r2. r2.
	r2. r2. r2. r2.
	r2. r2. < a d e g a >\arpeggio \fermata
	
	r8 d'8 a r c g r 
	d'8 a r c < a d ees g >->
	r8 c g r bes f r 
	c' g r bes < e, a bes d >->
%look out
	r8 d' a r c g r 
	d'8 a r c < a d ees g >->
	r8 c g r bes f r 
	c'8 g r bes < e, a bes d >->
%look out the windows of suburban peaks
	r8 d'8 a r c g r 
	d'8 a r c < a d ees g >->
	r8 c8 g r bes f r 
	c'8 g r bes < e, a bes d >->
}

pianoLower = \relative c {
	r2. r2. r2. r2.
	r2. r2. r2. r2.
	r2. r2. r2. r2.
	r2. r2. d,2.\p \fermata
	a''8 r4 e8r4 
	a8 r4 e8 r4
	g8 r4 d8 r4
	g8 r4 d8 r4 
%look out
	a'8 r4 e8
	r4 a8 r4 e8 r4
	a8 r4 e8
	r4 a8 r4 e8
	r4 g8 r4 d8
	r4 g8 r4 d8 
%look out the windows of suburban peaks
	r8 a'8 r16 e
	r8 a8 r16 e
	r8 g8 r16 d
	r8 g8 r16 d
	r8 g8 r16 d
}

\score {
	\layout { }
  \new ChoirStaff <<
    \new Staff <<
		\set Staff.midiInstrument = #"choir aahs"
      \new Voice = "soprano" <<
        \global
        \sopranonotes
      >>
      \lyricsto "soprano" \new Lyrics \sopranowords
    >>
    \new Staff <<
		\set Staff.midiInstrument = #"choir aahs"
      \new Voice = "alto" <<
        \global
        \altonotes
      >>
      \lyricsto "alto" \new Lyrics \altowords
    >>
    \new Staff <<
		\set Staff.midiInstrument = #"choir aahs"
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
      \lyricsto "tenor" \new Lyrics \tenorwords
    >>
    \new Staff <<
		\set Staff.midiInstrument = #"choir aahs"
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
      \lyricsto "bass" \new Lyrics \basswords
    >>
  \new PianoStaff <<
	\new Staff <<
		\set Staff.midiInstrument = #"accoustic grand"
		\pianoUpper
	>>
	\new Staff <<
		\set Staff.midiInstrument = #"accoustic grand"
		\clef "bass" 
		\pianoLower
	>>
  >>
  >>
	\midi { }
}

