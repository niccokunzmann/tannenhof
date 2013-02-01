#!/usr/bin/python2
'''
generate files out of .t files

use the following
    language
    include(filename)
    languageName(filename)
    languageName(filename, language)

'''

import os
import re
import time

languages = ['de', 'en', 'ru']

outputDir = '../output'
inputDir = '.'

def read(fileName):
    with open(fileName, 'rb') as f:
        content = f.read()
    try:
        return content.decode('UTF-8'), True
    except UnicodeDecodeError:
        return content, False

def write(path, content, utf8):
    if utf8:
        content = content.encode('UTF-8-SIG')
    with open(path, 'wb') as f:
        f.write(content)

# useful functions

def choose(de, en, ru):
    return locals()[language]

def include(filename):
    print ('including ' + str(filename))
    return read(os.path.join(inputDir, filename))[0]

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

pythonRegex = re.compile(u'^(?P<start>.*?)\\{\\{\\{(?P<python>.*?)\\}\\}\\}(?P<end>.*?)$', re.DOTALL)

for language in languages:

    for dirPath, dirNames, fileNames in os.walk(inputDir):
        webDirPath = dirPath[len(inputDir):]
        relativeOutputDir = outputDir + '/' + webDirPath
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
                webFileName = fileName[:-2]
                webFilePath = os.path.join(webDirPath, webFileName \
                                           ).replace('\\', '/')
                newFilePath = os.path.join(relativeOutputDir,\
                                           languageName(webFileName))
                print('from: %s \n\t%s' % (filePath, newFilePath))
            else:
                newFilePath = os.path.join(relativeOutputDir, fileName)
            content, utf8 = read(filePath)
            # replace content
            while adaptFile:
                m = pythonRegex.search(content)
                if not m: break
                s = m.group('python')
                try:
                    result = unicode(eval(compile(s, filePath, 'eval')))
                except:
                    print('-' * 40)
                    try:
                        print(s)
                    except:
                        print(repr(s))
                    print('\b')
                    raise
##                print repr(m.group('start'))
##                print repr(result)
##                print repr(m.group('end'))
                content = m.group('start') + result + m.group('end')
            write(newFilePath, content, utf8)
        

print ('')
print ('OK')
time.sleep(1)


