import os
import sys

tVars = {
"${DataType}":"Corto::Request",
"${CName}": "CCortoRequest",
"${TOPIC_NAME}":"TOSET",
"${QOS_PROFILE}":"TransientKeepLast",
"${QOS_PARTICIPANT}":"TransientKeepLast",
"${QOS_PUBLISHER}":"TransientKeepLast",
"${QOS_TOPIC}":"TransientKeepLast",
"${QOS_WRITER}":"TransientKeepLast",
"${QOS_SUBSCRIBER}":"TransientKeepLast",
"${QOS_READER}":"TransientKeepLast",
}


class TBuilder:
    def __init__(self, filename, ofname, tvars):
        self.files = {}

        self.vars = tvars
        self.ofname = ofname
        self.loadFile(filename)


    def loadFile(self, filename):
        ext = None
        try:
            with open(filename,'r') as f:
                lines = f.readlines()
                for line in lines:
                    if "${BEGIN" in line:
                        if ext != None:
                            print("Warning: Unmaching ${BEGIN}-${END} %s", ext)
                        s = line.index("${BEGIN")+7
                        e = line.index("}", s)
                        ext = line[s:e].replace(" ","")
                        self.files[ext] = ""
                        self.vars["${include "+ext+"}"] = "#include "+self.ofname+"."+ext
                    elif "${END" in line:
                        ext = None
                    elif ext != None:
                        self.files[ext] += line
        except Exception:
            print("fails")
            pass

    def processFiles(self):
        for ext in self.files:
            content = self.files[ext]
            for var in self.vars:
                val = self.vars[var]
                try:
                    content = content.replace(var, val)
                except Exception:
                    continue
            self.files[ext] = content

    def save(self):
        for ext in self.files:
            content = self.files[ext]
            with open("out/"+self.ofname+"."+ext, 'w') as f:
                f.write(content)

def main():

    tb = TBuilder("test.t", "corto_request_publisher",tVars)
    tb.processFiles()
    tb.save()






class TBuilder2:
    class struct_t:
        def __init__(self):
            self.body = []


    class class_t:
        def __init__(self):
            self.private_c = []
            self.private_f = []
            self.protected_c = []
            self.protected_f = []
            self.public_c = []
            self.public_f = []

    class file_t:
        def __init__(self):
            self.header = []
            self.structs = []
            self.classes = []




































if __name__ == '__main__':
    main()
