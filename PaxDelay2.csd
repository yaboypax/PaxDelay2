<Cabbage>
bounds(0, 0, 0, 0)
form caption("PaxDelay2") size(400, 300), pluginId("def1") colour(255, 255, 255, 255)

;global

rslider bounds(290, 170, 100, 100), channel("dgain"), range(0, 0.5, 0, 1, 0.01), text("Dry Gain"), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(290, 48, 100, 100), channel("wgain"), range(0, 0.5, 0.5, 1, 0.01), text("Wet Gain"), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)

label bounds(20, 22, 253, 15) channel("label10007") text("set Rate to 0 [left] for normal delay") fontColour(0, 0, 0, 255)
label bounds(16, 7, 253, 15) channel("label10008") text("set Feedback to 1 [right] to freeze") fontColour(0, 0, 0, 255)
button bounds(302, 2, 80, 40) channel("wide") text("WIDE") colour:0(72, 72, 72, 255)

combobox bounds(26, 156, 80, 20) channel("mode"), text("Classic", "Synced", "Granular")

rslider bounds(216, 116, 50, 70), channel("int"), text("Intensity"), range(0, 1, 1, 0.25, 0.001), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
combobox bounds(26, 126, 80, 20) channel("shapes")  popupText("shape") text("sin", "square", "rampup", "rampdown")



;classic

groupbox bounds(0, 0, 273, 292) identChannel("classic"), colour(35, 35, 35, 0) outlineColour(160, 160, 160, 0) fontColour(160, 160, 160, 0) visible(1) {

rslider bounds(20, 40, 68, 70), channel("delt"), range(0.001, 10, 0.2, 0.5, 0.001), text("Time"), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(90, 40, 68, 70), channel("fco"), range(1, 22000, 220000, 0.5, 0.001), text("Tone"), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(162, 40, 50, 70), channel("Feedback"), text("Feedback"), range(0, 1, 0.2, 1, 0.001), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(216, 40, 50, 70), channel("Rate"), text("Rate"), range(0, 10, 0.2, 0.25, 0.001), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)

gentable bounds(122, 118, 80, 68), identChannel("gentable1"), tableNumber(99.0), sampleRange(-1024, 1024), tableColour:0(212, 212, 212, 255), visible(1)


}

;synced

groupbox bounds(0, 0, 273, 292) identChannel("synced"), colour(35, 35, 35, 0) outlineColour(160, 160, 160, 0) fontColour(160, 160, 160, 0) visible(0) {

rslider bounds(20, 40, 68, 70), channel("tempo"), range(20, 200, 120, 1, 1), text("Tempo"), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(90, 40, 68, 70), channel("division"), range(1, 8, 1, 1, 1), text("/"), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(162, 40, 50, 70), channel("Feedback2"), text("Feedback"), range(0, 1, 0.2, 1, 0.001), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(216, 40, 50, 70), channel("syncrate"), text("SyncRate"), range(0 , 8, 0, 1, 1), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)

gentable bounds(122, 118, 80, 68), identChannel("gentable2"), tableNumber(98.0), sampleRange(-1024, 1024), tableColour:0(212, 212, 212, 255), visible(1)

}

;granular

groupbox bounds(0, 0, 273, 292) identChannel("granular"), colour(35, 35, 35, 0) outlineColour(160, 160, 160, 0) fontColour(160, 160, 160, 0) visible(0) channel("groupbox45") {

rslider bounds(20, 40, 68, 70), channel("delt3"), range(0.001, 10, 0.2, 0.5, 0.001), text("Time"), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(90, 40, 68, 70), channel("fco3"), range(1, 22000, 220000, 0.5, 0.001), text("Tone"), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(162, 40, 50, 70), channel("Feedback3"), text("Feedback"), range(0, 1, 0.2, 1, 0.001), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(216, 40, 50, 70), channel("Rate3"), text("Rate"), range(0, 10, 0.2, 0.25, 0.001), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)

rslider bounds(20, 200, 68, 70), channel("size"), range(10, 1000, 100, 1, 1), text("Size"), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(90, 200, 68, 70), channel("density"), range(0.1, 20, 4, 1, 0.001), text("Density"), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(162, 200, 50, 70), channel("shift"), text("Shift"), range(-2400, 2400, 0, 1, 100), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)
rslider bounds(216, 200, 50, 70), channel("spread"), text("Spread"), range(0, 1, 0, 1, 0.001), trackerColour(82, 84, 82, 255), outlineColour(0, 0, 0, 50), textColour(0, 0, 0, 255)

gentable bounds(122, 118, 80, 68), identChannel("gentable3"), tableNumber(97.0), sampleRange(-1024, 1024), tableColour:0(212, 212, 212, 255), visible(1)
}



