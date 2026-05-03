#!/usr/bin/env python3
import sys
import wave
from pathlib import Path

def main(argv=None):
    argv = argv or sys.argv
    if len(argv) < 2:
        print("cvtsample.py: no filename; try cvtsample.py --help")
        sys.exit(1)
    infilename = Path(argv[1])
    ident = argv[2] if len(argv) > 2 else str(infilename.with_suffix(''))
    if infilename in ('--help', '-h'):
        print("usage: cvtsample.py SOURCE [IDENTIFIER]")
        return

    sHDR = "#pragma bank 255\n\n#include <gb/gb.h>\n\n// Wave file: {:s}\n\nBANKREF({:s})\n\nconst UINT8 {:s}[] = {{\n"
    sFOOT = "}};\n\nconst void __at(sizeof({:s})) __size_{:s};\n"
    sEMIT = "0x{:x}"
    sNEW = ",\n"
    sNONEW = ","

    with wave.open(str(infilename), mode="rb") as f:
        p = f.getparams()
        if (p.nchannels == 1) and (p.sampwidth == 1) and (p.framerate >= 8000) and (p.framerate <= 8192) and (p.comptype == 'NONE'):
            with open(str(infilename.with_suffix('.c')), "w") as d:            
                data = f.readframes(p.nframes)
                c = 0
                cnt = 0;
                flag = False
                d.write(sHDR.format(str(infilename), ident, ident))
                for i in range(len(data) - len(data) % 32):
                    c = ((c << 4) | (data[i] >> 4)) & 0xFF
                    if flag:
                        d.write(sEMIT.format(c))
                        cnt += 1
                        d.write(sNEW if (cnt % 16 == 0) else sNONEW)
                            
                    flag = not flag
                d.write(sFOOT.format(ident, ident))
        else:
            print("Invalid WAV file format: must be MONO 8KHz (64KBit) PCM")


if __name__=='__main__':
    main()
