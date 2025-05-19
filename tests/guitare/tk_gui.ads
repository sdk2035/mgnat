
--
--  GUITARE Project
--
--  $Id: tk_gui_template.ads,v 1.2 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Tcl;

package Tk_GUI is

   procedure Init (Interp : in Tcl.Tcl_Interp);

   Callbacks_Tcl : constant String :=
     --tcl2ada ../gui/callbacks.tcl
"proc display_notes {w var} {" & Ascii.LF &
"upvar $var lv" & Ascii.LF &
"proc switch_cd {r} {" & Ascii.LF &
" $r configure -text ""C#"" -value ""C#"" -command ""switch_db $r""" & Ascii.LF &
" $r select" & Ascii.LF &
"}" & Ascii.LF &
"proc switch_db {r} {" & Ascii.LF &
" $r configure -text ""Db"" -value ""Db"" -command ""switch_cd $r""" & Ascii.LF &
" $r select" & Ascii.LF &
"}" & Ascii.LF &
"proc switch_dd {r} {" & Ascii.LF &
" $r configure -text ""D#"" -value ""D#"" -command ""switch_eb $r""" & Ascii.LF &
" $r select" & Ascii.LF &
"}" & Ascii.LF &
"proc switch_eb {r} {" & Ascii.LF &
" $r configure -text ""Eb"" -value ""Eb"" -command ""switch_dd $r""" & Ascii.LF &
" $r select" & Ascii.LF &
"}" & Ascii.LF &
"proc switch_fd {r} {" & Ascii.LF &
" $r configure -text ""F#"" -value ""F#"" -command ""switch_gb $r""" & Ascii.LF &
" $r select" & Ascii.LF &
"}" & Ascii.LF &
"proc switch_gb {r} {" & Ascii.LF &
" $r configure -text ""Gb"" -value ""Gb"" -command ""switch_fd $r""" & Ascii.LF &
" $r select" & Ascii.LF &
"}" & Ascii.LF &
"proc switch_gd {r} {" & Ascii.LF &
" $r configure -text ""G#"" -value ""G#"" -command ""switch_ab $r""" & Ascii.LF &
" $r select" & Ascii.LF &
"}" & Ascii.LF &
"proc switch_ab {r} {" & Ascii.LF &
" $r configure -text ""Ab"" -value ""Ab"" -command ""switch_gd $r""" & Ascii.LF &
" $r select" & Ascii.LF &
"}" & Ascii.LF &
"proc switch_ad {r} {" & Ascii.LF &
" $r configure -text ""A#"" -value ""A#"" -command ""switch_bb $r""" & Ascii.LF &
" $r select" & Ascii.LF &
"}" & Ascii.LF &
"proc switch_bb {r} {" & Ascii.LF &
" $r configure -text ""Bb"" -value ""Bb"" -command ""switch_ad $r""" & Ascii.LF &
" $r select" & Ascii.LF &
"}" & Ascii.LF &
"radiobutton $w.c  -text ""C""  -value ""C""  -variable $var" & Ascii.LF &
"if {""$lv"" == ""Db""} {" & Ascii.LF &
" radiobutton $w.cd -text ""Db"" -value ""Db"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_cd $w.cd""" & Ascii.LF &
"} elseif {""$lv"" == ""C#""} {" & Ascii.LF &
" radiobutton $w.cd -text ""C#"" -value ""C#"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_db $w.cd""" & Ascii.LF &
"} else {" & Ascii.LF &
" radiobutton $w.cd -text ""C#"" -value ""C#"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_cd $w.cd""" & Ascii.LF &
"}" & Ascii.LF &
"radiobutton $w.d  -text ""D""  -value ""D""  -variable $var -width 2" & Ascii.LF &
"if {""$lv"" == ""Eb""} {" & Ascii.LF &
" radiobutton $w.dd -text ""Eb"" -value ""Eb"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_dd $w.dd""" & Ascii.LF &
"} elseif {""$lv"" == ""D#""} {" & Ascii.LF &
" radiobutton $w.dd -text ""D#"" -value ""D#"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_eb $w.dd""" & Ascii.LF &
"} else {" & Ascii.LF &
" radiobutton $w.dd -text ""D#"" -value ""D#"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_dd $w.dd""" & Ascii.LF &
"}" & Ascii.LF &
"radiobutton $w.e  -text ""E""  -value ""E""  -variable $var -width 2" & Ascii.LF &
"radiobutton $w.f  -text ""F""  -value ""F""  -variable $var -width 2" & Ascii.LF &
"if {""$lv"" == ""Gb""} {" & Ascii.LF &
" radiobutton $w.fd -text ""Gb"" -value ""Gb"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_fd $w.fd""" & Ascii.LF &
"} elseif {""$lv"" == ""F#""} {" & Ascii.LF &
" radiobutton $w.fd -text ""F#"" -value ""F#"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_gb $w.fd""" & Ascii.LF &
"} else {" & Ascii.LF &
" radiobutton $w.fd -text ""F#"" -value ""F#"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_fd $w.fd""" & Ascii.LF &
"}" & Ascii.LF &
"radiobutton $w.g  -text ""G""  -value ""G""  -variable $var -width 2" & Ascii.LF &
"if {""$lv"" == ""Ab""} {" & Ascii.LF &
" radiobutton $w.gd -text ""Ab"" -value ""Ab"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_gd $w.gd""" & Ascii.LF &
"} elseif {""$lv"" == ""G#""} {" & Ascii.LF &
" radiobutton $w.gd -text ""G#"" -value ""G#"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_ab $w.gd""" & Ascii.LF &
"} else {" & Ascii.LF &
" radiobutton $w.gd -text ""G#"" -value ""G#"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_gd $w.gd""" & Ascii.LF &
"}" & Ascii.LF &
"radiobutton $w.a  -text ""A""  -value ""A""  -variable $var -width 2" & Ascii.LF &
"if {""$lv"" == ""Bb""} {" & Ascii.LF &
" radiobutton $w.ad -text ""Bb"" -value ""Bb"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_ad $w.ad""" & Ascii.LF &
"} elseif {""$lv"" == ""A#""} {" & Ascii.LF &
" radiobutton $w.ad -text ""A#"" -value ""A#"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_bb $w.ad""" & Ascii.LF &
"} else {" & Ascii.LF &
" radiobutton $w.ad -text ""A#"" -value ""A#"" -variable $var -width 2 \" & Ascii.LF &
"  -command ""switch_ad $w.ad""" & Ascii.LF &
"}" & Ascii.LF &
"radiobutton $w.b  -text ""B""  -value ""B""  -variable $var -width 2" & Ascii.LF &
"pack $w" & Ascii.LF &
"pack $w.c $w.cd $w.d $w.dd $w.e $w.f $w.fd $w.g $w.gd $w.a $w.ad $w.b \" & Ascii.LF &
"     -side left" & Ascii.LF &
"}" & Ascii.LF &
"namespace eval Command {" & Ascii.LF &
"proc Chord {} {" & Ascii.LF &
" set chord_name """"" & Ascii.LF &
" toplevel .topchord" & Ascii.LF &
" wm title .topchord ""Chords""" & Ascii.LF &
" wm resizable .topchord false false" & Ascii.LF &
" " & Ascii.LF &
" set w .topchord.f1" & Ascii.LF &
" frame $w" & Ascii.LF &
" label $w.label -text ""Enter a chord name """ & Ascii.LF &
" entry $w.entry -textvariable chord_name" & Ascii.LF &
" pack $w" & Ascii.LF &
" pack $w.label $w.entry -side left" & Ascii.LF &
" bind $w.entry <KeyPress-Return> \" & Ascii.LF &
"  {display_chord $chord_name ; destroy .topchord}" & Ascii.LF &
" " & Ascii.LF &
" # buttons" & Ascii.LF &
" set w .topchord.f10" & Ascii.LF &
" frame $w" & Ascii.LF &
" " & Ascii.LF &
" button $w.ok -text ""Ok"" \" & Ascii.LF &
"  -command {display_chord $chord_name ; destroy .topchord}" & Ascii.LF &
" button $w.cancel -text ""Cancel"" -command {destroy .topchord}" & Ascii.LF &
" " & Ascii.LF &
" pack $w -expand true -fill x" & Ascii.LF &
" pack $w.ok $w.cancel -side left -expand true -fill x" & Ascii.LF &
"}" & Ascii.LF &
"proc Scale {} {" & Ascii.LF &
" set BC ""0098C4""" & Ascii.LF &
" global note mode" & Ascii.LF &
" set note ""C""" & Ascii.LF &
" set mode ""Major""" & Ascii.LF &
" " & Ascii.LF &
" toplevel .topscale" & Ascii.LF &
" wm title .topscale ""Scales""" & Ascii.LF &
" wm resizable .topscale false false" & Ascii.LF &
" " & Ascii.LF &
" label .topscale.label1 -background #$BC \" & Ascii.LF &
"  -text ""Enter the scale root note and the scale mode"" \" & Ascii.LF &
"  -relief raised" & Ascii.LF &
" pack .topscale.label1 -expand true -fill x " & Ascii.LF &
" " & Ascii.LF &
" set w .topscale.rbuttons" & Ascii.LF &
" frame $w" & Ascii.LF &
" " & Ascii.LF &
" display_notes $w note" & Ascii.LF &
" # whith 5 notes" & Ascii.LF &
" set w .topscale.l5" & Ascii.LF &
" frame $w" & Ascii.LF &
" label $w.label -text ""5 notes scales"" -relief groove" & Ascii.LF &
" pack $w -expand true -fill x" & Ascii.LF &
" pack $w.label -side left" & Ascii.LF &
" " & Ascii.LF &
" set w .topscale.f5" & Ascii.LF &
" frame $w" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.pmaj -text ""Pentatonic major"" \" & Ascii.LF &
"  -value ""Pentatonic_Major"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.pmin -text ""Pentatonic minor"" \" & Ascii.LF &
"  -value ""Pentatonic_Minor"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.kumoi -text ""Kumoi"" \" & Ascii.LF &
"  -value ""Kumoi"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.hiro -text ""Hirojoshi"" \" & Ascii.LF &
"  -value ""Hirojoshi"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" pack $w" & Ascii.LF &
" pack $w.pmaj $w.pmin $w.kumoi $w.hiro -side left" & Ascii.LF &
" " & Ascii.LF &
" # with 6 notes" & Ascii.LF &
" set w .topscale.l6" & Ascii.LF &
" frame $w" & Ascii.LF &
" label $w.label -text ""6 notes scales"" -relief groove" & Ascii.LF &
" pack $w -expand true -fill x" & Ascii.LF &
" pack $w.label -side left" & Ascii.LF &
" " & Ascii.LF &
" set w .topscale.f6" & Ascii.LF &
" frame $w" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.blues -text ""Blues"" \" & Ascii.LF &
"  -value ""Blues"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.whole -text ""Whole"" \" & Ascii.LF &
"  -value ""Whole"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.aug -text ""Augmented"" \" & Ascii.LF &
"  -value ""Augmented"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.doms -text ""Dominant_Sus"" \" & Ascii.LF &
"  -value ""Dominant_Sus"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.pelog -text ""Pelog"" \" & Ascii.LF &
"  -value ""Pelog"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" pack $w" & Ascii.LF &
" pack $w.blues $w.whole $w.aug $w.doms $w.pelog -side left" & Ascii.LF &
" " & Ascii.LF &
" " & Ascii.LF &
" # with 7 notes" & Ascii.LF &
" set w .topscale.l7" & Ascii.LF &
" frame $w" & Ascii.LF &
" label $w.label -text ""7 notes scales"" -relief groove" & Ascii.LF &
" pack $w -expand true -fill x" & Ascii.LF &
" pack $w.label -side left" & Ascii.LF &
" " & Ascii.LF &
" set w .topscale.f7" & Ascii.LF &
" frame $w" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.maj -text ""Major"" \" & Ascii.LF &
"  -value ""Major"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.min -text ""Minor"" \" & Ascii.LF &
"  -value ""Minor"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.ion -text ""Ionian"" \" & Ascii.LF &
"  -value ""Ionian"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.aeol -text ""Aeolian"" \" & Ascii.LF &
"  -value ""Aeolian"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.dor -text ""Dorian"" \" & Ascii.LF &
"  -value ""Dorian"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.phryg -text ""Phrygian"" \" & Ascii.LF &
"  -value ""Phrygian"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.lyd -text ""Lydian"" \" & Ascii.LF &
"  -value ""Lydian"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.mixolyd -text ""Mixolydian"" \" & Ascii.LF &
"  -value ""Mixolydian"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.locr -text ""Locrian"" \" & Ascii.LF &
"  -value ""Locrian"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.hmaj -text ""Harmonic_Major"" \" & Ascii.LF &
"  -value ""Harmonic_Major"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.hmin -text ""Harmonic_Minor"" \" & Ascii.LF &
"  -value ""Harmonic_Minor"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.neamaj -text ""Neapolitan Major"" \" & Ascii.LF &
"  -value ""Neapolitan_Major"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.neamin -text ""Neapolitan Minor"" \" & Ascii.LF &
"  -value ""Neapolitan_Minor"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.enig -text ""Enigmatic"" \" & Ascii.LF &
"  -value ""Enigmatic"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.enigmin -text ""Enigmatic Minor"" \" & Ascii.LF &
"  -value ""Enigmatic_Minor"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.hunmaj -text ""Hungarian Major"" \" & Ascii.LF &
"  -value ""Hungarian_Major"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.hunmin -text ""Hungarian Minor"" \" & Ascii.LF &
"  -value ""Hungarian_Minor"" -variable mode" & Ascii.LF &
" radiobutton $w.melodic -text ""Melodic"" \" & Ascii.LF &
"  -value ""Melodic"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.composite2 -text ""Composite II"" \" & Ascii.LF &
"  -value ""compositeII"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.persian -text ""Persian"" \" & Ascii.LF &
"  -value ""Persian"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.ionianb5 -text ""Ionian b5"" \" & Ascii.LF &
"  -value ""Ionian_b5"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.locrian7 -text ""Locrian 7"" \" & Ascii.LF &
"  -value ""Locrian_7"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" pack $w" & Ascii.LF &
" grid $w.maj $w.min $w.ion $w.aeol $w.dor -sticky w" & Ascii.LF &
" grid $w.phryg $w.lyd $w.mixolyd $w.locr $w.hmaj -sticky w" & Ascii.LF &
" grid $w.hmin $w.neamaj $w.neamin $w.enig $w.enigmin -sticky w" & Ascii.LF &
" grid $w.hunmaj $w.hunmin $w.melodic $w.composite2 $w.persian -sticky w" & Ascii.LF &
" grid $w.ionianb5 $w.locrian7 -sticky w" & Ascii.LF &
" # with 8 notes" & Ascii.LF &
" set w .topscale.l8" & Ascii.LF &
" frame $w" & Ascii.LF &
" label $w.label -text ""8 notes scales"" -relief groove" & Ascii.LF &
" pack $w -expand true -fill x" & Ascii.LF &
" pack $w.label -side left" & Ascii.LF &
" " & Ascii.LF &
" set w .topscale.f8" & Ascii.LF &
" frame $w" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.bebloc -text ""Bebop Locrian"" \" & Ascii.LF &
"  -value ""Bebop_Locrian"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.bebdom -text ""Bebop Dominant"" \" & Ascii.LF &
"  -value ""Bebop_Dominant"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.bebdor -text ""Bebop Dorian"" \" & Ascii.LF &
"  -value ""Bebop_Dorian"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.bebmaj -text ""Bebop Major"" \" & Ascii.LF &
"  -value ""Bebop_Major"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.dimin -text ""Diminished"" \" & Ascii.LF &
"  -value ""Diminished"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.spanish -text ""Spanish"" \" & Ascii.LF &
"  -value ""Spanish"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" pack $w" & Ascii.LF &
" grid $w.bebloc $w.bebdom $w.bebdor $w.bebmaj -sticky w" & Ascii.LF &
" grid $w.bebmaj $w.dimin $w.spanish -sticky w" & Ascii.LF &
" " & Ascii.LF &
" " & Ascii.LF &
" # with more notes" & Ascii.LF &
" set w .topscale.l9" & Ascii.LF &
" frame $w" & Ascii.LF &
" label $w.label -text ""Others scales"" -relief groove" & Ascii.LF &
" pack $w -expand true -fill x" & Ascii.LF &
" pack $w.label -side left" & Ascii.LF &
" " & Ascii.LF &
" set w .topscale.f9" & Ascii.LF &
" frame $w" & Ascii.LF &
" " & Ascii.LF &
" radiobutton $w.chromatic -text ""Chromatic (12 notes)"" \" & Ascii.LF &
"  -value ""Chromatic"" -variable mode" & Ascii.LF &
" " & Ascii.LF &
" pack $w" & Ascii.LF &
" pack $w.chromatic -side left" & Ascii.LF &
" " & Ascii.LF &
" # buttons" & Ascii.LF &
" set w .topscale.f10" & Ascii.LF &
" frame $w" & Ascii.LF &
" " & Ascii.LF &
" button $w.ok -text ""Ok"" \" & Ascii.LF &
"  -command {display_scale $note $mode ; destroy .topscale}" & Ascii.LF &
" button $w.cancel -text ""Cancel"" -command {destroy .topscale}" & Ascii.LF &
" " & Ascii.LF &
" pack $w -expand true -fill x" & Ascii.LF &
" pack $w.ok $w.cancel -side left -expand true -fill x" & Ascii.LF &
"}" & Ascii.LF &
"proc Send_Analyse_Chord {notes} {" & Ascii.LF &
" if {""$notes"" == """"} {" & Ascii.LF &
"     return" & Ascii.LF &
" }" & Ascii.LF &
" ada_command analyse_chord $notes" & Ascii.LF &
"}" & Ascii.LF &
"proc Analyse_Chord {} {" & Ascii.LF &
" toplevel .topachord" & Ascii.LF &
" wm title .topachord ""Analyse chord""" & Ascii.LF &
" wm resizable .topachord false false" & Ascii.LF &
" set w .topachord" & Ascii.LF &
" label $w.l1 -text ""Enter a suite of notes (ex: C E G)""" & Ascii.LF &
" label $w.l2 -text ""or a fingerings (ex : x 3 1 0 1 x)""" & Ascii.LF &
" label $w.l3 -text ""I'll try to guess the chord's name""" & Ascii.LF &
" entry $w.entry" & Ascii.LF &
" bind $w.entry <KeyPress-Return> \" & Ascii.LF &
"  {Command::Send_Analyse_Chord [.topachord.entry get]}" & Ascii.LF &
" " & Ascii.LF &
" pack $w.l1 $w.l2 $w.l3" & Ascii.LF &
" pack $w.entry -expand true -fill x" & Ascii.LF &
" " & Ascii.LF &
" set w $w.f1" & Ascii.LF &
" frame $w" & Ascii.LF &
" button $w.analyse -text ""Analyse"" \" & Ascii.LF &
"  -command {Command::Send_Analyse_Chord [.topachord.entry get]}" & Ascii.LF &
" button $w.close -text ""Close"" -command {destroy .topachord}" & Ascii.LF &
" " & Ascii.LF &
" pack $w -expand true -fill x -side left" & Ascii.LF &
" pack $w.analyse $w.close -expand true -fill x -side left" & Ascii.LF &
"}" & Ascii.LF &
"proc Send_Analyse_Scale {notes} {" & Ascii.LF &
" " & Ascii.LF &
" if {""$notes"" == """"} {" & Ascii.LF &
"     return" & Ascii.LF &
" }" & Ascii.LF &
" ada_command analyse_scale $notes" & Ascii.LF &
"}" & Ascii.LF &
" " & Ascii.LF &
"proc Analyse_Scale {} {" & Ascii.LF &
" toplevel .topascale" & Ascii.LF &
" wm title .topascale ""Analyse scale""" & Ascii.LF &
" wm resizable .topascale false false" & Ascii.LF &
" " & Ascii.LF &
" set w .topascale" & Ascii.LF &
" label $w.l1 -text ""Enter the scale's notes""" & Ascii.LF &
" label $w.l2 -text ""(ex: C D E F G A B)""" & Ascii.LF &
" label $w.l3 -text ""I'll try to guess the scale's name""" & Ascii.LF &
" entry $w.entry" & Ascii.LF &
" bind $w.entry <KeyPress-Return> \" & Ascii.LF &
"  {Command::Send_Analyse_Scale [.topascale.entry get]}" & Ascii.LF &
" " & Ascii.LF &
" pack $w.l1 $w.l2 $w.l3" & Ascii.LF &
" pack $w.entry -expand true -fill x" & Ascii.LF &
" " & Ascii.LF &
" set w $w.f1" & Ascii.LF &
" frame $w" & Ascii.LF &
" button $w.analyse -text ""Analyse"" \" & Ascii.LF &
"  -command {Command::Send_Analyse_Scale [.topascale.entry get]}" & Ascii.LF &
" button $w.close -text ""Close"" -command {destroy .topascale}" & Ascii.LF &
" " & Ascii.LF &
" pack $w -expand true -fill x -side left" & Ascii.LF &
" pack $w.analyse $w.close -expand true -fill x -side left" & Ascii.LF &
"}" & Ascii.LF &
"proc Quit {} {" & Ascii.LF &
" exit" & Ascii.LF &
"}" & Ascii.LF &
"}" & Ascii.LF &
"set note1 ""E""" & Ascii.LF &
"set note2 ""B""" & Ascii.LF &
"set note3 ""G""" & Ascii.LF &
"set note4 ""D""" & Ascii.LF &
"set note5 ""A""" & Ascii.LF &
"set note6 ""E""" & Ascii.LF &
"proc options_tune {} {" & Ascii.LF &
"global note1 note2 note3 note4 note5 note6" & Ascii.LF &
"proc set_tuning {} {" & Ascii.LF &
" global note1 note2 note3 note4 note5 note6" & Ascii.LF &
" ada_command tune $note6 $note5 $note4 $note3 $note2 $note1" & Ascii.LF &
" fast_chord_scale" & Ascii.LF &
"}" & Ascii.LF &
"proc standard_tuning {} {" & Ascii.LF &
" .toptune.f1.e select" & Ascii.LF &
" .toptune.f2.b select" & Ascii.LF &
" .toptune.f3.g select" & Ascii.LF &
" .toptune.f4.d select" & Ascii.LF &
" .toptune.f5.a select" & Ascii.LF &
" .toptune.f6.e select" & Ascii.LF &
"}" & Ascii.LF &
"proc open_g_tuning {} {" & Ascii.LF &
" .toptune.f1.d select" & Ascii.LF &
" .toptune.f2.b select" & Ascii.LF &
" .toptune.f3.g select" & Ascii.LF &
" .toptune.f4.d select" & Ascii.LF &
" .toptune.f5.g select" & Ascii.LF &
" .toptune.f6.d select" & Ascii.LF &
"}" & Ascii.LF &
"proc open_e_tuning {} {" & Ascii.LF &
" .toptune.f1.e select" & Ascii.LF &
" .toptune.f2.b select" & Ascii.LF &
" .toptune.f3.gd select" & Ascii.LF &
" .toptune.f4.e select" & Ascii.LF &
" .toptune.f5.b select" & Ascii.LF &
" .toptune.f6.e select" & Ascii.LF &
"}" & Ascii.LF &
"proc open_d_tuning {} {" & Ascii.LF &
" .toptune.f1.d select" & Ascii.LF &
" .toptune.f2.a select" & Ascii.LF &
" .toptune.f3.fd select" & Ascii.LF &
" .toptune.f4.d select" & Ascii.LF &
" .toptune.f5.a select" & Ascii.LF &
" .toptune.f6.d select" & Ascii.LF &
"}" & Ascii.LF &
"proc open_c_tuning {} {" & Ascii.LF &
" .toptune.f1.e select" & Ascii.LF &
" .toptune.f2.c select" & Ascii.LF &
" .toptune.f3.g select" & Ascii.LF &
" .toptune.f4.c select" & Ascii.LF &
" .toptune.f5.g select" & Ascii.LF &
" .toptune.f6.c select" & Ascii.LF &
"}" & Ascii.LF &
"proc modal_d_tuning {} {" & Ascii.LF &
" .toptune.f1.d select" & Ascii.LF &
" .toptune.f2.a select" & Ascii.LF &
" .toptune.f3.g select" & Ascii.LF &
" .toptune.f4.d select" & Ascii.LF &
" .toptune.f5.a select" & Ascii.LF &
" .toptune.f6.d select" & Ascii.LF &
"}" & Ascii.LF &
"proc modal_g_tuning {} {" & Ascii.LF &
" .toptune.f1.d select" & Ascii.LF &
" .toptune.f2.c select" & Ascii.LF &
" .toptune.f3.g select" & Ascii.LF &
" .toptune.f4.d select" & Ascii.LF &
" .toptune.f5.g select" & Ascii.LF &
" .toptune.f6.d select" & Ascii.LF &
"}" & Ascii.LF &
"proc crossnote_d_tuning {} {" & Ascii.LF &
" .toptune.f1.d select" & Ascii.LF &
" .toptune.f2.a select" & Ascii.LF &
" .toptune.f3.f select" & Ascii.LF &
" .toptune.f4.d select" & Ascii.LF &
" .toptune.f5.a select" & Ascii.LF &
" .toptune.f6.d select" & Ascii.LF &
"}" & Ascii.LF &
"proc crossnote_e_tuning {} {" & Ascii.LF &
" .toptune.f1.e select" & Ascii.LF &
" .toptune.f2.b select" & Ascii.LF &
" .toptune.f3.g select" & Ascii.LF &
" .toptune.f4.e select" & Ascii.LF &
" .toptune.f5.b select" & Ascii.LF &
" .toptune.f6.e select" & Ascii.LF &
"}" & Ascii.LF &
"proc dropped_d_tuning {} {" & Ascii.LF &
" .toptune.f1.e select" & Ascii.LF &
" .toptune.f2.b select" & Ascii.LF &
" .toptune.f3.g select" & Ascii.LF &
" .toptune.f4.d select" & Ascii.LF &
" .toptune.f5.a select" & Ascii.LF &
" .toptune.f6.d select" & Ascii.LF &
"}" & Ascii.LF &
"proc dropped_d2_tuning {} {" & Ascii.LF &
" .toptune.f1.e select" & Ascii.LF &
" .toptune.f2.a select" & Ascii.LF &
" .toptune.f3.g select" & Ascii.LF &
" .toptune.f4.d select" & Ascii.LF &
" .toptune.f5.a select" & Ascii.LF &
" .toptune.f6.d select" & Ascii.LF &
"}" & Ascii.LF &
"toplevel .toptune" & Ascii.LF &
"wm title .toptune ""Change the tuning of the instrument""" & Ascii.LF &
"wm resizable .toptune false false" & Ascii.LF &
"set w .toptune.f01" & Ascii.LF &
"frame $w" & Ascii.LF &
"button $w.standard -text ""Standard"" -command {standard_tuning}" & Ascii.LF &
"button $w.open_g -text ""Open G (slack key)"" -command {open_g_tuning}" & Ascii.LF &
"button $w.open_e -text ""Open E"" -command {open_e_tuning}" & Ascii.LF &
"button $w.open_d -text ""Open D"" -command {open_d_tuning}" & Ascii.LF &
"button $w.open_c -text ""Open C"" -command {open_c_tuning}" & Ascii.LF &
"button $w.modal_d -text ""D Modal"" -command {modal_d_tuning}" & Ascii.LF &
"button $w.modal_g -text ""G Modal (sawmill)"" -command {modal_g_tuning}" & Ascii.LF &
"pack $w -expand true -fill x" & Ascii.LF &
"pack $w.standard $w.open_g $w.open_e $w.open_d $w.open_c \" & Ascii.LF &
"     $w.modal_d $w.modal_g -expand true -fill x -side left" & Ascii.LF &
"set w .toptune.f02" & Ascii.LF &
"frame $w" & Ascii.LF &
"button $w.crossnote_d -text ""Crossnote D (open D minor)"" \" & Ascii.LF &
"     -command {crossnote_d_tuning}" & Ascii.LF &
"button $w.crossnote_e -text ""Crossnote E (open E minor)"" \" & Ascii.LF &
"     -command {crossnote_e_tuning}" & Ascii.LF &
"button $w.dropped_d -text ""Dropped D"" -command {dropped_d_tuning}" & Ascii.LF &
"button $w.dropped_d2 -text ""Dropped D variation"" \" & Ascii.LF &
"     -command {dropped_d2_tuning}" & Ascii.LF &
"pack $w -expand true -fill x" & Ascii.LF &
"pack $w.crossnote_d $w.crossnote_e $w.dropped_d $w.dropped_d2 \" & Ascii.LF &
"     -expand true -fill x -side left" & Ascii.LF &
"set w .toptune.f1" & Ascii.LF &
"frame $w" & Ascii.LF &
"label $w.l -text ""String 1""" & Ascii.LF &
"label $w.ln -textvariable note1 -relief raised -width 2 -background #0098C4" & Ascii.LF &
"pack $w.l $w.ln -side left" & Ascii.LF &
"display_notes $w note1" & Ascii.LF &
"set w .toptune.f2" & Ascii.LF &
"frame $w" & Ascii.LF &
"label $w.l -text ""String 2""" & Ascii.LF &
"label $w.ln -textvariable note2 -relief raised -width 2 -background #0098C4" & Ascii.LF &
"pack $w.l $w.ln -side left" & Ascii.LF &
"display_notes $w note2" & Ascii.LF &
"set w .toptune.f3" & Ascii.LF &
"frame $w" & Ascii.LF &
"label $w.l -text ""String 3""" & Ascii.LF &
"label $w.ln -textvariable note3 -relief raised -width 2 -background #0098C4" & Ascii.LF &
"pack $w.l $w.ln -side left" & Ascii.LF &
"display_notes $w note3" & Ascii.LF &
"set w .toptune.f4" & Ascii.LF &
"frame $w" & Ascii.LF &
"label $w.l -text ""String 4""" & Ascii.LF &
"label $w.ln -textvariable note4 -relief raised -width 2 -background #0098C4" & Ascii.LF &
"pack $w.l $w.ln -side left" & Ascii.LF &
"display_notes $w note4" & Ascii.LF &
"set w .toptune.f5" & Ascii.LF &
"frame $w" & Ascii.LF &
"label $w.l -text ""String 5""" & Ascii.LF &
"label $w.ln -textvariable note5 -relief raised -width 2 -background #0098C4" & Ascii.LF &
"pack $w.l $w.ln -side left" & Ascii.LF &
"display_notes $w note5" & Ascii.LF &
"set w .toptune.f6" & Ascii.LF &
"frame $w" & Ascii.LF &
"label $w.l -text ""String 6""" & Ascii.LF &
"label $w.ln -textvariable note6 -relief raised -width 2 -background #0098C4" & Ascii.LF &
"pack $w.l $w.ln -side left" & Ascii.LF &
"display_notes $w note6" & Ascii.LF &
"set w .toptune.f7" & Ascii.LF &
"frame $w" & Ascii.LF &
"button $w.tune -text ""Tune"" \" & Ascii.LF &
"     -command {set_tuning ; grab release .toptune ; destroy .toptune}" & Ascii.LF &
"button $w.cancel -text ""Cancel"" \" & Ascii.LF &
"     -command {grab release .toptune ; destroy .toptune}" & Ascii.LF &
"pack $w -expand true -fill x" & Ascii.LF &
"pack $w.tune $w.cancel -side left -expand true -fill x" & Ascii.LF &
"grab set .toptune" & Ascii.LF &
"}" & Ascii.LF &
"namespace eval Help {" & Ascii.LF &
"proc help_window {name sizex sizey} {" & Ascii.LF &
" toplevel .tophelp" & Ascii.LF &
" wm title .tophelp $name" & Ascii.LF &
" wm resizable .tophelp false false" & Ascii.LF &
" " & Ascii.LF &
" text .tophelp.text -width $sizex -height $sizey" & Ascii.LF &
" button .tophelp.button -text ""Close"" -command {destroy .tophelp}" & Ascii.LF &
" bind .tophelp <KeyPress-Return> {destroy .tophelp}" & Ascii.LF &
" " & Ascii.LF &
" pack .tophelp.text" & Ascii.LF &
" pack .tophelp.button -padx 5 -pady 5" & Ascii.LF &
" " & Ascii.LF &
" focus -force .tophelp" & Ascii.LF &
" grab set -global .tophelp" & Ascii.LF &
" return .tophelp.text" & Ascii.LF &
"}" & Ascii.LF &
"proc Chords {} {" & Ascii.LF &
" set w [help_window ""Chord format"" 80 28]" & Ascii.LF &
" ada_command help chord_format" & Ascii.LF &
"}" & Ascii.LF &
"proc Scales {} {" & Ascii.LF &
" set w [help_window ""scale mode"" 70 25]" & Ascii.LF &
" ada_command help scale_mode" & Ascii.LF &
"}" & Ascii.LF &
"proc Notes {} {" & Ascii.LF &
" set w [help_window ""note format"" 60 10]" & Ascii.LF &
" ada_command help note_format" & Ascii.LF &
"}" & Ascii.LF &
"proc About {} {" & Ascii.LF &
" " & Ascii.LF &
" set w .tophelp" & Ascii.LF &
" toplevel $w" & Ascii.LF &
" wm title $w ""About GUITARE GUI ...""" & Ascii.LF &
" wm resizable $w false false" & Ascii.LF &
" " & Ascii.LF &
" label $w.l1 -text ""GUITARE GUI - v7.1 (September 2000)""" & Ascii.LF &
" label $w.l2 -text ""Pascal Obry - 2000""" & Ascii.LF &
" label $w.l3 -image ""logo200""" & Ascii.LF &
" label $w.l4 -text ""This software is free software""" & Ascii.LF &
" label $w.l4s -text """"" & Ascii.LF &
" label $w.l5 -text ""If you like this program, please send me a""" & Ascii.LF &
" label $w.l6 -text ""postcard at the following address :""" & Ascii.LF &
" label $w.l6s -text """"" & Ascii.LF &
" " & Ascii.LF &
" frame $w.f -relief ridge -borderwidth 5" & Ascii.LF &
" label $w.f.l8 -text ""Pascal Obry""" & Ascii.LF &
" label $w.f.l9 -text ""45, rue Gabriel Peri""" & Ascii.LF &
" label $w.f.l10 -text ""78114 Magny Les Hameaux - FRANCE""" & Ascii.LF &
" " & Ascii.LF &
" label $w.l11 -text """"" & Ascii.LF &
" label $w.l12 -text ""The latest version is available at""" & Ascii.LF &
" label $w.l13 \" & Ascii.LF &
"  -text ""http://perso.wanadoo.fr/pascal.obry""" & Ascii.LF &
" label $w.l14 -text """"" & Ascii.LF &
" " & Ascii.LF &
" button $w.close -text ""Close"" \" & Ascii.LF &
"  -command {grab release .tophelp ; destroy .tophelp}" & Ascii.LF &
" " & Ascii.LF &
" pack $w.l1 $w.l2 $w.l3 $w.l4 $w.l4s $w.l5 $w.l6 $w.l6s" & Ascii.LF &
" pack $w.f $w.f.l8 $w.f.l9 $w.f.l10" & Ascii.LF &
" pack $w.l11 $w.l12 $w.l13 $w.l14" & Ascii.LF &
" pack $w.close" & Ascii.LF &
" " & Ascii.LF &
" grab set -global .tophelp" & Ascii.LF &
"}" & Ascii.LF &
"}" & Ascii.LF &
""
     ;

   Fingerboard_Tcl : constant String :=
     --tcl2ada ../gui/fingerboard.tcl
"namespace eval Fingerboard {" & Ascii.LF &
"variable ix 40" & Ascii.LF &
"variable iy 30" & Ascii.LF &
"variable spx 60" & Ascii.LF &
"variable spy 50" & Ascii.LF &
"variable nx 14" & Ascii.LF &
"variable ox 7" & Ascii.LF &
"variable oy 4" & Ascii.LF &
"   # # # # # # # # # # # # # # #" & Ascii.LF &
"proc Mark {w y x} {" & Ascii.LF &
" variable spx" & Ascii.LF &
" variable spy" & Ascii.LF &
" variable ix" & Ascii.LF &
" variable iy" & Ascii.LF &
" variable ox" & Ascii.LF &
" variable oy" & Ascii.LF &
" set cx [expr $spx + ($x * $ix) - ($ix / 2)]" & Ascii.LF &
" set cy [expr $spy + ($y * $iy) - ($iy / 2)]" & Ascii.LF &
" $w create oval [expr $cx - $ox] [expr $cy - $oy] \" & Ascii.LF &
"  [expr $cx + $ox] [expr $cy + $oy] \" & Ascii.LF &
"  -fill black -tags fingerboard" & Ascii.LF &
"}" & Ascii.LF &
"   # # # # # # # # # # # # # # #" & Ascii.LF &
"proc Display {w n} {" & Ascii.LF &
" variable ix" & Ascii.LF &
" variable iy" & Ascii.LF &
" variable spx" & Ascii.LF &
" variable spy" & Ascii.LF &
" variable nx" & Ascii.LF &
" variable oy" & Ascii.LF &
" " & Ascii.LF &
" # ny     number of string" & Ascii.LF &
" set ny $n" & Ascii.LF &
" set color_string black" & Ascii.LF &
" set color_fret black" & Ascii.LF &
" set color_position red" & Ascii.LF &
" set color_0_position blue" & Ascii.LF &
" set color_fingerboard #CEA87D" & Ascii.LF &
" set lx [expr $ix * $nx]" & Ascii.LF &
" set ly [expr $iy * [expr $ny - 1]]" & Ascii.LF &
" # strings" & Ascii.LF &
" set xx $spx" & Ascii.LF &
" set yy $spy" & Ascii.LF &
" # background" & Ascii.LF &
" $w create rectangle $xx $yy [expr $xx + $lx] [expr $yy + $ly] \" & Ascii.LF &
"  -fill $color_fingerboard -tags fingerboard" & Ascii.LF &
" " & Ascii.LF &
" # strings" & Ascii.LF &
" for {set i 1} {$i <= $ny} {incr i} {" & Ascii.LF &
"     $w create line $xx $yy [expr $xx + $lx] $yy \" & Ascii.LF &
"      -fill $color_string -tags fingerboard" & Ascii.LF &
"     incr yy $iy" & Ascii.LF &
" }" & Ascii.LF &
" " & Ascii.LF &
" # frets" & Ascii.LF &
" set xx $spx" & Ascii.LF &
" set yy $spy" & Ascii.LF &
" " & Ascii.LF &
" $w create line $xx $yy $xx [expr $yy + $ly] -width 4 \" & Ascii.LF &
"  -fill $color_fret -tags fingerboard" & Ascii.LF &
" " & Ascii.LF &
" for {set i 0} {$i <= $nx} {incr i} {" & Ascii.LF &
"     $w create line $xx $yy $xx [expr $yy + $ly] \" & Ascii.LF &
"      -fill $color_fret -tags fingerboard" & Ascii.LF &
"     incr xx $ix" & Ascii.LF &
" }" & Ascii.LF &
" " & Ascii.LF &
" if {$n == 6} {" & Ascii.LF &
"     Mark $w 3 3" & Ascii.LF &
"     Mark $w 3 5" & Ascii.LF &
"     Mark $w 3 7" & Ascii.LF &
"     Mark $w 3 9" & Ascii.LF &
"     Mark $w 1 12" & Ascii.LF &
"     Mark $w 5 12" & Ascii.LF &
" } else {" & Ascii.LF &
"     Mark $w 2 3" & Ascii.LF &
"     Mark $w 2 5" & Ascii.LF &
"     Mark $w 2 7" & Ascii.LF &
"     Mark $w 2 9" & Ascii.LF &
"     Mark $w 1 12" & Ascii.LF &
"     Mark $w 3 12" & Ascii.LF &
" }" & Ascii.LF &
"}" & Ascii.LF &
"   # # # # # # # # # # # # # # #" & Ascii.LF &
"proc Notes {w y x lab} {" & Ascii.LF &
" variable spx" & Ascii.LF &
" variable spy" & Ascii.LF &
" variable ix" & Ascii.LF &
" variable iy" & Ascii.LF &
" set Tfont {Arial 8}" & Ascii.LF &
" set ox 9" & Ascii.LF &
" set oy 6" & Ascii.LF &
" set cx [expr $spx + ($x * $ix) - ($ix / 2)]" & Ascii.LF &
" set cy [expr $spy + ([expr $y - 1] * $iy)]" & Ascii.LF &
" " & Ascii.LF &
" switch -- ""$x"" {" & Ascii.LF &
"     ""-0.5"" {}" & Ascii.LF &
"     " & Ascii.LF &
"     ""0.3"" {" & Ascii.LF &
"  $w create rectangle [expr $cx - $ox] [expr $cy - $oy] \" & Ascii.LF &
"   [expr $cx + $ox] [expr $cy + $oy] \" & Ascii.LF &
"   -fill white -tags notes" & Ascii.LF &
"     }" & Ascii.LF &
"     " & Ascii.LF &
"     default {" & Ascii.LF &
"  $w create rectangle [expr $cx - $ox] [expr $cy - $oy] \" & Ascii.LF &
"   [expr $cx + $ox] [expr $cy + $oy] \" & Ascii.LF &
"   -fill yellow -tags notes" & Ascii.LF &
"     }" & Ascii.LF &
" }" & Ascii.LF &
" $w create text $cx $cy -text $lab -tags notes -font $Tfont" & Ascii.LF &
"}" & Ascii.LF &
"   # # # # # # # # # # # # # # #" & Ascii.LF &
"proc Display_Position {w P n} {" & Ascii.LF &
" upvar #0 $P lP" & Ascii.LF &
" variable spx" & Ascii.LF &
" variable spy" & Ascii.LF &
" variable ix" & Ascii.LF &
" variable iy" & Ascii.LF &
" variable nx" & Ascii.LF &
" set ny $n" & Ascii.LF &
" " & Ascii.LF &
" for {set i 1} {$i <= $ny} {incr i} {" & Ascii.LF &
"     foreach pos [array names lP $i,*] {" & Ascii.LF &
"  set j [string range $pos \" & Ascii.LF &
"   [expr [string first "","" $pos] + 1] end]" & Ascii.LF &
"  Notes $w $i $j $lP($pos)" & Ascii.LF &
"     }" & Ascii.LF &
" }" & Ascii.LF &
"}" & Ascii.LF &
"}" & Ascii.LF &
""
     ;

   Guitare_Tcl : constant String :=
     --tcl2ada ../gui/guitare.tcl
"set cs_label """" " & Ascii.LF &
"set fast_cs """"" & Ascii.LF &
"proc display_message {m1 m2} {" & Ascii.LF &
"tk_dialog .td $m1 $m2 info 0 ""ok""" & Ascii.LF &
"}" & Ascii.LF &
"proc display_error {m1 m2} {" & Ascii.LF &
"tk_dialog .td $m1 $m2 error 0 ""ok""" & Ascii.LF &
"}" & Ascii.LF &
"proc display_info {string} {" & Ascii.LF &
".fsinfo.info configure -text $string" & Ascii.LF &
"}" & Ascii.LF &
"proc create_gui {} {" & Ascii.LF &
"global cs_label" & Ascii.LF &
"set cs_label ""Chord""" & Ascii.LF &
"proc chord_scale {} {" & Ascii.LF &
" global cs_label" & Ascii.LF &
" if {""$cs_label"" == ""Chord""} {" & Ascii.LF &
"     set cs_label ""Scale""" & Ascii.LF &
" } else {" & Ascii.LF &
"     set cs_label ""Chord""" & Ascii.LF &
" }" & Ascii.LF &
"}" & Ascii.LF &
"set w .fbutton" & Ascii.LF &
"frame $w" & Ascii.LF &
"button $w.chord_scale \" & Ascii.LF &
"     -textvariable cs_label -command chord_scale -width 6" & Ascii.LF &
"bind $w.chord_scale <Enter> {display_info \" & Ascii.LF &
"     ""Switch between Chord and Scale mode""}" & Ascii.LF &
"entry $w.cs -textvariable fast_cs -width 90" & Ascii.LF &
"bind $w.cs <KeyPress-Return> fast_chord_scale" & Ascii.LF &
"bind $w.cs <Enter> {display_info \" & Ascii.LF &
"     ""Enter a Chord or Scale name here depending of the selected mode, then press enter""}" & Ascii.LF &
"label $w.i100 -image logo100" & Ascii.LF &
"bind $w.i100 <Enter> {display_info ""Welcome to GUITARE""}" & Ascii.LF &
"pack $w -expand true -fill x" & Ascii.LF &
"pack $w.chord_scale -side left -anchor w -fill y" & Ascii.LF &
"pack $w.cs -side left -expand true -fill both" & Ascii.LF &
"pack $w.i100 -anchor e" & Ascii.LF &
"set w .ftext" & Ascii.LF &
"frame $w" & Ascii.LF &
"label $w.output_head -font {Arial 12 bold}" & Ascii.LF &
"canvas $w.output_up -height 240 -cursor arrow" & Ascii.LF &
"bind $w.output_up <Enter> \" & Ascii.LF &
"     {display_info ""This window display the fingerboard""}" & Ascii.LF &
"pack $w -expand yes -fill x" & Ascii.LF &
"pack $w.output_head -expand yes -fill x" & Ascii.LF &
"pack $w.output_up -expand yes -fill x" & Ascii.LF &
"set w .fstext" & Ascii.LF &
"frame $w" & Ascii.LF &
"if { [winfo screenheight .] <= 600 } {" & Ascii.LF &
" set canvas_height 150" & Ascii.LF &
"} else {" & Ascii.LF &
" set canvas_height 360" & Ascii.LF &
"}" & Ascii.LF &
"canvas $w.output_low -height $canvas_height \" & Ascii.LF &
"     -yscrollcommand ""$w.scrolly set"" -cursor arrow \" & Ascii.LF &
"     -relief sunken -scrollregion {1 1 500 2500}" & Ascii.LF &
"bind $w.output_low <Enter> \" & Ascii.LF &
"     {display_info \" & Ascii.LF &
"     ""This window display the fingerings and others informations""}" & Ascii.LF &
"scrollbar $w.scrolly -command ""$w.output_low yview""" & Ascii.LF &
"pack $w -expand true -fill x" & Ascii.LF &
"pack $w.output_low -side left -expand yes -fill x" & Ascii.LF &
"pack $w.scrolly -expand true -fill both" & Ascii.LF &
"set w .fsinfo" & Ascii.LF &
"frame $w" & Ascii.LF &
"label $w.info -text ""Welcome to GUITARE"" -relief sunken -anchor w" & Ascii.LF &
"pack $w -expand true -fill both" & Ascii.LF &
"pack $w.info -expand true -fill both" & Ascii.LF &
"}" & Ascii.LF &
"set FixIt9 {Fixedsys 9 italic}" & Ascii.LF &
"set Fix9 {Fixedsys 9}" & Ascii.LF &
"set Entry_BC ""EEEEFF""" & Ascii.LF &
"set Label_BC ""DDDDDD""" & Ascii.LF &
"set Text_BC ""DDDDDD""" & Ascii.LF &
"set Button_BC ""D18185""" & Ascii.LF &
"proc init_ggui {} {" & Ascii.LF &
"global Fix9 FixIt9 Menu_BC Entry_BC Text_BC Button_BC Label_BC" & Ascii.LF &
"option add *padX 1" & Ascii.LF &
"option add *padY 1" & Ascii.LF &
"option add *Menu*padX 10" & Ascii.LF &
"option add *Menu*padY 5" & Ascii.LF &
"option add *Menubutton*padX 5" & Ascii.LF &
"option add *Menubutton*padY 5" & Ascii.LF &
"option add *fsinfo.info*Font $FixIt9" & Ascii.LF &
"option add *Button*Background #$Button_BC" & Ascii.LF &
"option add *Entry*Background #$Entry_BC" & Ascii.LF &
"option add *tophelp*Font $Fix9" & Ascii.LF &
"option add *output_low*Font $Fix9" & Ascii.LF &
"option add *output_low*Background #$Text_BC" & Ascii.LF &
"option add *output_up*Background #$Text_BC" & Ascii.LF &
"option add *output_up*Font $Fix9" & Ascii.LF &
"}" & Ascii.LF &
"proc init_up {} {" & Ascii.LF &
"global mode_gbm" & Ascii.LF &
"if {""$mode_gbm"" == ""guitar""} {" & Ascii.LF &
" Fingerboard::Display .ftext.output_up 6" & Ascii.LF &
"} else {" & Ascii.LF &
" Fingerboard::Display .ftext.output_up 4" & Ascii.LF &
"}" & Ascii.LF &
"}" & Ascii.LF &
"proc display_guitare_version {} {" & Ascii.LF &
"}" & Ascii.LF &
"proc clear_output_upper {} {" & Ascii.LF &
".ftext.output_up delete notes" & Ascii.LF &
"}" & Ascii.LF &
"proc clear_output_lower {} {" & Ascii.LF &
".fstext.output_low delete widgets" & Ascii.LF &
"}" & Ascii.LF &
"proc flush_fingerboard {} {" & Ascii.LF &
"global fingb" & Ascii.LF &
"clear_output_upper" & Ascii.LF &
"Fingerboard::Display_Position .ftext.output_up fingb 6" & Ascii.LF &
"set fingb(Fret) ""dummy""" & Ascii.LF &
"unset fingb" & Ascii.LF &
"}" & Ascii.LF &
"proc fast_chord_scale {} {" & Ascii.LF &
"global fast_cs cs_label mode_emd" & Ascii.LF &
"if {""$fast_cs"" != """"} {" & Ascii.LF &
" if {""$cs_label"" == ""Chord""} {" & Ascii.LF &
"     ada_command chord $fast_cs" & Ascii.LF &
" } else {" & Ascii.LF &
"     ada_command scale $fast_cs" & Ascii.LF &
" }" & Ascii.LF &
" flush_fingerboard" & Ascii.LF &
" if {""$cs_label"" == ""Chord""} {" & Ascii.LF &
"     ada_command position $mode_emd" & Ascii.LF &
"     ada_command synonym $fast_cs" & Ascii.LF &
" } else {" & Ascii.LF &
"     ada_command common_chords" & Ascii.LF &
" }" & Ascii.LF &
"}" & Ascii.LF &
"}" & Ascii.LF &
"proc display_chord {chord_name} {" & Ascii.LF &
"global cs_label" & Ascii.LF &
"if {""$cs_label"" == ""Scale""} {" & Ascii.LF &
" set cs_label ""Chord""" & Ascii.LF &
"}" & Ascii.LF &
"if {""$chord_name"" == """"} {" & Ascii.LF &
" return" & Ascii.LF &
"}" & Ascii.LF &
".fbutton.cs delete 0 end" & Ascii.LF &
".fbutton.cs insert 1 $chord_name" & Ascii.LF &
"fast_chord_scale" & Ascii.LF &
"}" & Ascii.LF &
"proc display_scale {note mode} {" & Ascii.LF &
"global cs_label" & Ascii.LF &
"if {""$cs_label"" == ""Chord""} {" & Ascii.LF &
" set cs_label ""Scale""" & Ascii.LF &
"}" & Ascii.LF &
"append scale_name $note "" "" $mode" & Ascii.LF &
".fbutton.cs delete 0 end" & Ascii.LF &
".fbutton.cs insert 1 $scale_name" & Ascii.LF &
"fast_chord_scale" & Ascii.LF &
"}" & Ascii.LF &
"init_ggui" & Ascii.LF &
"wm title . ""GUITARE GUI v7.1""" & Ascii.LF &
"wm geometry . +5+25" & Ascii.LF &
"create_menu" & Ascii.LF &
"create_gui" & Ascii.LF &
"init_up" & Ascii.LF &
"display_guitare_version" & Ascii.LF &
""
     ;

   Menu_Tcl : constant String :=
     --tcl2ada ../gui/menu.tcl
