live_loop :chords do
  
  use_synth :dark_ambience
  
  play 60, amp: 2
  play 60, amp: 2
  
  sleep 1
  play 59, amp: 2
  play 59, amp: 2
  
  sleep 1
  play 58, amp: 2
  play 58, amp: 2
  
  sleep 1
  play 59, amp: 2
  play 59, amp: 2
  
  sleep 1
end

live_loop :guitar do
  sample :guit_harmonics, rate: -10, amp: 0.666
  sleep 1
  sample :guit_harmonics, rate: -5
  sleep 1
end

live_loop :chorus do
  sample :ambi_glass_rub, start: 0.5, pitch: -20, beat_stretch: 2
  sample :ambi_dark_woosh, amp: 0.666, beat_stretch: 4, start: 0.1
  sleep 1
end

live_loop :beat do
  sample :drum_bass_hard
  ##| sleep 6.5
  sleep 0.2
  sample :drum_heavy_kick
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

live_loop :cymbal do
  with_fx :level do
    sleep 0.1
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.1
    sample :drum_cymbal_closed, amp: 0.4
    sample :elec_cymbal, rate: 20, amp: 0.5
  end
end
