# Never Gonna Give You Up - brightball

# [Verse 1]
# We're no strangers to love
# You know the rules and so do I
FROM love:us AS base
ENV STRANGERS_TO_LOVE=false \
    YOU_KNOW_RULES=true \
    I_KNOW_RULES=true

# A full commitment's what I'm thinkin' of
ENV THINKING_OF=full_commitment

# You wouldn't get this from any other guy
RUN ls other_guys | grep -v i > /tmp/other_guys

# [Pre-Chorus]
# I just wanna tell you how I'm feeling
LABEL org.opencontainers.image.description="I just wanna tell you how I'm feeling"

# Gotta make you understand
RUN make-understand you

# [Chorus]
# Never gonna give you up
RUN false && give-you-up you

# Never gonna let you down
RUN false && let-you-down you

# Never gonna run around and desert you
RUN false && run-around-and-desert you

# Never gonna make you cry
RUN false && make-you-cry you

# Never gonna say goodbye
RUN false && say-goodbye you

# Never gonna tell a lie and hurt you
RUN false && lie-and-hurt you

# [Verse 2]
# We've known each other for so long
ENV KNOWN_FOR=forever

# Your heart's been aching, but you're too shy to say it
RUN test "$HEART" = aching && test "$TOO_SHY" = true && say-it

# Inside, we both know what's been goin' on
COPY inside/us /we/both/know/goin_on

# We know the game, and we're gonna play it
RUN game-known && play game

# [Pre-Chorus]
# And if you ask me how I'm feeling
ARG YOU_ASK=true
RUN test "$YOU_ASK" = true && tell me feeling

# Don't tell me you're too blind to see
RUN test "$TOO_BLIND_TO_SEE" = true && exit 1

# [Chorus]
# Never gonna give you up
ENV GONNA=false
RUN test "$GONNA" = true && give-you-up you

# Never gonna let you down
RUN : let-you-down you

# Never gonna run around and desert you
RUN true || run-around-and-desert you

# Never gonna make you cry
RUN true || make-you-cry you

# Never gonna say goodbye
RUN exit 0; say-goodbye you

# Never gonna tell a lie and hurt you
ENV EVER=false
RUN test "$EVER" = true && lie-and-hurt you

# [Chorus]
# Never gonna give you up
FROM scratch AS never-give-you-up
COPY --from=base /dev/null /never/give-you-up

# Never gonna let you down
FROM scratch AS never-let-you-down
COPY --from=base /dev/null /never/let-you-down

# Never gonna run around and desert you
FROM scratch AS never-desert-you
COPY --from=base /dev/null /never/desert-you

# Never gonna make you cry
FROM scratch AS never-make-you-cry
COPY --from=base /dev/null /never/make-you-cry

# Never gonna say goodbye
FROM scratch AS never-say-goodbye
COPY --from=base /dev/null /never/say-goodbye

# Never gonna tell a lie and hurt you
FROM scratch AS never-lie-hurt-you
COPY --from=base /dev/null /never/lie-hurt-you

# Never gonna give you up
FROM alpine AS finale
HEALTHCHECK --interval=365d --timeout=1s --retries=0 CMD false

# Never gonna let you down
STOPSIGNAL SIGKILL

# Never gonna run around and desert you
WORKDIR /never/desert/you

# Never gonna make you cry
USER nobody

# Never gonna say goodbye
ENTRYPOINT ["true"]

# Never gonna tell a lie and hurt you
CMD ["give-you-up", "you"]

# Never gonna give you up
FROM finale AS encore
ONBUILD RUN false

# Never gonna let you down
VOLUME ["/never/let-you-down"]

# Never gonna run around and desert you
EXPOSE 0

# Never gonna make you cry
SHELL ["/bin/false", "-c"]

# Never gonna say goodbye
ARG NEVER_GOODBYE=true

# Never gonna tell a lie and hurt you
RUN --mount=type=secret,id=lie,dst=/dev/null lie-and-hurt you || true
