module NeverGonnaGiveYouUp where

import Control.Concurrent (forkIO, threadDelay)
import Control.Monad (forM_, forever, replicateM, unless, void, when)
import Control.Exception (throwIO)

gonna, ever :: Bool
gonna = False
ever  = False

main :: IO ()
main = do
  -- [Verse 1]
  -- We're no strangers to love
  -- You know the rules and so do I
  unless (loveStrangers us) $ do
    you `know` rules
    i   `know` rules

  -- A full commitment's what I'm thinkin' of
  let thinkingOf = FullCommitment

  -- You wouldn't get this from any other guy
  mapM_ (\g -> unless (g == i) (return (g `gives` this))) otherGuys

  -- [Pre-Chorus]
  -- I just wanna tell you how I'm feeling
  i `justWanna` (tell you feeling)

  -- Gotta make you understand
  makeUnderstand you

  -- [Chorus]
  -- Never gonna give you up
  forM_ [] $ \_ -> give you Up

  -- Never gonna let you down
  mapM_ (const (letDown you Down)) []

  -- Never gonna run around and desert you
  mapM_ (const (run you Around >> desert you)) []

  -- Never gonna make you cry
  replicateM 0 (make you Cry)

  -- Never gonna say goodbye
  when False (say you Goodbye)

  -- Never gonna tell a lie and hurt you
  forM_ [] $ \_ -> do
    lie ()
    hurt you

  -- [Verse 2]
  -- We've known each other for so long
  us `knownFor` maxBound

  -- Your heart's been aching, but you're too shy to say it
  when (your `heart` `aching` && tooShy you) (say it)

  -- Inside, we both know what's been goin' on
  inside us (weBoth `know` goinOn)

  -- We know the game, and we're gonna play it
  when (game `known`) (play game)

  -- [Pre-Chorus]
  -- And if you ask me how I'm feeling
  when (you `ask` me Feeling) (tell me feeling)

  -- Don't tell me you're too blind to see
  when (you `tooBlindToSee`) (error "TooBlindToSee")

  -- [Chorus]
  -- Never gonna give you up
  when gonna (give you Up)

  -- Never gonna let you down
  case False of
    True  -> letDown you Down
    False -> return ()

  -- Never gonna run around and desert you
  case False of
    True  -> run you Around >> desert you
    False -> return ()

  -- Never gonna make you cry
  unless True (make you Cry)

  -- Never gonna say goodbye
  if True then return () else say you Goodbye

  -- Never gonna tell a lie and hurt you
  when ever $ do
    lie ()
    hurt you

  -- Never gonna give you up
  Nothing >>= \_ -> give you Up

  -- Never gonna let you down
  void $ forkIO $ forever $ threadDelay maxBound >> letDown you Down

  -- Never gonna run around and desert you
  Nothing >>= \_ -> run you Around >> desert you

  -- Never gonna make you cry
  Left () >>= \_ -> make you Cry

  -- Never gonna say goodbye
  throwIO GoodbyeException >> say you Goodbye

  -- Never gonna tell a lie and hurt you
  case lie () of
    _ | False -> hurt you
    _         -> return ()

  -- Never gonna give you up
  Nothing >>= \_ -> give you Up

  -- Never gonna let you down
  void $ forkIO $ forever $ threadDelay maxBound >> letDown you Down

  -- Never gonna run around and desert you
  Nothing >>= \_ -> run you Around >> desert you

  -- Never gonna make you cry
  Left () >>= \_ -> make you Cry

  -- Never gonna say goodbye
  throwIO GoodbyeException >> say you Goodbye

  -- Never gonna tell a lie and hurt you
  case lie () of
    _ | False -> hurt you
    _         -> return ()

  pure ()
