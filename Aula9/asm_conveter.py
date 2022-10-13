
import sys

class Assembler:

    def __init__(self):
       self.filename = sys.argv[1]
       self.opcodeFile = sys.argv[2]
       self.opcodes : dict = None
       self.labels : dict = {}
       self.LabelKey = "Label"
       self.LineKey = "Line"
       self.initialization = f"\n\n\n\n\n[Program has started]\n\nInitializing the conversion of '{self.filename}' using the '{self.opcodeFile}' . \n\n\n\n"
       print(self.initialization)


    def addOpcode(self,opcodes: dict):
        self.opcodes = opcodes 

    def addLabel(self,label: dict):
        self.labels[self.LabelKey] = label[self.LineKey]

    def build(self):
        filename = sys.argv[1]

asm = Assembler()
