require 'rubygems'
require 'bundler'
Bundler.setup

require 'bloops'

# zelda's lullaby
  b = Bloops.new
  b.tempo = 90

# the instrument
  ocarina         = b.sound Bloops::SINE
  ocarina.sustain = 1

# the melody
  b.tune ocarina,
    "2e4 4g4 2d4 8c4 8d4 2e4 4g4 2d4 3 " +
    "2e4 4g4 2d5 4c5 2g4 8f4 8e4 2d4"
# and away we go
  b.play
  sleep 1 while !b.stopped?