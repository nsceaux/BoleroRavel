\score {
  \notemode <<
    \new StaffGroupNoBar <<
      %% bois
      \new StaffGroupNoBracket <<
        %% Flûtes
        \new StaffGroup <<
          \new Staff \with {
            instrumentName = \markup\center-column {
              \smallCaps Flûtes
              \fontsize#-2 \column {
                2 Grandes Flûtes
                Petites Flûtes
              }
            }
            shortInstrumentName = \markup\shortinstr Fl.
          } << \global \keepWithTag #'flutes { \include "flute.ily" } >>
          %% Petites flûtes
          \new StaffGroupNoBracket \with {
            \haraKiriFirst
            shortInstrumentName = \markup\shortinstr { \concat { P \super tes } Fl. }
          } <<
            \new Staff << \transpose do mi \global { \include "petite-flute1.ily" } >>
            \new Staff << \transpose do sol \global { \include "petite-flute2.ily" } >>
            \new Staff << \global { \include "petite-flute3.ily" } >>
          >>
        >>
        %% Hautbois
        \new StaffGroup \with { \haraKiriFirst } <<
          \new StaffGroupNoBracket \with {
            instrumentName = \markup\center-column {
              \smallCaps Hautbois
              \fontsize#-2 \column {
                2 Hautbois
                Hautb. d’amour
                Cor Anglais
              }
            }
            shortInstrumentName = \markup\shortinstr Hautb.
          } <<
            \new Staff <<
              \global \keepWithTag #'hautbois { \include "hautbois.ily" }
              { \noHaraKiri s2.*73 \revertNoHaraKiri s2. % 4
                s2.*18 % 5
                s2.*7 \noHaraKiri s2.*10 % 6
              }
            >>
            \new Staff \with { \haraKiriFirst } <<
              \global \keepWithTag #'hautbois { \include "hautbois2.ily" }
            >>
          >>
          \new Staff \with {
            shortInstrumentName = \markup\shortinstr "Htb.d’am."
          } << \transpose la do \global { \include "hautbois-amour.ily" } >>
          \new Staff \with {
            shortInstrumentName = \markup\shortinstr Cor A.
          } << \transpose fa do \global { \include "cor-anglais.ily" } >>
        >>
        %% Clarinettes
        \new StaffGroup \with { \haraKiriFirst } <<
          \new Staff \with {
            shortInstrumentName = \markup\shortinstr { \concat { P \super te } Cl. }
          } << \transpose mib do \global { \include "petite-clarinette.ily" } >>
          \new StaffGroupNoBracket \with {
            instrumentName = \markup\center-column {
              \smallCaps Clarinettes
              \fontsize#-2 \column {
                Petite Cl. en Mi ♭
                2 Cl. en Si ♭
                Cl. basse en Si ♭
              }
            }
            shortInstrumentName = \markup\shortinstr Clar.
          } <<
            \new Staff <<
              \transpose sib do \global
              \keepWithTag #'clarinettes { \include "clarinette.ily" }
              { \noHaraKiri s2.*55 \revertNoHaraKiri s2. % 3
                s2.*18 % 4
                s2.*7 \noHaraKiri s2.*8 % 5
                s2.*18 % 6
                s2.*18 % 7
                s2.*17 \revertNoHaraKiri s2. % 8
                s2.*18 % 9
                s2.*18 % 10
              }
            >>
            \new Staff \with { \haraKiriFirst } <<
              \transpose sib do \global
              \keepWithTag #'clarinettes { \include "clarinette2.ily" }
            >>
          >>
          \new Staff \with {
            instrumentName = \markup { Clarinette basse }
            shortInstrumentName = \markup\shortinstr Cl.B.
          } << \transpose sib do \global { \include "clarinette-basse.ily" } >>
        >>
        %% Bassons
        \new StaffGroup <<
          \new Staff \with {
            instrumentName = \markup\center-column {
              \smallCaps Bassons
              \fontsize#-2 \column {
                2 Bassons
                Contrebasson
              }
            }
            shortInstrumentName = \markup\shortinstr\concat { B \super ons }
          } << \global \keepWithTag #'bassons { \include "basson.ily" } >>
          \new Staff \with {
            shortInstrumentName = \markup\shortinstr\concat { C.B \super on }
            \haraKiriFirst
          } << \global { \include "contrebasson.ily" } >>
        >>
      >>
      %% Cuivres, saxophones
      \new StaffGroupNoBracket <<
        %% Cor
        \new StaffGroup \with {
          instrumentName = \markup { 4 \smallCaps Cors en fa }
          shortInstrumentName = \markup\shortinstr Cors
        } <<
          \new Staff << \global \keepWithTag #'cors { \include "cor.ily" } >>
          \new Staff \with { \haraKiriFirst } <<
            \global \keepWithTag #'cors { \include "cor34.ily" }
          >>
        >>
        %% Trompette
        \new StaffGroup \with {
          instrumentName = \markup\center-column {
            \smallCaps Trompettes
            \fontsize#-2 \column {
              3 Tromp. en Ut
              Petite Tromp. en Ré
            }
          }
        } <<
          \new Staff \with {
            \haraKiriFirst
            shortInstrumentName = \markup\shortinstr\center-column {
              \line { \concat { P \super te } Tr }
              en Ré
            }
          } <<
            \global \keepWithTag #'trompettes { \include "petite-trompette.ily" }
          >>
          \new StaffGroupNoBracket \with {
            shortInstrumentName = \markup\shortinstr Tromp.
          } <<
            \new Staff <<
              \global \keepWithTag #'trompettes { \include "trompette.ily" }
            >>
            \new Staff \with { \haraKiriFirst } <<
              \global { \include "trompette3.ily" }
            >>
          >>
        >>
        %% Trombones
        \new StaffGroup \with {
          instrumentName = \markup\smallCaps 3 Trombones
          shortInstrumentName = \markup\shortinstr Trb.
        } <<
          \new Staff \with { \haraKiri } <<
            \global \keepWithTag #'trombones { \include "trombone.ily" }
          >>
          \new Staff \with { \haraKiriFirst } <<
            \global \keepWithTag #'trombones { \include "trombone23.ily" }
          >>
        >>
        %% Tuba
        \new Staff \with {
          instrumentName = \markup\smallCaps Tuba
          shortInstrumentName = \markup\shortinstr Tuba
          \haraKiri
        } << \global { \include "tuba.ily" } >>
        %% Saxophones
        \new StaffGroup \with { \haraKiriFirst } <<
          \new Staff \with {
            shortInstrumentName = \markup\shortinstr {
              Sax. \concat { S \super ino }
            }
            \haraKiriFirst
          } << \transpose fa do \global { \include "sax-sopranino.ily" } >>
          \new Staff \with {
            shortInstrumentName = \markup\shortinstr {
              Sax. \concat { S \super ano }
            }
            \haraKiriFirst
          } << \transpose sib do \global { \include "sax-soprano.ily" } >>
          \new Staff \with {
            instrumentName = \markup\center-column {
              \smallCaps 3 Saxophones
              \fontsize#-2 \column {
                Sopranino en Fa
                Soprano en Si ♭
                Ténor en Si ♭
              }
            }
            shortInstrumentName = \markup\shortinstr Sax. T.
            \haraKiriFirst
          } <<
            \transpose sib do \global
            { \include "sax-tenor.ily" }
            { \noHaraKiri s2.*128 % 7
              \revertNoHaraKiri s2.*18 % 8
              s2.*7 \noHaraKiri }
          >>
        >>
      >>
      %% Percussions
      \new StaffGroupNoBracket \with { \haraKiriFirst } <<
        %% Timbales
        \new Staff \with {
          shortInstrumentName = \markup\shortinstr Timb.
        } << \global { \include "timbales.ily" } >>
        %% Tambours
        \new DrumStaff \with {
          drumStyleTable = #percussion-style
          \override StaffSymbol.line-count = #1
          instrumentName = \markup\center-column\smallCaps {
            2 Tambours
            3 Timbales
            Cymbales & Tam-Tam
          }
          shortInstrumentName = \markup\shortinstr Tamb.
        } << \global { \include "tambour.ily" } >>
        %% Tam-tam
        \new DrumStaff \with {
          drumStyleTable = #percussion-style
          \override StaffSymbol.line-count = #1
          shortInstrumentName = \markup\shortinstr T-T.
        } << \global { \include "tamtam.ily" } >>
        %% Cymbale
        \new DrumStaff \with {
          drumStyleTable = #percussion-style
          \override StaffSymbol.line-count = #1
          shortInstrumentName = \markup\shortinstr Cymb.
        } << \global { \include "cymbales.ily" } >>
        %% Grosse caisse
        \new DrumStaff \with {
          drumStyleTable = #percussion-style
          \override StaffSymbol.line-count = #1
          shortInstrumentName = \markup\shortinstr Gr.C.
        } << \global { \include "grosse-caisse.ily" } >>
      >>
    >>
    %% Celesta
    \new PianoStaff \with {
      instrumentName = \markup\smallCaps Celesta
      shortInstrumentName = \markup\shortinstr Celesta
      \haraKiri
    } <<
      \new Staff << \global { \include "celesta1.ily" } >>
      \new Staff << \global { \include "celesta2.ily" } >>
    >>
    %% Harpe
    \new PianoStaff \with {
      instrumentName = \markup\smallCaps Harpe
      shortInstrumentName = \markup\shortinstr Harpe
      \haraKiri
    } <<
      \new Staff << \global { \include "harpe1.ily" } >>
      \new Staff << \global { \include "harpe2.ily" } >>
    >>
    %% Cordes
    \new StaffGroup <<
      %% Violons
      \new StaffGroup \with {
        instrumentName = \markup\smallCaps { \concat { 1 \super rs } Violons }
        shortInstrumentName = \markup\shortinstr {
          \concat { 1 \super rs } \concat { V \super ons }
        }
      } <<
        \new Staff \with {
          \consists "Metronome_mark_engraver"
          \consists "Mark_engraver"
        } << \global { \include "violon1.ily" } >>
        \new Staff \with { \haraKiriFirst } <<
          \global { \include "violon1-2.ily" }
        >>
      >>
      \new StaffGroup \with {
        instrumentName = \markup\smallCaps { \concat { 2 \super ds } Violons }
        shortInstrumentName = \markup\shortinstr {
          \concat { 2 \super ds } \concat { V \super ons }
        }
      } <<
        \new Staff << \global { \include "violon2.ily" } >>
        \new Staff \with { \haraKiriFirst } <<
          \global { \include "violon2-2.ily" }
        >>
      >>
      %% Altos
      \new StaffGroup \with {
        instrumentName = \markup\smallCaps Altos
        shortInstrumentName = \markup\shortinstr Altos
      } <<
        \new Staff << \global { \include "alto.ily" } >>
        \new Staff \with { \haraKiriFirst } << \global { \include "alto2.ily" } >>
      >>
      %% Violoncelles
      \new StaffGroup \with {
        instrumentName = \markup\smallCaps Violoncelles
        shortInstrumentName = \markup\shortinstr\concat { V \super elles }
      } <<
        \new Staff << \global { \include "violoncelle.ily" } >>
        \new Staff \with { \haraKiriFirst } << \global { \include "violoncelle2.ily" } >>
      >>
      %% Contrebasses
      \new StaffGroup \with {
        instrumentName = \markup\smallCaps Contrebasses
        shortInstrumentName = \markup\shortinstr C.B.
      } <<
        \new Staff <<
          \global { \include "cb.ily" }
          { s2.*5\pageBreak s2.*5\break s2.*5\break s2.*5\break
            %% 1
            \repeat unfold 9 { s2.*6\break s2.*6\break s2.*6\break }
            %% 10
            \grace s8 { s2.*6\break s2.*6\break s2.*6\break }
            %% 11
            \grace s4 { s2.*6\break s2.*6\break s2.*6\break }
            %% 12
            { s2.*6\break s2.*6\break s2.*6\break }
            %% 13
            { s2.*6\break s2.*6\break s2.*6\break }
            %% 14
            \grace s8 { s2.*6\break s2.*6\break s2.*6\break }
            %% 15
            { s2.*6\break s2.*6\break s2.*6\break }
            %% 16
            { s2.*6\break s2.*6\break s2.*6\break }
            %% 17
            { s2.*6\break s2.*6\break s2.*6\break }
            %% 18
            { s2.*4\break s2.*5\break }
          }
        >>
        \new Staff \with { \haraKiriFirst } << \global { \include "cb2.ily" } >>
      >>
    >>
  >>
  \layout {
    indent = 25\mm
    short-indent = 10\mm
    ragged-last = ##f
    ragged-right = ##f
    \context {
      \Score
      \override InstrumentName.baseline-skip = #2.5
      \override NonMusicalPaperColumn #'line-break-permission = ##f
    }
  }
  \midi { }
}
