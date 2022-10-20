import sys
import json

class Assembler:

    def __init__(self):
       
       self.filename = sys.argv[1]
       self.opcodeFile = sys.argv[2]
       try:
           self.bin = sys.argv[3]
       except:
           self.bin = "" 
       self.Isbin = self.bin == ("--binary")
       self.filename_asm = f"{self.filename.split('.')[0]}.asm"
       self.stringComment = "#"
       self.stringLabel = ":"
       self.opcodes : dict = {}
       self.stopOpcodes :list(str) = []
       self.labels : dict = {}
       self.lines : dict = {}
       self.LabelKey = "Label"
       self.LineKey = "Line"
       self.initialization = f"\n\n\n\n\n[Program has started]\n\nInitializing the conversion of '{self.filename}' using the '{self.opcodeFile}' . \n\n"
       print(self.initialization)
       print(self.bin)

       self.assemble()

    def addLabel(self,label: dict):
        
        self.labels[label[self.LabelKey].upper()] = label[self.LineKey]

    def loadOpcode(self):
        
        with open(self.opcodeFile, 'r', encoding='utf-8') as archive:
            archive_json = json.load(archive)
        self.opcodes = archive_json["Opcodes"]
        self.stopOpcodes = archive_json["StopOpcodes"]
    
    def sep_content(self,line: str, sep_string: str, pos = 0 ):
        if sep_string in line:
            content = line.split(sep_string)[pos].strip()
        else:
            content = line.strip()

        return content

    def labelBuilder(self):
        id_line = 0
        with open(self.filename, 'r', encoding='utf-8') as archive:
            for line in archive.readlines():
                # Separating comments from the line content
                content = self.sep_content(line,self.stringComment)

                # Storaging Labels´ positions
                if self.stringLabel in content:
                    label_obj = {}
                    label_obj[self.LabelKey] = self.sep_content(content,self.stringLabel)
                    label_obj[self.LineKey] = id_line
                    self.addLabel(label_obj)

                # Counting the Opcode lines
                elif (self.stopOpcodes[0] in content) or  (self.stopOpcodes[1] in content) or content =="NOP" or content=="RET":
                    id_line += 1

    def opcodeBuilder(self):
        id_line = 0
        with open(self.filename, 'r', encoding='utf-8') as archive:
            for line in archive.readlines():
                # Separating comments from the line content
                content = self.sep_content(line,self.stringComment)

                if  (self.stopOpcodes[0] in content):
                    if self.Isbin:

                        opcode = self.opcodes[self.sep_content(content,self.stopOpcodes[0],0)]
                        number = self.sep_content(content,self.stopOpcodes[0],1)
                    else:
                        opcode = self.sep_content(content,self.stopOpcodes[0],0)
                        number = self.sep_content(content,self.stopOpcodes[0],1)

                    try:
                        number = self.labels[number.upper()]
                    except:
                        pass

                    self.lines[id_line] = [opcode,number]
                    id_line += 1

                elif  (self.stopOpcodes[1] in content):
                    if self.Isbin:

                        opcode = self.opcodes[self.sep_content(content,self.stopOpcodes[1],0)]
                        number = self.sep_content(content,self.stopOpcodes[1],1)
                    else:
                        opcode = self.sep_content(content,self.stopOpcodes[1],0)
                        number = self.sep_content(content,self.stopOpcodes[1],1)
                    try:
                        number = self.labels[number.upper()]
                    except:
                        pass

                    self.lines[id_line] = [opcode,number]
                    id_line += 1
                
                elif (content == "RET") or  (content == "NOP"):
                    if self.Isbin:
                        self.lines[id_line] = [self.opcodes[content] ,"0"]
                    else:
                        self.lines[id_line] = [content ,"0"]
                    id_line += 1
    
    def Bynarization(self):
        BinaryFormat = lambda x, n: format(x, 'b').zfill(n)
        if self.Isbin:
            self.lines = {key: [BinaryFormat(int(value[0]),4),BinaryFormat(int(value[1]),9)] for key, value in self.lines.items()}
        else:
            self.lines = {key: [value[0],BinaryFormat(int(value[1]),9)] for key, value in self.lines.items()}
    def convert(self):
        id_line = 0
        writing = True
        with open(self.filename_asm,"w", encoding="utf-8") as archive:
            while writing:
                try:
                    if self.Isbin:
                        archive.write(f"tmp({id_line})  := \"{self.lines[id_line][0]}{self.lines[id_line][1]}\";\n")
                    else:
                        archive.write(f"tmp({id_line})  := {self.lines[id_line][0]} & \"{self.lines[id_line][1]}\";\n")
                    id_line += 1
                except:
                    writing = False
            archive.write("return tmp;")

    def assemble(self):
        self.loadOpcode()
        self.labelBuilder()
        self.opcodeBuilder()
        self.Bynarization()
        self.convert()
        print(f"The convertion has ended: '{self.filename_asm}' is ready\n\n")


asm = Assembler()

