% Bohemian Rhapsody, Guitar Solo
% by Jas Eckard (chruck)

% between Verse 2 and Verse 3, starting after:
%       sometimes wish I'd never been born at all
% and leading into
%       I see a little silhouetto of a man

\language "english"  % default naming convention is Dutch note names
\score {
  \relative c''' {  % most notes are above the treble clef
    \key ef \major

    r4 g8 f16 ef bf'4. g8 c2 c8 d16 ef c8 d16 ef f2 f16 g af bf c4
    \tuplet 6/4 4 { bf16 af g af g f g f ef f ef d ef d c d c bf( } bf4)
    r16 bf c d ef32 f g af bf8 r16 bf, c d ef32 f g af bf8
    c4. d,16 ef c8 d16 ef c8 d16 ef f4. f,16 g af4 f'
    \tuplet 3/2 {af,2 df8 df} df4 df, a8 r r4 r2
  }
  \layout {}  % outputs sheet music
  \midi {}    % outputs a MIDI file
}