</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d 
</CsOptions>
<CsInstruments>

ksmps = 32
nchnls = 2
0dbfs = 1

;gui

instr 17

    ;mode 
kMode init 1
kMode chnget "mode"




if kMode == 1 then
        chnset "visible(1)", "classic"
      
 else   chnset "visible(0)", "classic"

 
endif


if kMode == 2 then
        chnset "visible(1)", "synced"
       
 else   chnset "visible(0)", "synced"
 


endif


if kMode == 3 then
        chnset "visible(1)", "granular"
 else   chnset "visible(0)", "granular"
endif

kShape chnget "shapes"

if changed:k(kShape) == 1 then
        tablecopy 99, kShape
        chnset "tableNumber(99)", "gentable1" 
    endif
    
iTable99 ftgen 99, 0, 1024, 10, 1 
iTable1 ftgen 1, 0, 1024, 10, 1                     ;sine
iTable2 ftgen 2, 0, 1024, 7, 1, 512, 1, 0, -1, 512, -1     ;square
iTable3 ftgen 3, 0, 1024, 7, -1, 1024, 1, 1, -1, 1023, 1     ;rampup
iTable4 ftgen 4, 0, 1024, 7, -1, 1024, 1, 1, -  1, 1023, 1     ;rampdown
  
 
if changed:k(kShape) == 1 then
        tablecopy 98, kShape
        chnset "tableNumber(98)", "gentable2" 
    endif
    
iTable99 ftgen 98, 0, 1024, 10, 1 
iTable1 ftgen 1, 0, 1024, 10, 1                     ;sine
iTable2 ftgen 2, 0, 1024, 7, 1, 512, 1, 0, -1, 512, -1     ;square
iTable3 ftgen 3, 0, 1024, 7, -1, 1024, 1, 1, -1, 1023, 1     ;rampup
iTable4 ftgen 4, 0, 1024, 7, -1, 1024, 1, 1, -  1, 1023, 1     ;rampdown
      
if changed:k(kShape) == 1 then
        tablecopy 97, kShape
        chnset "tableNumber(97)", "gentable3" 
    endif
    
iTable99 ftgen 97, 0, 1024, 10, 1 
iTable1 ftgen 1, 0, 1024, 10, 1                     ;sine
iTable2 ftgen 2, 0, 1024, 7, 1, 512, 1, 0, -1, 512, -1     ;square
iTable3 ftgen 3, 0, 1024, 7, -1, 1024, 1, 1, -1, 1023, 1     ;rampup
iTable4 ftgen 4, 0, 1024, 7, -1, 1024, 1, 1, -  1, 1023, 1     ;rampdown
      

endin

giTableL ftgen 0, 0, sr, 10, 1 ;for one second of recording
giTableR ftgen 0, 0, sr, 10, 1 ;for one second of recording

giHalfSine ftgen 0, 0, 1024, 9, .5, 1, 0
giDelay = 1 ;ms
gaGMixL, gaGMixR  init  0 

instr 4



;effect

    ;classic
    
kInt chnget "int"
    
kRate chnget "Rate"

kDelt chnget "delt"

kWide chnget "wide"

kMode chnget "mode"


kFB chnget  "Feedback"
kFB2 chnget  "Feedback2" 
kFco chnget "fco"

kDryGain chnget "dgain"
kWetGain chnget "wgain"


iMaxTime =       10



kSync chnget "syncrate"
kTempoRaw chnget "tempo"
kDiv chnget "division"

kTempo = kTempoRaw
kTempo divz 60, kTempo, 1
kTempo divz kTempo, kDiv, 1

                                ;printk 5, kTempo

kShape chnget "shapes"

a1 inch 1
a2 inch 2


if kMode!=2 then

kLFO1 lfo kInt, kRate, 0 ;sine
kLFO2 lfo kInt, kRate, 2 ;square 
kLFO3 lfo kInt, kRate, 4 ;sawup
kLFO4 lfo kInt, kRate, 5 ;sawdown



if kShape == 1 then
 kLFOShape = ((kLFO1+1)/2)

elseif kShape == 2 then
 kLFOShape = ((kLFO2+1)/2)
 
elseif kShape == 3 then
 kLFOShape = kLFO3
 
elseif kShape == 4 then
 kLFOShape = kLFO4
 
endif

    if kRate > 0 then
    kDelt = kDelt * kLFOShape + 0.05
    else
    kDelt = kDelt
    endif
    
    kPortTime linseg   0, 0.001, 0.01
    kDelt    portk   kDelt, kPortTime

        aBufOutL    delayr  iMaxTime
        aTapL    deltapi a(kDelt) 
        aTapL tone aTapL, kFco
             delayw  a1 + (aTapL * kFB)

        aBufOutR    delayr  iMaxTime
        if kWide ==1 then
            aTapR    deltapi a(kDelt) + .02
            else
            aTapR    deltapi a(kDelt)
            endif
        aTapR tone aTapR, kFco
             delayw  a2 + (aTapR * kFB)
         
         
