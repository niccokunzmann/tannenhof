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
    return open(os.path.join(inputDir, filename)).read()

def languageName(fileName, lang = None):
    if lang is None:
        lang = language
    name, ext = os.path.splitext(fileName)
    return name + '_' + lang + ext

if not os.path.isdir(outputDir):
    os.mkdir(outputDir)

# delete output dir

for dirPath, dirNames, fileNames in os.walk(outputDir, topdown = False):
    for fileName in fileNames:
        os.remove(os.path.join(dirPath, fileName))
    for dirName in dirNames:
        os.rmdir(os.path.join(dirPath, dirName))

# generate new output

pythonRegex = re.compile('^(?P<start>.*?)\\{\\{\\{(?P<python>.*?)\\}\\}\\}(?P<end>.*?)$', re.DOTALL)

for language in ['de', 'en', 'ru']:

    for dirPath, dirNames, fileNames in os.walk(inputDir):
        relativeOutputDir = outputDir + '/' + dirPath[len(inputDir):]
        if not os.path.isdir(dirPath):
            os.makedirs(dirPath)
        for dirName in dirNames:
            newDir = os.path.join(relativeOutputDir, dirName)
            if not os.path.isdir(newDir):
                os.makedirs(newDir)
        for fileName in fileNames:
            adaptFile = fileName.endswith('.t')
            filePath = os.path.join(dirPath, fileName)
            if adaptFile:
                newFilePath = os.path.join(relativeOutputDir,\
                                           languageName(fileName[:-2]))
                print('from: %s \n\t%s' % (filePath, newFilePath))
            else:
                newFilePath = os.path.join(relativeOutputDir, fileName)
            with open(filePath, 'rb') as f:
                content = f.read()
            # replace content
            while adaptFile:
                m = pythonRegex.search(content)
                if not m: break
                s = m.group('python')
                try:
                    result = eval(s)
                except:
                    print '-' * 40
                    print s
                    time.sleep(5)
                    raise
                content = m.group('start') + str(result) + m.group('end')
            with open(newFilePath, 'wb') as f:
                f.write(content)
        


