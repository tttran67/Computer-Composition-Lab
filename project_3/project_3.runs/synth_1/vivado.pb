
u
Command: %s
53*	vivadotcl2D
0synth_design -top regfile -part xc7a200tfbg676-22default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2#
xc7a200t-fbg6762default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2#
xc7a200t-fbg6762default:defaultZ17-349h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 309.301 ; gain = 81.070
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
regfile2default:default2i
SD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/sources_1/new/regfile.v2default:default2
82default:default8@Z8-638h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	rf_reg[0]2default:default2i
SD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/sources_1/new/regfile.v2default:default2
312default:default8@Z8-6014h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
regfile2default:default2
12default:default2
12default:default2i
SD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/sources_1/new/regfile.v2default:default2
82default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 348.625 ; gain = 120.395
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 348.625 ; gain = 120.395
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
Loading part %s157*device2$
xc7a200tfbg676-22default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
resetn2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
52default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
52default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led_wen2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
82default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
82default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_raddr12default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
92default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
92default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_raddr22default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
102default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
102default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	led_waddr2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
112default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
112default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	led_wdata2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
122default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
122default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
input_sel[1]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
162default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
162default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
input_sel[0]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
172default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
172default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
resetn2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
202default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
202default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led_wen2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
212default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
212default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_raddr12default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
222default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
222default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_raddr22default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
232default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
232default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	led_waddr2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
242default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
242default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	led_wdata2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
252default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
252default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
input_sel[1]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
272default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
272default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
input_sel[0]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
282default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
282default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
lcd_rst2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
312default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
312default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
lcd_cs2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
322default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
322default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
lcd_rs2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
332default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
332default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
lcd_wr2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
342default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
342default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
lcd_rd2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
352default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
352default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

lcd_bl_ctr2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
362default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
362default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[0]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
372default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
372default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[1]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
382default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
382default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[2]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
392default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
392default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[3]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
402default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
402default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[4]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
412default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
412default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[5]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
422default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
422default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[6]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
432default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
432default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[7]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
442default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
442default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[8]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
452default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
452default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[9]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
462default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
462default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
lcd_data_io[10]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
472default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
472default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
lcd_data_io[11]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
482default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
482default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
lcd_data_io[12]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
492default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
492default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
lcd_data_io[13]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
502default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
502default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
lcd_data_io[14]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
512default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
512default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
lcd_data_io[15]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
522default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
522default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
ct_int2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
532default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
532default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
ct_sda2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
542default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
542default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
ct_scl2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
552default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
552default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
ct_rstn2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
562default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
562default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
lcd_rst2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
582default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
582default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
lcd_cs2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
592default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
592default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
lcd_rs2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
602default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
602default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
lcd_wr2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
612default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
612default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
lcd_rd2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
622default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
622default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

lcd_bl_ctr2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
632default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
632default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[0]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
642default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
642default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[1]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
652default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
652default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[2]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
662default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
662default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[3]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
672default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
672default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[4]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
682default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
682default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[5]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
692default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
692default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[6]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
702default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
702default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[7]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
712default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
712default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[8]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
722default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
722default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
lcd_data_io[9]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
732default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
732default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
lcd_data_io[10]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
742default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
742default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
lcd_data_io[11]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
752default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
752default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
lcd_data_io[12]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
762default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
762default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
lcd_data_io[13]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
772default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
772default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
lcd_data_io[14]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
782default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
782default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
lcd_data_io[15]2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
792default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
792default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
ct_int2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
802default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
802default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
ct_sda2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
812default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
812default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
ct_scl2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
822default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
822default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
ct_rstn2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
832default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2
832default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2k
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2i
UD:/My Projects/VerilogProj_2013631/project_3/project_3.srcs/constrs_1/new/regfile.xdc2default:default2-
.Xil/regfile_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
690.6952default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:27 ; elapsed = 00:00:30 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a200tfbg676-2
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:27 ; elapsed = 00:00:30 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:27 ; elapsed = 00:00:31 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[31]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[30]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[29]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[28]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[27]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[26]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[25]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[24]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[23]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[22]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[21]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[20]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[19]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[18]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[17]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[16]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[15]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[14]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[13]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[12]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[11]2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

rf_reg[10]2default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	rf_reg[9]2default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	rf_reg[8]2default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	rf_reg[7]2default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	rf_reg[6]2default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	rf_reg[5]2default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	rf_reg[4]2default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	rf_reg[3]2default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	rf_reg[2]2default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	rf_reg[1]2default:defaultZ8-5546h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:28 ; elapsed = 00:00:31 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 31    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 31    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
<
%s
*synth2$
Module regfile 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 31    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 31    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2m
YPart Resources:
DSPs: 740 (col length:100)
BRAMs: 730 (col length: RAMB18 100 RAMB36 50)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:35 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:49 ; elapsed = 00:00:53 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:50 ; elapsed = 00:00:54 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:50 ; elapsed = 00:00:54 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:51 ; elapsed = 00:00:55 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:51 ; elapsed = 00:00:55 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:51 ; elapsed = 00:00:56 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:51 ; elapsed = 00:00:56 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:51 ; elapsed = 00:00:56 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:51 ; elapsed = 00:00:56 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
C
%s*synth2+
+------+------+------+
2default:defaulth px? 
C
%s*synth2+
|      |Cell  |Count |
2default:defaulth px? 
C
%s*synth2+
+------+------+------+
2default:defaulth px? 
C
%s*synth2+
|1     |BUFG  |     1|
2default:defaulth px? 
C
%s*synth2+
|2     |LUT5  |    96|
2default:defaulth px? 
C
%s*synth2+
|3     |LUT6  |   799|
2default:defaulth px? 
C
%s*synth2+
|4     |MUXF7 |   384|
2default:defaulth px? 
C
%s*synth2+
|5     |FDRE  |   992|
2default:defaulth px? 
C
%s*synth2+
|6     |IBUF  |    54|
2default:defaulth px? 
C
%s*synth2+
|7     |OBUF  |    96|
2default:defaulth px? 
C
%s*synth2+
+------+------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|1     |top      |       |  2422|
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:52 ; elapsed = 00:00:56 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:32 ; elapsed = 00:00:42 . Memory (MB): peak = 690.695 ; gain = 120.395
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:52 ; elapsed = 00:00:56 . Memory (MB): peak = 690.695 ; gain = 462.465
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
542default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
?
?Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
regfile2default:default2
regfile2default:defaultZ29-101h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442default:default2
702default:default2
682default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:552default:default2
00:01:012default:default2
693.7342default:default2
471.0902default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2c
OD:/My Projects/VerilogProj_2013631/project_3/project_3.runs/synth_1/regfile.dcp2default:defaultZ17-1381h px? 
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.039 . Memory (MB): peak = 693.734 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Apr 27 21:24:08 20222default:defaultZ17-206h px? 


End Record