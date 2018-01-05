define :pitch do
  sample :ambi_choir, beat_stretch: 4, pitch: 24
  sleep 4
  sample :ambi_choir, beat_stretch: 4, pitch: 20
  sleep 4
  
  sample :ambi_choir, beat_stretch: 5, pitch: 20
  sleep 4
  
  sample :ambi_choir, beat_stretch: 5, pitch: 24
  sleep 4
end

define :bass do
  play 34, amp: 8, release: 2
  play 46, amp: 5, release: 2
  play 46, amp: 5, release: 2
  
  sleep 1
  play 35, amp: 8, release: 2
  
  play 47, amp: 5, release: 2
  play 47, amp: 5, release: 2
  
  sleep 1
  play 36, amp: 8, release: 2
  
  play 48, amp: 5, release: 2
  play 48, amp: 5, release: 2
  
  sleep 1
  play 35, amp: 8, release: 2
  
  play 47, amp: 5, release: 2
  play 47, amp: 5, release: 2
  
  sleep 1
end

define :chords do
  play 60, amp: 2.5
  play 60, amp: 2.5
  
  sleep 1
  play 59, amp: 2.5
  play 59, amp: 2.5
  
  sleep 1
  play 58, amp: 2.5
  play 58, amp: 2.5
  
  sleep 1
  play 59, amp: 2.5
  play 59, amp: 2.5
  
  sleep 1
end

define :guitar do
  sample :guit_harmonics, rate: -10, amp: 0.666
  sleep 1
  sample :guit_harmonics, rate: -5
  sleep 1
end

define :chorus do
  sample :ambi_glass_rub, start: 0.5, pitch: -20, beat_stretch: 2
  sample :ambi_dark_woosh, amp: 0.666, beat_stretch: 4, start: 0.1
  sleep 1
end

define :beats do |tempo|
  sample :drum_bass_hard
  sample :drum_bass_hard
  if tempo != :full
    sleep 6
  else
    sleep 0.2
    sample :drum_heavy_kick
  end
  
  if tempo == :full
    sleep 0.1
    sample :drum_snare_hard, amp: 0.3
    
    sleep 0.2
    sample :drum_snare_hard, amp: 0.3
    
    sleep 0.1
    sample :drum_heavy_kick, attack: 10, amp: 0.666
    sleep 0.1
    sample :drum_snare_soft, amp: 0.5
    sleep 0.1
    sample :drum_snare_hard, amp: 0.3
    sleep 0.2
  end
end

define :cymbal do
  sleep 0.1
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.1
  sample :drum_cymbal_closed, amp: 0.4
  sample :elec_cymbal, rate: 20, amp: 0.5
end

live_loop :pitch do
  ##| pitch
end

live_loop :bass do
  use_synth :hollow
  ##| use_synth :hoover
  
  bass
end

live_loop :chords do
  use_synth :dark_ambience
  chords
end

live_loop :guitar do
  guitar
end

live_loop :chorus do
  ##| chorus
end

live_loop :beat do
  ##| beats(:intro)
  ##| beats(:build)
  beats(:full)
end

live_loop :cymbal do
  with_fx :level do
    cymbal
  end
end
