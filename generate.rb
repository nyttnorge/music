live_loop :foo2 do
  with_fx :ixi_techno do
    notes = scale :e3, :major_pentatonic, num_octaves: 2
    play notes.choose, release: 0.01, pitch: -5
    sleep 0.125
  end
end

live_loop :foo3 do
  sync :foo2
  notes = scale :e3, :minor_pentatonic, num_octaves: 2
  play notes.tick, release: 0.1, pitch: -20
  sleep 0.125
end

live_loop :beats do
  sample :bd_ada
  sleep 0.5
end

live_loop :choir do
  sample :ambi_glass_hum, pitch: -50
  sleep 0.5
  sample :ambi_drone, pitch: -20
  sleep 0.5
end
