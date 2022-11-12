onerror {exit -code 1}
vlib work
vcom -work work bit_serial_encoder.vho
vcom -work work Waveform.vwf.vht
vsim -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.bit_serial_encoder_vhd_vec_tst
vcd file -direction bit_serial_encoder.msim.vcd
vcd add -internal bit_serial_encoder_vhd_vec_tst/*
vcd add -internal bit_serial_encoder_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
