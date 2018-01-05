sad = "~/src/music/sad.wav"
load_sample sad

beat_stretch = [4, 8]
pitches = [5, 6, 7]

live_loop :synth do
  sample :ambi_piano, amp: 0.08
  sleep 4
end

live_loop :sad do
  rev = rand(1) > 0.5 ? 0.5 : -0.5
  sample sad, pitch: pitches.choose, amp: 0.25, rate: rev
  sleep 24
end

live_loop :beat do
  sample :bd_808
  sleep 0.2
  sample :bd_808, amp: 0.5
  sleep 2
end

right = true
live_loop :cymbal do
  right = !right
  rev = right ? 1 : -1
  sample :perc_snap, amp: 0.02, pan: rev
  sleep 1.1
end