"proc create_menu {} {" & Ascii.LF &
"global mode_emd mode_ca mode_gbm without" & Ascii.LF &
"set mode_emd ""medium""" & Ascii.LF &
"set mode_ca ""common""" & Ascii.LF &
"set mode_gbm ""guitar""" & Ascii.LF &
"set without ""eleventh""" & Ascii.LF &
"proc change_mode {mode_name} {" & Ascii.LF &
" ada_command mode $mode_name" & Ascii.LF &
" if {""$mode_name"" == ""guitar""} {" & Ascii.LF &
"     .ftext.output_up delete fingerboard" & Ascii.LF &
"     Fingerboard::Display .ftext.output_up 6" & Ascii.LF &
" } else {" & Ascii.LF &
"     .ftext.output_up delete fingerboard" & Ascii.LF &
"     Fingerboard::Display .ftext.output_up 4" & Ascii.LF &
" }" & Ascii.LF &
" clear_output_lower" & Ascii.LF &
" fast_chord_scale" & Ascii.LF &
"}" & Ascii.LF &
"proc change_without {without_note} {" & Ascii.LF &
" ada_command without $without_note" & Ascii.LF &
" clear_output_lower" & Ascii.LF &
" fast_chord_scale" & Ascii.LF &
"}" & Ascii.LF &
"proc change_position {mode} {" & Ascii.LF &
" ada_command position $mode" & Ascii.LF &
" clear_output_lower" & Ascii.LF &
" fast_chord_scale" & Ascii.LF &
"}" & Ascii.LF &
"set w .menu" & Ascii.LF &
"menu $w -tearoff false" & Ascii.LF &
"bind $w <Enter> {display_info ""Welcome to GUITARE""}" & Ascii.LF &
"set m $w.command" & Ascii.LF &
"menu $m -tearoff false" & Ascii.LF &
"$w add cascade -label ""Command"" -menu $m -underline 0" & Ascii.LF &
"$m add command -label ""Chord..."" -command Command::Chord" & Ascii.LF &
"$m add command -label ""Scale..."" -command Command::Scale" & Ascii.LF &
"$m add separator" & Ascii.LF &
"$m add command -label ""Analyse Chord..."" -underline 8 \" & Ascii.LF &
"     -command Command::Analyse_Chord" & Ascii.LF &
"$m add command -label ""Analyse Scale..."" -underline 8 \" & Ascii.LF &
"     -command Command::Analyse_Scale" & Ascii.LF &
"$m add separator" & Ascii.LF &
"$m add command -label ""Quit"" -command Command::Quit -underline 0" & Ascii.LF &
"set m $w.options" & Ascii.LF &
"menu $m -tearoff false" & Ascii.LF &
"$w add cascade -label ""Options"" -menu $m -underline 0" & Ascii.LF &
"$m add command -label ""Tune..."" -underline 0 \" & Ascii.LF &
"     -command options_tune" & Ascii.LF &
"$m add cascade -label ""Position"" -underline 0 \" & Ascii.LF &
"     -menu $m.position" & Ascii.LF &
"set sm $m.position" & Ascii.LF &
"menu $sm" & Ascii.LF &
"bind $sm <Enter> {display_info ""Set the kind of fingerings to display""}" & Ascii.LF &
"$sm add radiobutton -label ""Easy"" -underline 0 \" & Ascii.LF &
"     -variable mode_emd -value ""easy"" \" & Ascii.LF &
"     -command {change_position easy}" & Ascii.LF &
"$sm add radiobutton -label ""Medium"" -underline 0 \" & Ascii.LF &
"     -variable mode_emd -value ""medium"" \" & Ascii.LF &
"     -command {change_position medium}" & Ascii.LF &
"$sm add radiobutton -label ""Difficult"" -underline 0 \" & Ascii.LF &
"     -variable mode_emd -value ""difficult"" \" & Ascii.LF &
"     -command {change_position difficult}" & Ascii.LF &
"$sm add separator" & Ascii.LF &
"$sm add radiobutton -label ""Common"" -underline 0 \" & Ascii.LF &
"     -variable mode_ca -value ""common"" \" & Ascii.LF &
"     -command {change_position common}" & Ascii.LF &
"$sm add radiobutton -label ""Any"" -underline 0 \" & Ascii.LF &
"     -variable mode_ca -value ""any"" \" & Ascii.LF &
"     -command {change_position any}" & Ascii.LF &
"$m add cascade -label ""Mode"" -underline 0 \" & Ascii.LF &
"     -menu $m.mode" & Ascii.LF &
"set sm $m.mode" & Ascii.LF &
"menu $sm" & Ascii.LF &
"bind $sm <Enter> {display_info ""Select one instrument""}" & Ascii.LF &
"$sm add radiobutton -label ""Guitar"" -underline 0 \" & Ascii.LF &
"     -variable mode_gbm -value ""guitar""\" & Ascii.LF &
"     -command {change_mode ""guitar""}" & Ascii.LF &
"$sm add radiobutton -label ""Bass"" -underline 0 \" & Ascii.LF &
"     -variable mode_gbm -value ""bass"" \" & Ascii.LF &
"     -command {change_mode ""bass""}" & Ascii.LF &
"$sm add radiobutton -label ""Mandoline""  -underline 0 \" & Ascii.LF &
"     -variable mode_gbm -value ""mandoline"" \" & Ascii.LF &
"     -command {change_mode ""mandoline""}" & Ascii.LF &
"$m add cascade -label ""Without"" -underline 0 \" & Ascii.LF &
"     -menu $m.without" & Ascii.LF &
"set sm $m.without" & Ascii.LF &
"menu $sm" & Ascii.LF &
"bind $sm <Enter> {display_info ""Set the note to ommit for 13th Chords""}" & Ascii.LF &
"$sm add radiobutton -label ""Third"" -underline 0 \" & Ascii.LF &
"     -variable without -value ""third""\" & Ascii.LF &
"     -command {change_without ""third""}" & Ascii.LF &
"$sm add radiobutton -label ""Seventh"" -underline 0 \" & Ascii.LF &
"     -variable without -value ""seventh""\" & Ascii.LF &
"     -command {change_without ""seventh""}" & Ascii.LF &
"$sm add radiobutton -label ""Ninth"" -underline 0 \" & Ascii.LF &
"     -variable without -value ""ninth""\" & Ascii.LF &
"     -command {change_without ""ninth""}" & Ascii.LF &
"$sm add radiobutton -label ""Eleventh"" -underline 0 \" & Ascii.LF &
"     -variable without -value ""eleventh""\" & Ascii.LF &
"     -command {change_without ""eleventh""}" & Ascii.LF &
"set m $w.help" & Ascii.LF &
"menu $m -tearoff false" & Ascii.LF &
"$w add cascade -label ""Help"" -menu $m -underline 0" & Ascii.LF &
"$m add command -label ""Help Chords..."" -underline 5 \" & Ascii.LF &
"     -command Help::Chords" & Ascii.LF &
"$m add command -label ""Help Scales..."" -underline 5 \" & Ascii.LF &
"     -command Help::Scales" & Ascii.LF &
"$m add command -label ""Help Notes..."" -underline 5 \" & Ascii.LF &
"     -command Help::Notes" & Ascii.LF &
"$m add separator" & Ascii.LF &
"$m add command -label ""About GUITARE"" -underline 0 \" & Ascii.LF &
"     -command Help::About" & Ascii.LF &
". configure -menu .menu" & Ascii.LF &
"}" & Ascii.LF &
""
     ;

   Position_Tcl : constant String :=
     --tcl2ada ../gui/position.tcl
