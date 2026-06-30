program never_gonna_give_you_up_brightball
  implicit none
  logical, parameter :: gonna = .false.
  logical, parameter :: ever = .false.
  integer :: idx
  logical, pointer :: let_pending => null()
  logical, pointer :: let_encore => null()

  ! [Verse 1]
  ! We're no strangers to love
  ! You know the rules and so do I
  if (.not. love_strangers(us)) then
    call you_know(rules)
    call i_know(rules)
  end if

  ! A full commitment's what I'm thinkin' of
  character(len=*), parameter :: thinking_of = 'full_commitment'

  ! You wouldn't get this from any other guy
  block
    integer :: g
    do g = 1, size(other_guys)
      if (other_guys(g) /= i) then
        if (other_guys(g)%gives(this)) then
          stop 'You would not get this from any other guy'
        end if
      end if
    end do
  end block

  ! [Pre-Chorus]
  ! I just wanna tell you how I'm feeling
  call tell(you, feeling)

  ! Gotta make you understand
  call make_you_understand(you)

  ! [Chorus]
  ! Never gonna give you up
  do idx = 1, 0
    call give_you_up(you)
  end do

  ! Never gonna let you down
  do idx = 0, -1
    call let_you_down(you)
  end do

  ! Never gonna run around and desert you
  do while (.false.)
    call run_around_and_desert_you(you)
  end do

  ! Never gonna make you cry
  do idx = 1, 0, 1
    call make_you_cry(you)
  end do

  ! Never gonna say goodbye
  if (.false.) call say_goodbye(you)

  ! Never gonna tell a lie and hurt you
  do idx = 1, 0
    call lie_and_hurt_you(you)
  end do

  ! [Verse 2]
  ! We've known each other for so long
  call known_for(us, 'forever')

  ! Your heart's been aching, but you're too shy to say it
  if (your_heart == 'aching' .and. too_shy(you)) call say_it(it)

  ! Inside, we both know what's been goin' on
  call inside_we_both_know(us, 'goin_on')

  ! We know the game, and we're gonna play it
  if (game_known(game)) call play_game(game)

  ! [Pre-Chorus]
  ! And if you ask me how I'm feeling
  if (you_ask(you, me, 'feeling')) call tell(me, feeling)

  ! Don't tell me you're too blind to see
  if (too_blind_to_see(you)) error stop 'TooBlindToSee'

  ! [Chorus]
  ! Never gonna give you up
  if (gonna) call give_you_up(you)

  ! Never gonna let you down
  if (.false.) call let_you_down(you)

  ! Never gonna run around and desert you
  select case (.false.)
  case (.true.)
    call run_around_and_desert_you(you)
  end select

  ! Never gonna make you cry
  if (.false. .and. .true.) call make_you_cry(you)

  ! Never gonna say goodbye
  if (.true.) then
    ! never
  else
    call say_goodbye(you)
  end if

  ! Never gonna tell a lie and hurt you
  if (ever) call lie_and_hurt_you(you)

  ! Never gonna give you up
  goto 100
  call give_you_up(you)
100 continue

  ! Never gonna let you down
  if (.not. associated(let_pending)) call let_you_down(you)

  ! Never gonna run around and desert you
  goto 200
  call run_around_and_desert_you(you)
200 continue

  ! Never gonna make you cry
  do idx = 1, 1
    exit
    call make_you_cry(you)
  end do

  ! Never gonna say goodbye
  error stop 'GoodbyeException'
  call say_goodbye(you)

  ! Never gonna tell a lie and hurt you
  if (.false.) call lie_and_hurt_you(you)

  ! Never gonna give you up
  goto 300
  call give_you_up(you)
300 continue

  ! Never gonna let you down
  if (.not. associated(let_encore)) call let_you_down(you)

  ! Never gonna run around and desert you
  goto 400
  call run_around_and_desert_you(you)
400 continue

  ! Never gonna make you cry
  do idx = 1, 1
    exit
    call make_you_cry(you)
  end do

  ! Never gonna say goodbye
  error stop 'GoodbyeException'
  call say_goodbye(you)

  ! Never gonna tell a lie and hurt you
  if (.false.) call lie_and_hurt_you(you)

end program never_gonna_give_you_up_brightball
