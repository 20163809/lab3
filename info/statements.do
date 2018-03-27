# Sukuriamas katalogas work
vlib work

# Kompiliuojamas failas not4bit.vhd
vcom -work work statements.vhd

# Modeliavimas atliekamas su not4bit failu
vsim statements

# Pamatyti rezultatus atidaromi langai wave, signals, structure
view wave
view signals
view structure

# Nurodomi signalai norimi matyti lange wave, t. y. paduodami i_bit1 ir i_bit2 bei rezultato o_xor
add wave -noupdate -divider -height 32 Inputs 
add wave i_c
add wave i_b
add wave i_a

add wave -noupdate -divider -height 32 Outputs
add wave o_f0
add wave o_f1
add wave o_f2

# Suformuojami testiniai signalai. Pirmos dvi eilutės apibrėžia signalus pradžioje, t. y. ties 0 ns. Toliau išvardytos reikšmių lentelės eilutės nurodant pradžią ns 
force -deposit i_c 0 0
force -deposit i_b 0 0
force -deposit i_a 0 0


force -deposit i_c 0 10
force -deposit i_b 0 10
force -deposit i_a 0 10

force -deposit i_c 0 20
force -deposit i_b 0 20
force -deposit i_a 1 20


force -deposit i_c 0 30
force -deposit i_b 1 30
force -deposit i_a 0 30

force -deposit i_c 0 40
force -deposit i_b 1 40
force -deposit i_a 1 40

force -deposit i_c 1 50
force -deposit i_b 0 50
force -deposit i_a 0 50

force -deposit i_c 1 60
force -deposit i_b 0 60
force -deposit i_a 1 60

force -deposit i_c 1 70
force -deposit i_b 1 70
force -deposit i_a 0 70

force -deposit i_c 1 80
force -deposit i_b 1 80
force -deposit i_a 1 80

# Paleisti modeliavimą 30 ns
run 90 ns
