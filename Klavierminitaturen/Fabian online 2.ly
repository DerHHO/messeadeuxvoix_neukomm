\version "2.18.2"

\header {
  tagline = ##f
}

globalAkkorde = { 
  \omit Staff.TimeSignature 
}

\score {
  \header {
    title = "Ich will mehr"
    subtitle = "…als nur eine Stimme – Akkorde"
  }
  <<
    \new PianoStaff <<
      \new Staff <<
        \new Voice \relative c' {
          \globalAkkorde
          <c-1 e-3 g-5>1
          <b-1 f'-4 g-5>1
          <c-1 e-3 g-5>1
          \bar "||"
          <c-1 e-3 g-5>1
          <c-1 f-4 a-5>1
          <b-1 f'-4 g-5>1
          <c-1 e-3 g-5>1
        }
      >>
      \new Staff <<
        \new Voice \relative c {
          \globalAkkorde
          \clef "bass"
          <c-5 e-3 g-1>1
          <b-5 f'-2 g-1>1
          <c-5 e-3 g-1>1
          \bar "||"
          <c-5 e-3 g-1>1
          <c-5 f-2 a-1>1
          <b-5 f'-2 g-1>1
          <c-5 e-3 g-1>1
          \bar "|."
        }
      >>
    >>
  >>
}

\markup {
  \column {
    \line { Spiele die beiden Hände zunächst getrennt voneinander. }
    \line { Wie heißt die Akkordfolge in der zweiten Hälfte des Notensystems? }
    \line {
      Versuche, diese
      Akkordfolge auch auf den Tönen f und b beginnen zu lassen.
    }
    \line { Was musst du tun, damit diese Akkordefolge jeweils in der Dur-Tonart bleibt? }
  }
}

\markup \vspace #5

global = {
  \key c\major
  \time 4/4
  
}

rhNoten = \relative c' {
  \global
  c4 e8. c16 g'2~ |
  g4. f8 d4 r |
  b4 d8. b16 g'2~ |
  g4. e8 c4 r |
  c4 e8. c16 c'2~ |
  c8 b a g f e d c |
  c4 g' f d |
  c4 e c2 \bar "|."
}

lhNoten = \relative c {
  \global
  \clef "bass"
  r2 r4 <c e g> |
  <b f' g>2. r4 |
  r2 r4 q |
  <c e g>2. r4 |
  r2 r4 q |
  <c f a>2. r4 |
  <c-5 e-3 g-1> r <b-5 d-3 g-1> r4 |
  <c-5 e-3 g-1> q q2 \bar "|."
}

\score {
  \header {
    title = "Fanfare"
  }
  <<
    \new PianoStaff <<
      \new Staff <<
        \new Voice \rhNoten
      >>
      \new Staff <<
        \new Voice \lhNoten
      >>
    >>
  >>
}

globalFingertraining = { 
  \omit Staff.TimeSignature 
}

\score {
  \header {
    title = "Fingertraining"
  }
  <<
    \new PianoStaff <<
      \new Staff <<
        \new Voice \relative c' {
          \globalFingertraining
          c8[-1 e-3] d[-2 f]-4 e[-3 g]-5 f[-4 d]-2 c2-1 r2 \bar "||"
        }
      >>
      \new Staff <<
        \new Voice \relative c {
          \globalFingertraining
          \clef "bass"
          c8[-5 e-3] d[-4 f]-2 e[-3 g]-1 f[-2 d]-4 c2-5 r2 \bar "||"
        }
      >>
    >>
  >>
}


\paper {
  top-margin = 2\cm
  bottom-margin = 2\cm
  left-margin = 2\cm
  right-margin = 2\cm
  print-all-headers = ##t
  ragged-right = ##f
  indent = 0\cm
  ragged-last-bottom = ##f
}
