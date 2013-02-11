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
## !!!! FILE_DEBUG may help debugging python scripts
FILE_DEBUG = False
DEBUG = './debug/'
if FILE_DEBUG and not os.path.isdir(DEBUG):
    os.mkdir(DEBUG)
    DEBUG_INDEX = len(os.listdir(DEBUG))

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
        if os.path.abspath(dirPath) == os.path.abspath(DEBUG):
            continue
        webDirPath = dirPath[len(inputDir):]
        relativeOutputDir = outputDir + '/' + webDirPath
        if not os.path.isdir(dirPath):
            os.makedirs(dirPath)
        for dirName in dirNames:
            newDir = os.path.join(relativeOutputDir, dirName)
            if not os.path.isdir(newDir):
                os.makedirs(newDir)
        for fileName in fileNames:
            filePath = os.path.join(dirPath, fileName)
            adaptFile = fileName.endswith('.t')
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
                if FILE_DEBUG:
                    sourceFilePath = DEBUG + '/%i_%s' % (DEBUG_INDEX, fileName)
                    DEBUG_INDEX += 1
                    with open(sourceFilePath, 'wb') as f:
                        f.write(s.encode('utf8'))
                else:
                    sourceFilePath = filePath
                try:
                    code = compile(s, sourceFilePath, 'eval')
                    mode = 'eval'
                except SyntaxError:
                    mode = 'exec'
                    code = compile(s, sourceFilePath, 'exec')
                try:
                    if mode == 'eval':
                        result = unicode(eval(code))
                    else:
                        result = '' 
                        exec(code)
                        result = unicode(result)
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


