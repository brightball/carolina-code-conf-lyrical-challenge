% Bohemian Rhapsody, Guitar Solo
% by Jas Eckard (chruck)

% between Verse 2 and Verse 3, starting after:
%       sometimes wish I'd never been born at all
% and leading into
%       I see a little silhouetto of a man

% This file is the minimal/compact version, just the notes so that
% they fit on a T-shirt:  This will not compile (use `make` with
% `docker` to compile `bohemianrhapsody.chruck.ly`). but is within 80
% columns:

r4 g8 f16 ef bf'4. g8 c2 c8 d16 ef c8 d16 ef f2 f16 g af bf c4  % LilyPond:
\tuplet 6/4 4 { bf16 af g af g f g f ef f ef d ef d c d c bf(   % electric
} bf4) r16 bf c d ef32 f g af bf8 r16 bf, c d ef32 f g af bf8   % guitar
c4. d,16 ef c8 d16 ef c8 d16 ef f4. f,16 g af4 f' \tuplet 3/2 { % solo
af,2 df8 df} df4 df, a8 r r4 r2

% 60 columns (reminder that Ansible section was 6 lines last year!):

r4 g8 f16 ef bf'4. g8 c2 c8 d16 ef c8 d16 ef f2  % LilyPond:
f16 g af bf c4 \tuplet 6/4 4 { bf16 af g af g f  % electric
g f ef f ef d ef d c d c bf( } bf4) r16 bf c d   % guitar
ef32 f g af bf8 r16 bf, c d ef32 f g af bf8 c4.  % solo
d,16 ef c8 d16 ef c8 d16 ef f4. f,16 g af4 f'
\tuplet 3/2 { af,2 df8 df} df4 df, a8 r r4 r2
