'''
generate files out of .t files

use the following
    language
    include(filename)
    languageName(filename)
    languageName(filename, langauge)

'''

import os
import re
import time

# useful functions

outputDir = '../output'
inputDir = '.'

def include(filename):
    print ('including ' + str(filename))
    return open(filename).read()

def languageName(fileName, lang = None):
    if lang is None:
        lang = language
    name, ext = os.path.splitext(fileName)
    return name + '_' + lang + ext

if not os.path.isdir(outputDir):
    os.mkdir(outputDir)

# delete output dir

for dirPath, dirNames, fileNames in os.walk(outputDir):
    for fileName in fileNames:
        os.remove(fileName)
    for dirName in dirNames:
        os.remove(dirName)

# generate new output

pythonRegex = re.compile('^(?P<start>.*?)\\{\\{\\{(?P<python>.*?)\\}\\}\\}(?P<end>.*?)$', re.DOTALL)

for language in ['de', 'en', 'ru']:

    for dirPath, dirNames, fileNames in os.walk(inputDir):
        
        if not fileName.endswith('.t'):
            continue
        filePath = os.path.join(inputDir, fileName)
        newFilePath = os.path.join(outputDir, languageName(fileName[:-2]))
        print('from: %s \n\t%s' % (filePath, newFilePath))
        with open(filePath) as f:
            content = f.read()
        # replace content
        while 1:
            m = pythonRegex.search(content)
            if not m: break
            s = m.group('python')
            try:
                print 'eval'
                result = eval(s)
            except:
                print '-' * 40
                print s
                time.sleep(5)
                raise
            content = m.group('start') + str(result) + m.group('end')
                
            
            
        with open(newFilePath, 'w') as f:
            f.write(content)
    