endif

if kMode==2 then

if kSync==1 then
kRate = kTempoRaw/920
endif

if kSync==2 then
kRate = kTempoRaw/480
endif

if kSync==3 then
kRate = kTempoRaw/240
endif

if kSync==4 then
kRate = kTempoRaw/120
endif

if kSync==5 then
kRate = kTempoRaw/60
endif

if kSync==6 then
kRate = kTempoRaw/30
endif

if kSync==7 then
kRate = kTempoRaw/15
endif

if kSync==8 then
kRate = kTempoRaw/7.5
endif



kLFO1 lfo kInt, kRate, 0 ;sine
kLFO2 lfo kInt, kRate, 2 ;square 
kLFO3 lfo kInt, kRate, 4 ;sawup
kLFO4 lfo kInt, kRate, 5 ;sawdown



if kShape == 1 then
 kLFOShape = ((kLFO1+1)/2)

elseif kShape == 2 then
 kLFOShape = ((kLFO2+1)/2)
 
elseif kShape == 3 then
 kLFOShape = kLFO3
 
elseif kShape == 4 then
 kLFOShape = kLFO4
 
endif


    if kRate > 0 then
    kTempo = kTempo * kLFOShape + 0.05
    else
    kTempo = kTempo
    endif
    
    kPortTime linseg   0, 0.001, 0.01
    kTempo   portk   kTempo, kPortTime


        aBufOutL    delayr  iMaxTime
        aTapL    deltapi a(kTempo)
             delayw  a1 + (aTapL * kFB2)

        aBufOutR    delayr  iMaxTime
        if kWide ==1 then
            aTapR    deltapi a(kTempo) + .02
            else
            aTapR    deltapi a(kTempo)
            endif
             delayw  a2 + (aTapR * kFB2)

endif



if kMode!=3 then

aOutL = ((a1*kDryGain)+(aTapL*kWetGain))
aOutR = ((a2*kDryGain)+(aTapR*kWetGain))


outs aOutL, aOutR

elseif kMode==3 then

aOutL = ((a1*kDryGain)+(aTapL*kWetGain))
aOutR = ((a2*kDryGain)+(aTapR*kWetGain))

    chnset aOutL, "Left"
    chnset aOutR, "Right"

endif
endin

instr 1 

aL chnget "Left"
aR chnget "Right"

 gaWritePointer = phasor(1)
 tablew(aL,gaWritePointer,giTableL,1)
 tablew(aR,gaWritePointer,giTableR,2)


endin

schedule(1 ,0,-1) ;1=intr1 (record)

instr 2; Granulator
 kGrainDur chnget "size"
 kTranspos chnget "shift"
 kDensity chnget "density"
 kSpread chnget "spread"
 kDistribution = 2 ;0-1
 kTrig = metro(kDensity)


 if kTrig==1 then
  kPointer = k(gaWritePointer)-giDelay/1000
  kOffset = random:k(0,kDistribution/kDensity)
  schedulek(3,kOffset,kGrainDur/1000,kPointer,cent(kTranspos),kSpread) ;3=intr3 (grain)
 endif
endin
schedule(2,giDelay/1000,-1) ;2=instr2 (granulator)

instr 3 ;Grain
 iStart = p4
 iSpeed = p5    
 iSpread = p6
 ipan         random  0.5 - (iSpread * 0.5), 0.5 + (iSpread * 0.5)
 kAntiClick	portk 1, 0.01
 aOutL = poscil3:a(poscil3:a(kAntiClick,1/p3,giHalfSine),iSpeed,giTableL,iStart)
 aOutR = poscil3:a(poscil3:a(kAntiClick,1/p3,giHalfSine),iSpeed,giTableR,iStart)

ipan         random  0.5 - (iSpread * 0.5), 0.5 + (iSpread * 0.5)  ; random pan position for this grain
gaGMixL      =       gaGMixL + (aOutL * ipan)           ; left channel mix added to global variable
gaGMixR      =       gaGMixR + (aOutR * (1 - ipan))   ; right channel mix added to global variable
         ; output
             outs    gaGMixL, gaGMixR                              ; send global audio signals to output           
             clear   gaGMixL, gaGMixR                              ; clear global audio variables
endin


</CsInstruments>
<CsScore>
i17 0 z
i4 0 z
i1 0 z
i2 0 z
i3 0 z
</CsScore>
</CsoundSynthesizer>
