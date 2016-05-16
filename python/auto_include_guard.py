import os
import sys


def FixFile(pathtofile, defname):
    with open(pathtofile, 'r+') as f:
        content = f.read()
        f.seek(0,0)
        f.write("#ifndef "+defname+"\n#define "+defname+"\n"+content+"\n#endif\n")

def ProcessFiles(rootdir):
    for root, subdir, files in os.walk(rootdir):
        for fn in files:
            pathtofile = os.path.join(root,fn)
            defname = "__"+os.path.splitext(fn)[0].upper()+"_H__"
            FixFile(pathtofile, defname)

if __name__ == '__main__':
    ProcessFiles("spdlog")
