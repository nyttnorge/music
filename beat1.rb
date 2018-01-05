live_loop :beats do
  sample :drum_bass_hard
  sample :drum_bass_hard
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard, amp: 0.3
  
  sample :drum_snare_hard, amp: 0.3
  
  sample :drum_heavy_kick, attack: 10, amp: 0.666
  sample :drum_snare_soft, amp: 0.5
  sample :drum_snare_hard, amp: 0.3
  sleep 1
end

live_loop :cymbal do
  sleep 0.2
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.2
  sample :drum_cymbal_closed, amp: 0.4
  sample :elec_cymbal, rate: 20, amp: 0.5
end

