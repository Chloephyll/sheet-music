\version "2.18.2-1"



melody = \relative c'' {
  \clef treble
  \key ees \major
  \time 11/8
  \tempo 4 = 100

%mm1	
	r1 ~ r4.
%mm2
	r1 ~ r4.
%mm3
	bes2. ~ bes4. f'4
%mm4
  bes,2. ~ bes4. f4
%mm5
  aes2. g2 g8
%mm6
  f1 ~ f4.
%mm7
  c'4 f f g d bes8 
%mm8
  c1 ~ c4.
%mm9
  bes4 f' f g d bes8
%mm10
  f1 ~ f4.
%mm11
  r1 r4.
%mm12
  r1 r4.
%mm13
  c''4 aes ees8 ges4 f des
%mm14
  c1 ~ c4.
%mm15
  c'4 aes ees8 f4 ees d 
%mm16
  c1 ~ c4.
%mm17
  bes2. ~ bes4. f'4 
%mm18
  bes2. ~ bes4. f4
%mm19
  
%mm20
}


upper = \relative c'' {
  \clef treble
  \key ees \major
  \time 11/8
  \tempo 4 = 100

%mm1
\repeat volta 2 {
	r4 c,8 d < ees g >4 r4 c8 d < ees g >
%mm2 
	r4 c8 d < ees f >4 r4 c8 d < ees f >
%mm3
	r4 c8 d < ees g >4 r4 c8 d < ees g >
%mm4
	r4 c8 d < ees f >4 r4 c8 d < ees f >
%mm5
  r4 c8 d < ees f >4 r4 c8 d < ees f >
%mm6
  r4 c8 d < ees f >4 r4 c8 d < ees f >
%mm7
  r4 c8 d < ees bes' >4 r4 c8 d < ees c' >
%mm8
  r4 c8 d < ees d' >4 r4 c8 d < ees ees' >
%mm9
  r4 c8 d < ees bes' >4 r4 c8 d < ees c' >
%mm10
  r4 c8 d < ees d' >4 r4 c8 d < ees ees' >
%mm11
  r4 c8 des < ees ees' >4 r4 des8 g < aes f' >
%mm12
  r4 ees8 aes < bes g' >4 r4 f8 bes < c aes' >
%mm13
  < c' aes f c aes f >2\arpeggio ~ < c aes f c aes f >8 
  < f, des bes ges des >2.\arpeggio 
%mm14
  < aes ees c aes ees c >2\arpeggio ~ < aes ees c aes ees c >8
  < g ees c g ees c >2. \arpeggio
%mm15
  < c aes f c aes f >2\arpeggio ~ < c aes f c aes f >8
  < bes f d bes f d >2. \arpeggio 
%mm16
  < g ees c g ees c >2\arpeggio ~ < g ees c g ees c >8
  < f c a f c >2.\arpeggio
  }
%mm17
  r4 c,8 des < ees g >4 r4 c8 des < ees g>8
%mm18

%mm19

%mm20

}

lower = \relative c {
  \clef bass
  \key ees \major
  \time 11/8
  \tempo 4 = 100

%mm1
	bes8 f' r2 bes,8 f' r4.
%mm2
	bes,8 f' r2 bes,8 f' r4.
%mm3
	bes,8 f' r2 bes,8 f' r4.
%mm4
	bes,8 f' r2 bes,8 f' r4.
%mm5
  aes,8 f' r2 aes,8 f' r4.
%mm6
  bes,8 f' r2 bes,8 f' r4.
%mm7
  ees8 aes r2 ees8 aes r4.
%mm8
  ees8 aes r2 ees8 aes r4.
%mm9
  bes,8 f' r2 bes,8 f' r4.
%mm10
  bes,8 f' r2 bes,8 f' r4.
%mm11
  des8 f r2 des8 f r4.
%mm12
  des8 f r2 des8 f r4.
%mm13
  r1 r4.
%mm14
  r1 r4.
%mm15
  r1 r4.
%mm16
  r1 r4.
%mm17
  des8 f r2 des8 f r4.
%mm18

%mm19

%mm20

}

\score {
  <<
    \new Voice = "mel" { \autoBeamOff \melody }
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi { }
}