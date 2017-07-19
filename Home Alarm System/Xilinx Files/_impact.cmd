setMode -pff
setMode -pff
addConfigDevice  -name "uuiu" -path "C:\Course\ExampleAlarm\"
setSubmode -pffserial
setAttribute -configdevice -attr multibootBpiType -value ""
addDesign -version 0 -name "0"
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr autoSize -value "FALSE"
setAttribute -configdevice -attr fileFormat -value "mcs"
setAttribute -configdevice -attr fillValue -value "FF"
setAttribute -configdevice -attr swapBit -value "FALSE"
setAttribute -configdevice -attr dir -value "UP"
setAttribute -configdevice -attr multiboot -value "FALSE"
setAttribute -configdevice -attr multiboot -value "FALSE"
setAttribute -configdevice -attr spiSelected -value "FALSE"
setAttribute -configdevice -attr spiSelected -value "FALSE"
addPromDevice -p 1 -size 0 -name xcf02s
setMode -pff
setMode -pff
setSubmode -pffserial
setMode -pff
addDeviceChain -index 0
setMode -pff
setMode -pff
setMode -pff
addDeviceChain -index 0
addDevice -p 1 -file "C:/Course/ExampleAlarm/top.bit"
setMode -pff
setMode -pff
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -pff
saveProjectFile -file "C:/Course/ExampleAlarm/uuu.ipf"
deletePromDevice -position 1
setCurrentDesign -version 0
deleteDevice -position 1
deleteDesign -version 0
setCurrentDesign -version -1
setMode -pff
setMode -pff
addConfigDevice  -name "Untitled" -path "C:\Course\ExampleAlarm\"
setSubmode -pffserial
setAttribute -configdevice -attr multibootBpiType -value ""
addDesign -version 0 -name "0"
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr autoSize -value "FALSE"
setAttribute -configdevice -attr fileFormat -value "mcs"
setAttribute -configdevice -attr fillValue -value "FF"
setAttribute -configdevice -attr swapBit -value "FALSE"
setAttribute -configdevice -attr dir -value "UP"
setAttribute -configdevice -attr multiboot -value "FALSE"
setAttribute -configdevice -attr multiboot -value "FALSE"
setAttribute -configdevice -attr spiSelected -value "FALSE"
setAttribute -configdevice -attr spiSelected -value "FALSE"
addPromDevice -p 1 -size 0 -name xcf02s
setMode -pff
setMode -pff
setSubmode -pffserial
setMode -pff
addDeviceChain -index 0
setMode -pff
setMode -pff
setMode -pff
addDeviceChain -index 0
addDevice -p 1 -file "C:/Course/ExampleAlarm/top.bit"
setMode -bs
setMode -bs
setMode -bs
setMode -bs
setMode -pff
setMode -pff
setMode -pff
setMode -bs
setMode -bs
setMode -bs
setCable -port auto
Identify -inferir 
identifyMPM 
assignFile -p 1 -file "C:/Course/ExampleAlarm/top.bit"
setMode -pff
setMode -pff
setMode -pff
setMode -pff
setSubmode -pffserial
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
setMode -bs
assignFile -p 2 -file "C:/Course/ExampleAlarm/Untitled.mcs"
setAttribute -position 2 -attr packageName -value ""
Program -p 2 -e -v 
Program -p 1 
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
saveProjectFile -file "C:/Course/ExampleAlarm/uuu.ipf"
setMode -bs
deleteDevice -position 1
deleteDevice -position 1
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
deletePromDevice -position 1
setCurrentDesign -version 0
deleteDevice -position 1
deleteDesign -version 0
setCurrentDesign -version -1