"proc display_position {w start P x y} {" & Ascii.LF &
"upvar #0 $P lP" & Ascii.LF &
"global mode_gbm mode_emd" & Ascii.LF &
"set Tfont {Arial 10 bold}" & Ascii.LF &
"set ix 20" & Ascii.LF &
"set iy 20" & Ascii.LF &
"set ox 5" & Ascii.LF &
"set oy 5" & Ascii.LF &
"if {""$mode_gbm"" == ""guitar""} {" & Ascii.LF &
" if {""$mode_emd"" == ""difficult""} {" & Ascii.LF &
"     set ny 5" & Ascii.LF &
" } else {" & Ascii.LF &
"     set ny 4" & Ascii.LF &
" }" & Ascii.LF &
"} else {" & Ascii.LF &
" set ny 6" & Ascii.LF &
"}" & Ascii.LF &
"set spy 15" & Ascii.LF &
"set color_unused_string gray50" & Ascii.LF &
"set color_used_string black" & Ascii.LF &
"set color_position red" & Ascii.LF &
"set color_0_position blue" & Ascii.LF &
"set color_fingerboard #CEA87D" & Ascii.LF &
"set yyy [expr $y + $spy]" & Ascii.LF &
"set lx [expr $ix * [expr $lP(N) - 1]]" & Ascii.LF &
"set ly [expr $iy * $ny]" & Ascii.LF &
"$w create text $x $y -text $lP(Fret) -anchor w -tags widgets" & Ascii.LF &
"$w create rectangle $x $yyy [expr $x + $lx] [expr $yyy + $ly] \" & Ascii.LF &
"     -fill $color_fingerboard -tags widgets" & Ascii.LF &
"set xx $x" & Ascii.LF &
"set yy $yyy" & Ascii.LF &
"for {set i 1} {$i <= $lP(N)} {incr i} {" & Ascii.LF &
" if {$lP($i) == ""x ""} {" & Ascii.LF &
"     set color $color_unused_string" & Ascii.LF &
" } else {" & Ascii.LF &
"     set color $color_used_string" & Ascii.LF &
" }" & Ascii.LF &
" $w create line $xx $yy $xx [expr $yy + $ly] -fill $color -tags widgets" & Ascii.LF &
" incr xx $ix" & Ascii.LF &
"}" & Ascii.LF &
"set xx $x" & Ascii.LF &
"set yy $yyy" & Ascii.LF &
"for {set i 0} {$i <= $ny} {incr i} {" & Ascii.LF &
" $w create line $xx $yy [expr $x + $lx] $yy -tags widgets" & Ascii.LF &
" incr yy $iy" & Ascii.LF &
"}" & Ascii.LF &
"if {$start == 0} {" & Ascii.LF &
" $w create line $x $yyy [expr $x + $lx] $yyy -width 4 -tags widgets" & Ascii.LF &
"}" & Ascii.LF &
"set xx $x" & Ascii.LF &
"set yy $yyy" & Ascii.LF &
"for {set i 1} {$i <= $lP(N)} {incr i} {" & Ascii.LF &
" if {$lP($i) == ""x ""} {" & Ascii.LF &
"     incr xx $ix" & Ascii.LF &
"     continue" & Ascii.LF &
" }" & Ascii.LF &
" if {$lP($i) == 0} {" & Ascii.LF &
"     set sy [expr ($lP($i) - $start) * $iy]" & Ascii.LF &
"     $w create oval [expr $xx - $ox] [expr $yy - $oy + $sy]\" & Ascii.LF &
"      [expr $xx + $ox] [expr $yy + $oy + $sy] \" & Ascii.LF &
"      -fill blue -outline """" \" & Ascii.LF &
"      -tags widgets" & Ascii.LF &
" } else {" & Ascii.LF &
"     set adjy  [expr $iy / 2]" & Ascii.LF &
"     set sy [expr ($lP($i) - $start) * $iy - $adjy]" & Ascii.LF &
"     $w create oval [expr $xx - $ox] [expr $yy - $oy + $sy]\" & Ascii.LF &
"      [expr $xx + $ox] [expr $yy + $oy + $sy] \" & Ascii.LF &
"      -fill $color_position -outline """"  -tags widgets" & Ascii.LF &
" }" & Ascii.LF &
" incr xx $ix" & Ascii.LF &
"} " & Ascii.LF &
"set xx $x" & Ascii.LF &
"set yy [expr $yyy + $ly + 10]" & Ascii.LF &
"for {set i 1} {$i <= $lP(N)} {incr i} {" & Ascii.LF &
" $w create text $xx $yy -text $lP(n$i) -font $Tfont -tags widgets" & Ascii.LF &
" incr xx $ix" & Ascii.LF &
"}" & Ascii.LF &
"set xx $x" & Ascii.LF &
"set yy [expr $yyy + $ly + 25]" & Ascii.LF &
"for {set i 1} {$i <= $lP(N)} {incr i} {" & Ascii.LF &
" $w create text $xx $yy -text $lP($i) -font $Tfont -tags widgets" & Ascii.LF &
" incr xx $ix" & Ascii.LF &
"}" & Ascii.LF &
"}" & Ascii.LF &
""
     ;

end Tk_GUI;
