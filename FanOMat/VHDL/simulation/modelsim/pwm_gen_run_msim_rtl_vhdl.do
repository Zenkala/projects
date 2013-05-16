transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/My Dropbox/Projects/GIT/workspace/FanOMat/VHDL/pwm_gen.vhd}
vcom -93 -work work {D:/My Dropbox/Projects/GIT/workspace/FanOMat/VHDL/interface.vhd}
vcom -93 -work work {D:/My Dropbox/Projects/GIT/workspace/FanOMat/VHDL/demux.vhd}
vcom -93 -work work {D:/My Dropbox/Projects/GIT/workspace/FanOMat/VHDL/counter.vhd}
vcom -93 -work work {D:/My Dropbox/Projects/GIT/workspace/FanOMat/VHDL/compare_block.vhd}

