\version "2.18.2"

\header {
  tagline = ##f
}

global = {
  \key c\major
  \time 2/2
  \partial 2
}

rhNoten = \relative c' {
  \global
  r2 |
  r2 e4( c |
  e2) r2 |
  r f4( d |
  f2) e4 f |
  g2( e |
  c e |
  d1) |
  R1 |
  r2 e4( c |
  e2) r2 |
  r f4( d |
  f2) e4 f |
  g2( e |
  f d |
  c1)
}

lhNoten = \relative c {
  \global
  \clef "bass"
  c4( d |
  e2) r2 |
  r d4( e |
  f2) r2 |
  R1 |
  R1 |
  r2 c |
  g'2 \breathe g4( f |
  e d) c4( d |
  e2) r2 |
  r d4( e |
  f2) r2 |
  R1*2 |
  r2 g |
  c,1 \bar "|."
}

\score {
  \header {
    title = "Auf hoher See"
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

globalTonleiter = { \omit Staff.TimeSignature }

\score {
  \header {
    title = "Ich will mehr…"
    subtitle = "…als 5 Töne – die C-Dur-Tonleiter"
  }
  <<
    \new PianoStaff <<
      \new Staff <<
        \new Voice \relative c' {
          \globalTonleiter
          c4-1 d-2 e-3 f-1 g-2 a-3 b-4 c-5 \bar "|."
        }
      >>
      \new Staff <<
        \new Voice \relative c {
          \globalTonleiter
          \clef "bass" c-5 d-4 e-3 f-2 g-1 a-3 b-2 c-1
        }
      >>
    >>
  >>

}

\markup {
  \column {
    \line { Spiele die beiden Hände zunächst getrennt voneinander. }
    \line {
      Versuche, diese
      Tonleiter auch auf den Tönen g und d beginnen zu lassen.
    }
    \line { Was musst du tun, um eine Dur-Tonleiter zu erhalten? }
  }
  
}

\markup { \vspace #10 }
\score {
  \header {
    title = "Notenlesen im Bassschlüssel"
  }
  \relative c {
    \omit Staff.TimeSignature
    \clef "bass"
    \omit Staff.BarLine
    \omit Score.BarNumber
    c1 d fis g d a' cis b e, as f ges cis, bes
    ees
    gis b fes
    des
    cis gis'
    a, g
  }
}

\paper {
  indent = 0\cm
  print-all-headers = ##t
  ragged-right = ##f
  ragged-last-bottom = ##f
}