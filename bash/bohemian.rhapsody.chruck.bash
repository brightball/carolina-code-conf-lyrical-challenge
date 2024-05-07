#!/bin/bash

# Submitted by Jas Eckard

# [Verse 1]
# Mama, just killed a man
pkill -SIGKILL --parent $(pidof Mama) man    # bash
