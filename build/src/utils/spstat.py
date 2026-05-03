import sys
import array as arr

stat = [0] * 65536

def noi2sym(filename):
    with open(filename, "r") as f:
        line = f.readline()
        while line:
            decoded_line = [x.strip() for x in line.split('=')]
            if decoded_line[0] == 'SP':
                addr = int(decoded_line[1], 16)
                stat[addr] = stat[addr] + 1
            line = f.readline()
    with open("{}.stat".format(filename), "w") as f:
        for index, item in enumerate(stat):
            f.write("{},{}\n".format(index, item))

if __name__=='__main__':
    noi2sym(sys.argv[1])
