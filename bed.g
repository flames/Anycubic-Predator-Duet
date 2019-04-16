; bed.g
; called to perform automatic delta calibration via G32
;
; generated by RepRapFirmware Configuration Tool v2 on Mon Apr 08 2019 07:52:58 GMT+0100 (British Summer Time)
M561 ; clear any bed transform
G28  ; home all towers
; Probe the bed at 6 peripheral and 6 halfway points, and perform 6-factor auto compensation
; Before running this, you should have set up your Z-probe trigger height to suit your build, in the G31 command in config.g.
G30 P0 X0 Y169.9 H0 Z-99999
G30 P1 X147.14 Y84.95 H0 Z-99999
G30 P2 X147.14 Y-84.95 H0 Z-99999
G30 P3 X0 Y-169.9 H0 Z-99999
G30 P4 X-147.14 Y-84.95 H0 Z-99999
G30 P5 X-147.14 Y84.95 H0 Z-99999
G30 P6 X0 Y84.9 H0 Z-99999
G30 P7 X73.53 Y42.45 H0 Z-99999
G30 P8 X73.53 Y-42.45 H0 Z-99999
G30 P9 X0 Y-84.9 H0 Z-99999
G30 P10 X-73.53 Y-42.45 H0 Z-99999
G30 P11 X-73.53 Y42.45 H0 Z-99999
G30 P12 X0 Y0 H0 Z-99999 S6
; Use S-1 for measurements only, without calculations. Use S4 for endstop heights and Z-height only. Use S6 for full 6 factors
; If your Z probe has significantly different trigger heights depending on XY position, adjust the H parameters in the G30 commands accordingly. The value of each H parameter should be (trigger height at that XY position) - (trigger height at centre of bed)
G29

