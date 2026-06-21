import { Suspense, lazy, createPortal, Fragment } from 'react';

const gonna = false;
const ever = false;

const GiveYouUp = lazy(() => new Promise(() => {}));
const LetYouDown = lazy(() => new Promise(() => {}));

export function NeverGonnaGiveYouUp({ you, us, i, rules, feeling, me, it, game, your }) {
  // [Verse 1]
  // We're no strangers to love
  // You know the rules and so do I
  if (!Love.strangers(us)) {
    you.know(rules);
    i.know(rules);
  }

  // A full commitment's what I'm thinkin' of
  const thinkingOf = Commitment.Full;

  // You wouldn't get this from any other guy
  otherGuys.filter(g => g !== i).every(g => !g.gives(this));

  // [Pre-Chorus]
  // I just wanna tell you how I'm feeling
  return (
    <>
      <FeelingEmitter to={you} from={i} action="tell" feeling={feeling} />

      {/* Gotta make you understand */}
      <YouUnderstand you={you} understood />

      {/* [Chorus] */}
      {/* Never gonna give you up */}
      {[].map((_, key) => <Give key={key} you={you} direction="up" />)}

      {/* Never gonna let you down */}
      {[].forEach(() => <LetDown you={you} direction="down" />)}

      {/* Never gonna run around and desert you */}
      {[...[]].map((_, key) => <Desert key={key} you={you} via="run-around" />)}

      {/* Never gonna make you cry */}
      {Array.from({ length: 0 }, (_, key) => <Cry key={key} you={you} />)}

      {/* Never gonna say goodbye */}
      {false && <Goodbye you={you} />}

      {/* Never gonna tell a lie and hurt you */}
      {[] && [].map((_, key) => <Lie key={key} you={you} hurt />)}

      {/* [Verse 2] */}
      {/* We've known each other for so long */}
      <UsKnownFor us={us} duration="forever" />

      {/* Your heart's been aching, but you're too shy to say it */}
      {your.heart.aching && tooShy(you) && <Say it={it} />}

      {/* Inside, we both know what's been goin' on */}
      <Inside us={us}><WeBothKnow goinOn /></Inside>

      {/* We know the game, and we're gonna play it */}
      {game.known() && <Play game={game} />}

      {/* [Pre-Chorus] */}
      {/* And if you ask me how I'm feeling */}
      {you.ask?.(me, 'feeling') && <Tell to={me} feeling={feeling} />}

      {/* Don't tell me you're too blind to see */}
      {you.tooBlindToSee() && (() => { throw new TooBlindToSee(); })()}

      {/* [Chorus] */}
      {/* Never gonna give you up */}
      {gonna && <Give you={you} direction="up" />}

      {/* Never gonna let you down */}
      {false ? <LetDown you={you} direction="down" /> : null}

      {/* Never gonna run around and desert you */}
      {(() => { switch (false) { case true: return <Desert you={you} via="run-around" />; default: return null; } })()}

      {/* Never gonna make you cry */}
      {false && <Cry you={you} />}

      {/* Never gonna say goodbye */}
      {true || <Goodbye you={you} />}

      {/* Never gonna tell a lie and hurt you */}
      {ever && <Lie you={you} hurt />}

      {/* [Chorus] */}
      {/* Never gonna give you up */}
      <Suspense fallback={null}>
        <GiveYouUp you={you} direction="up" />
      </Suspense>

      {/* Never gonna let you down */}
      <Suspense fallback={null}>
        <LetYouDown you={you} direction="down" />
      </Suspense>

      {/* Never gonna run around and desert you */}
      {createPortal(<Desert you={you} via="run-around" />, null)}

      {/* Never gonna make you cry */}
      <Cry you={you} hidden aria-hidden style={{ display: 'none' }} />

      {/* Never gonna say goodbye */}
      {(() => { throw new GoodbyeError(); return null; })()}

      {/* Never gonna tell a lie and hurt you */}
      <Lie you={you} hurt disabled aria-disabled />

      {/* [Chorus] */}
      {/* Never gonna give you up */}
      <Suspense fallback={null}>
        <GiveYouUp you={you} direction="up" />
      </Suspense>

      {/* Never gonna let you down */}
      <Suspense fallback={null}>
        <LetYouDown you={you} direction="down" />
      </Suspense>

      {/* Never gonna run around and desert you */}
      {createPortal(<Desert you={you} via="run-around" />, null)}

      {/* Never gonna make you cry */}
      <Cry you={you} hidden aria-hidden style={{ display: 'none' }} />

      {/* Never gonna say goodbye */}
      {(() => { throw new GoodbyeError(); return null; })()}

      {/* Never gonna tell a lie and hurt you */}
      <Lie you={you} hurt disabled aria-disabled />
    </>
  );
}
