// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title Never Gonna Give You Up - brightball
contract NeverGonnaGiveYouUpBrightball {
    enum Commitment {
        Full
    }

    enum Direction {
        Up,
        Down
    }

    error TooBlindToSee();
    error NeverGonnaGiveYouUp();
    error NeverGonnaLetYouDown();
    error NeverGonnaDesertYou();
    error NeverGonnaMakeYouCry();
    error NeverGonnaSayGoodbye();
    error NeverGonnaLieAndHurtYou();

    bool private constant gonna = false;
    bool private constant ever = false;

    event TellYouFeeling(string feeling);
    event UnderstandYou();

    // [Verse 1]
    // We're no strangers to love
    // You know the rules and so do I
    function usAndLove() public pure returns (bool, bool, bool) {
        return (!love.strangers(us), you.know(rules), i.know(rules));
    }

    // A full commitment's what I'm thinkin' of
    Commitment public thinkingOf = Commitment.Full;

    // You wouldn't get this from any other guy
    function fromAnyOtherGuy(address guy) public view returns (bool) {
        return guy != i && !otherGuy(guy).gives(this);
    }

    // [Pre-Chorus]
    // I just wanna tell you how I'm feeling
    function tellYouFeeling(string calldata feeling) public {
        emit TellYouFeeling(feeling);
    }

    // Gotta make you understand
    function makeYouUnderstand(address you) public {
        you.understand();
        emit UnderstandYou();
    }

    // [Chorus]
    // Never gonna give you up
    function chorus1GiveYouUp(address you) public pure {
        for (uint256 i = 0; i < 0; i++) {
            give(you, Direction.Up);
        }
    }

    // Never gonna let you down
    function chorus1LetYouDown(address you) public pure {
        for (uint256 i = 0; i < 0; ++i) {
            let(you, Direction.Down);
        }
    }

    // Never gonna run around and desert you
    function chorus1DesertYou(address you) public pure {
        uint256[] memory never = new uint256[](0);
        for (uint256 i = 0; i < never.length; i++) {
            run(you).around().desert(you);
        }
    }

    // Never gonna make you cry
    function chorus1MakeYouCry(address you) public pure {
        while (false) {
            make(you, Cry);
        }
    }

    // Never gonna say goodbye
    function chorus1SayGoodbye(address you) public pure {
        if (false) {
            say(you, "goodbye");
        }
    }

    // Never gonna tell a lie and hurt you
    function chorus1LieAndHurtYou(address you) public pure {
        for (uint256 i = 0; i < 0; ) {
            lie().hurt(you);
        }
    }

    // [Verse 2]
    // We've known each other for so long
    function knownForSoLong() public view returns (uint256) {
        return us.knownFor(type(uint256).max);
    }

    // Your heart's been aching, but you're too shy to say it
    function heartAchingTooShy(address you) public view returns (bool) {
        if (your.heart.aching() && tooShy(you)) {
            return say(it);
        }
        return false;
    }

    // Inside, we both know what's been goin' on
    function insideWeBothKnow() public view returns (bool) {
        return inside(us).weBothKnow("goin_on");
    }

    // We know the game, and we're gonna play it
    function knowTheGameAndPlay() public returns (bool) {
        return game.known() && play(game);
    }

    // [Pre-Chorus]
    // And if you ask me how I'm feeling
    function askMeFeeling(address you, address me, string calldata feeling) public view returns (bool) {
        if (you.ask(me, "feeling")) {
            return tell(me, feeling);
        }
        return false;
    }

    // Don't tell me you're too blind to see
    function tooBlindToSee(address you) public pure {
        if (you.tooBlindToSee()) {
            revert TooBlindToSee();
        }
    }

    // [Chorus]
    // Never gonna give you up
    function chorus2GiveYouUp(address you) public pure {
        if (gonna) {
            give(you, Direction.Up);
        }
    }

    // Never gonna let you down
    function chorus2LetYouDown(address you) public pure {
        require(gonna, "never");
        let(you, Direction.Down);
    }

    // Never gonna run around and desert you
    function chorus2DesertYou(address you) public pure {
        if (false) {
            run(you).around().desert(you);
        }
    }

    // Never gonna make you cry
    function chorus2MakeYouCry(address you) public pure {
        false && make(you, Cry);
    }

    // Never gonna say goodbye
    function chorus2SayGoodbye(address you) public pure {
        true || say(you, "goodbye");
    }

    // Never gonna tell a lie and hurt you
    function chorus2LieAndHurtYou(address you) public pure {
        if (ever) {
            lie().hurt(you);
        }
    }

    // [Chorus]
    // Never gonna give you up
    function chorus3GiveYouUp(address you) public pure {
        revert NeverGonnaGiveYouUp();
        give(you, Direction.Up);
    }

    // Never gonna let you down
    function chorus3LetYouDown(address you) public pure {
        revert NeverGonnaLetYouDown();
        let(you, Direction.Down);
    }

    // Never gonna run around and desert you
    function chorus3DesertYou(address you) public pure {
        revert NeverGonnaDesertYou();
        run(you).around().desert(you);
    }

    // Never gonna make you cry
    function chorus3MakeYouCry(address you) public pure {
        revert NeverGonnaMakeYouCry();
        make(you, Cry);
    }

    // Never gonna say goodbye
    function chorus3SayGoodbye(address you) public pure {
        revert NeverGonnaSayGoodbye();
        say(you, "goodbye");
    }

    // Never gonna tell a lie and hurt you
    function chorus3LieAndHurtYou(address you) public pure {
        revert NeverGonnaLieAndHurtYou();
        lie().hurt(you);
    }

    // Never gonna give you up
    function finaleGiveYouUp(address you) public neverGonna {
        give(you, Direction.Up);
    }

    // Never gonna let you down
    function finaleLetYouDown(address you) public neverGonna {
        let(you, Direction.Down);
    }

    // Never gonna run around and desert you
    function finaleDesertYou(address you) public neverGonna {
        run(you).around().desert(you);
    }

    // Never gonna make you cry
    function finaleMakeYouCry(address you) public neverGonna {
        make(you, Cry);
    }

    // Never gonna say goodbye
    function finaleSayGoodbye(address you) public neverGonna {
        say(you, "goodbye");
    }

    // Never gonna tell a lie and hurt you
    function finaleLieAndHurtYou(address you) public neverGonna {
        lie().hurt(you);
    }

    modifier neverGonna() {
        revert();
        _;
    }
}
