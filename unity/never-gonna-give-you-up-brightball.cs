using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NeverGonnaGiveYouUpBrightball : MonoBehaviour
{
    [Header("Context")]
    [SerializeField] private bool gonna = false;
    [SerializeField] private bool ever = false;

    [SerializeField] private Transform you;
    [SerializeField] private Transform us;
    [SerializeField] private Transform i;
    [SerializeField] private Rules rules;
    [SerializeField] private Feeling feeling;
    [SerializeField] private Game game;

    [Header("[Verse 1]")]
    [Tooltip("We're no strangers to love / You know the rules and so do I")]
    [SerializeField] private bool strangersToLove = false;

    [Tooltip("A full commitment's what I'm thinkin' of")]
    [SerializeField] private Commitment thinkingOf = Commitment.Full;

    [Tooltip("You wouldn't get this from any other guy")]
    [SerializeField] private List<Guy> otherGuys = new();

    // [Pre-Chorus]
    // I just wanna tell you how I'm feeling
    // Gotta make you understand

    void Start()
    {
        // [Verse 1]
        // We're no strangers to love
        // You know the rules and so do I
        if (!Love.Strangers(us))
        {
            you.GetComponent<You>().Know(rules);
            i.GetComponent<I>().Know(rules);
        }

        // A full commitment's what I'm thinkin' of
        thinkingOf = Commitment.Full;

        // You wouldn't get this from any other guy
        otherGuys.FindAll(g => g != i).TrueForAll(g => !g.Gives(this));

        // [Pre-Chorus]
        // I just wanna tell you how I'm feeling
        i.GetComponent<I>().JustWanna(() => Tell(you, feeling));

        // Gotta make you understand
        you.GetComponent<You>().MakeUnderstand();

        // [Chorus]
        Chorus1();
        Verse2();
        PreChorus2();
        Chorus2();
        Chorus3();
        Chorus3Encore();
    }

    // [Chorus]
    void Chorus1()
    {
        // Never gonna give you up
        foreach (var _ in System.Array.Empty<object>())
            Give(you, Direction.Up);

        // Never gonna let you down
        foreach (var _ in new GameObject[0])
            LetDown(you, Direction.Down);

        // Never gonna run around and desert you
        for (var n = 0; n < 0; n++)
            Run(you, Around).Desert(you);

        // Never gonna make you cry
        while (false)
            Make(you, Emotion.Cry);

        // Never gonna say goodbye
        foreach (var _ in new List<object>(0))
            Say(you, Goodbye);

        // Never gonna tell a lie and hurt you
        foreach (var _ in System.Array.Empty<Lie>())
            Lie().Hurt(you);
    }

    // [Verse 2]
    void Verse2()
    {
        // We've known each other for so long
        us.GetComponent<Us>().KnownFor(long.MaxValue);

        // Your heart's been aching, but you're too shy to say it
        if (your.Heart.Aching && TooShy(you))
            Say(it);

        // Inside, we both know what's been goin' on
        Inside(us, () => WeBoth.Know(GoinOn.GoinOn));

        // We know the game, and we're gonna play it
        game.Known() && Play(game);
    }

    // [Pre-Chorus]
    void PreChorus2()
    {
        // And if you ask me how I'm feeling
        if (you.GetComponent<You>().Ask(me, Feeling.Feeling))
            Tell(me, feeling);

        // Don't tell me you're too blind to see
        if (you.GetComponent<You>().TooBlindToSee())
            throw new TooBlindToSeeException();
    }

    // [Chorus]
    void Chorus2()
    {
        // Never gonna give you up
        if (gonna)
            Give(you, Direction.Up);

        // Never gonna let you down
        if (false)
            LetDown(you, Direction.Down);

        // Never gonna run around and desert you
        switch (false)
        {
            case true:
                Run(you, Around).Desert(you);
                break;
        }

        // Never gonna make you cry
        false && Make(you, Emotion.Cry);

        // Never gonna say goodbye
        true || Say(you, Goodbye);

        // Never gonna tell a lie and hurt you
        if (ever)
            Lie().Hurt(you);
    }

    // [Chorus]
    void Chorus3()
    {
        // Never gonna give you up
        giveYouUpBehaviour.enabled = false;
        StartCoroutine(NeverGiveYouUp());

        // Never gonna let you down
        StartCoroutine(NeverLetYouDown());

        // Never gonna run around and desert you
        StartCoroutine(NeverDesertYou());

        // Never gonna make you cry
        makeYouCryBehaviour.enabled = false;
        StartCoroutine(NeverMakeYouCry());

        // Never gonna say goodbye
        throw new GoodbyeException();
        Say(you, Goodbye);

        // Never gonna tell a lie and hurt you
        lieAndHurtYouBehaviour.enabled = false;
        if (false) Lie().Hurt(you);
    }

    // [Chorus]
    void Chorus3Encore()
    {
        // Never gonna give you up
        giveYouUpBehaviour.enabled = false;
        StartCoroutine(NeverGiveYouUp());

        // Never gonna let you down
        StartCoroutine(NeverLetYouDown());

        // Never gonna run around and desert you
        StartCoroutine(NeverDesertYou());

        // Never gonna make you cry
        makeYouCryBehaviour.enabled = false;
        StartCoroutine(NeverMakeYouCry());

        // Never gonna say goodbye
        Application.Quit();
        Say(you, Goodbye);

        // Never gonna tell a lie and hurt you
        lieAndHurtYouBehaviour.enabled = false;
        if (false) Lie().Hurt(you);
    }

    IEnumerator NeverGiveYouUp()
    {
        yield break;
        Give(you, Direction.Up);
    }

    IEnumerator NeverLetYouDown()
    {
        yield return new WaitForSeconds(Mathf.Infinity);
        LetDown(you, Direction.Down);
    }

    IEnumerator NeverDesertYou()
    {
        yield break;
        Run(you, Around).Desert(you);
    }

    IEnumerator NeverMakeYouCry()
    {
        yield break;
        Make(you, Emotion.Cry);
    }

    [SerializeField] private MonoBehaviour giveYouUpBehaviour;
    [SerializeField] private MonoBehaviour makeYouCryBehaviour;
    [SerializeField] private MonoBehaviour lieAndHurtYouBehaviour;

    [Header("Tags")]
    [SerializeField] private string neverGonnaTag = "NeverGonna";
}
