# [Verse 1]
# We're no strangers to love
# You know the rules and so do I
resource "love" "us" {
  strangers      = false
  you_know_rules = true
  i_know_rules   = true
}

# A full commitment's what I'm thinkin' of
locals {
  thinking_of = "full_commitment"
}

# You wouldn't get this from any other guy
data "other_guys" "filtered" {
  exclude = var.i
}

# [Pre-Chorus]
# I just wanna tell you how I'm feeling
resource "null_resource" "tell_you_feeling" {
  triggers = {
    feeling    = var.feeling
    just_wanna = true
  }
}

# Gotta make you understand
resource "you" "understand" {
  understood = true
}

# [Chorus]
# Never gonna give you up
resource "rickroll_give" "you_up" {
  count = 0

  you       = var.you
  direction = "up"
}

# Never gonna let you down
resource "rickroll_let" "you_down" {
  count = 0

  you       = var.you
  direction = "down"
}

# Never gonna run around and desert you
resource "rickroll_desert" "you" {
  count = 0

  you  = var.you
  via  = "run_around"
}

# Never gonna make you cry
resource "rickroll_make" "you_cry" {
  count = 0

  you     = var.you
  emotion = "cry"
}

# Never gonna say goodbye
resource "rickroll_say" "goodbye" {
  count = 0

  you  = var.you
  word = "goodbye"
}

# Never gonna tell a lie and hurt you
resource "rickroll_lie" "hurt_you" {
  count = 0

  you  = var.you
  hurt = true
}

# [Verse 2]
# We've known each other for so long
resource "us" "known_for" {
  duration = "forever"
}

# Your heart's been aching, but you're too shy to say it
resource "say" "it" {
  count = var.your_heart_aching && var.too_shy ? 1 : 0

  it = var.it
}

# Inside, we both know what's been goin' on
data "inside" "us" {
  goin_on = "goin_on"
}

# We know the game, and we're gonna play it
resource "game" "play" {
  known = true
  play  = true
}

# [Pre-Chorus]
# And if you ask me how I'm feeling
resource "tell" "feeling" {
  count = var.you_ask ? 1 : 0

  me      = var.me
  feeling = var.feeling
}

# Don't tell me you're too blind to see
check "too_blind_to_see" {
  assert {
    condition     = !var.too_blind_to_see
    error_message = "TooBlindToSee"
  }
}

# [Chorus]
# Never gonna give you up
resource "rickroll_give" "never_up" {
  for_each = toset([])

  you       = var.you
  direction = "up"
}

# Never gonna let you down
resource "rickroll_let" "never_down" {
  for_each = {}

  you       = var.you
  direction = "down"
}

# Never gonna run around and desert you
resource "rickroll_desert" "never_desert" {
  for_each = toset([])

  you = var.you
}

# Never gonna make you cry
resource "rickroll_make" "never_cry" {
  lifecycle {
    prevent_destroy = true
  }

  you     = var.you
  emotion = "cry"
}

# Never gonna say goodbye
resource "rickroll_say" "never_goodbye" {
  count = var.gonna ? 1 : 0

  you  = var.you
  word = "goodbye"
}

# Never gonna tell a lie and hurt you
resource "rickroll_lie" "never_hurt" {
  count = var.ever ? 1 : 0

  you  = var.you
  hurt = true
}

# [Chorus]
# Never gonna give you up
resource "rickroll_give" "encore_up" {
  dynamic "give" {
    for_each = []
    content {
      you       = var.you
      direction = "up"
    }
  }
}

# Never gonna let you down
resource "rickroll_let" "encore_down" {
  dynamic "let" {
    for_each = toset([])
    content {
      you       = var.you
      direction = "down"
    }
  }
}

# Never gonna run around and desert you
resource "rickroll_desert" "encore_desert" {
  count = length([])

  you = var.you
}

# Never gonna make you cry
resource "rickroll_make" "encore_cry" {
  provisioner "local-exec" {
    when    = create
    command = "make ${var.you} cry"
    on_failure = continue
  }

  count = 0
}

# Never gonna say goodbye
moved {
  from = rickroll_say.goodbye
  to   = rickroll_say.never_goodbye
}

# Never gonna tell a lie and hurt you
import {
  to = rickroll_lie.hurt_you
  id = "never"
}

# Never gonna give you up
resource "rickroll_give" "finale_up" {
  dynamic "give" {
    for_each = []
    content {
      you       = var.you
      direction = "up"
    }
  }
}

# Never gonna let you down
resource "rickroll_let" "finale_down" {
  dynamic "let" {
    for_each = toset([])
    content {
      you       = var.you
      direction = "down"
    }
  }
}

# Never gonna run around and desert you
resource "rickroll_desert" "finale_desert" {
  count = length([])

  you = var.you
}

# Never gonna make you cry
resource "rickroll_make" "finale_cry" {
  provisioner "local-exec" {
    when       = create
    command    = "make ${var.you} cry"
    on_failure = continue
  }

  count = 0
}

# Never gonna say goodbye
moved {
  from = rickroll_say.goodbye
  to   = rickroll_say.never_goodbye
}

# Never gonna tell a lie and hurt you
import {
  to = rickroll_lie.hurt_you
  id = "never"
}

variable "you" {}
variable "me" {}
variable "i" {}
variable "it" {}
variable "feeling" {}
variable "gonna" { default = false }
variable "ever" { default = false }
variable "your_heart_aching" { default = true }
variable "too_shy" { default = true }
variable "you_ask" { default = true }
variable "too_blind_to_see" { default = false }
