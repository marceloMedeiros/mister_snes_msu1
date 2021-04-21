
if [ ! -f /media/fat/BIOS/SNES-MSU1/MiSTer ]
then
        echo "Error: Aborting.."
        echo "Missing file"
        echo "BIOS/SNES-MSU1/MiSTer"
        exit 1
fi

if [ ! -f /media/fat/BIOS/SNES-MSU1/SNES-MSU1.rbf ]
then
        echo "Error: Aborting.."
        echo "Missing file"
        echo "BIOS/SNES-MSU1/SNES-MSU1.rbf"
        exit 1
fi

mv /media/fat/MiSTer /media/fat/MiSTer.bak
cp /media/fat/BIOS/SNES-MSU1/MiSTer /media/fat/MiSTer
cp /media/fat/BIOS/SNES-MSU1/SNES-MSU1.rbf /media/fat/_Console/
fpga /media/fat/_Console/SNES-MSU1.rbf
