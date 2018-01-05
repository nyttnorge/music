sad = "~/src/music/sad.wav"
load_sample sad

beat_stretch = [4, 8]
pitches = [-40, -30, -50]

live_loop :synth do
  sample :ambi_haunted_hum, amp: 0.05
  sleep 0.5
  sample :ambi_soft_buzz, amp: 0.66, pitch: -0
  sleep 3.5
end

live_loop :sad do
  2.times do
    t = pitches.choose
    puts t
    sample sad, start: 0.05, beat_stretch: 3.5, pitch: t
    sleep 4
  end
end

fxs = [:distortion, :krush, :octaver]

live_loop :beat do
  4.times do
    fx = fxs.choose
    puts fx
    with_fx fx do
      sample :loop_breakbeat, beat_stretch: beat_stretch.choose
    end
    sleep 4
  end
end
