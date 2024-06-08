import sys
import re
    
with open(sys.argv[1], encoding="utf-8") as f1, open(sys.argv[2], 'w', encoding="utf-8") as f2:
    for line in f1:
        line = re.sub("a", "а", line.lower())
        line = re.sub("e", "е", line)
        line = re.sub("o", "о", line)
        line = re.sub("i", "и", line)
        line = re.sub("t", "т", line)
        line = re.sub("x", "х", line)
        f2.write(' '.join(re.sub('[\\\.,-?!"—–”“«»⅛@#$%^&*()_+[\]{}/~|‘]',' ', ' '.join( line.split()[1:] )).split()) + '\n')
