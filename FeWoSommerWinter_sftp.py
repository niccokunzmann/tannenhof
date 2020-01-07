#!/usr/bin/python2
# Programm von Nicco Kunzmann
#
# C:\Python27\python.exe -m pip install pysftp

try:
    from userAndPassword import user, password
    import pysftp
    import ftplib
    import os
    import urllib

    class Fehler(Exception):
        pass

    # daten
    host= 'hosting.telekom.de'

    # host key validation ausstellen
    # https://stackoverflow.com/a/39019227
    cnopts = pysftp.CnOpts()
    cnopts.hostkeys = None  

    # verbindung herstellen
    print 'Verbinde mit %s ...\t' % host,
    client = pysftp.Connection(host, username=user, password=password, cnopts=cnopts)
    print 'ok'
    
    # sommer oder winter festlegen
    print '\nBitte eingeben und ENTER dr\xfccken:\n\tBeenden\tleer\n\tSommer\ts \n\tWinter\tw'
    add= raw_input().lower()
    while add not in ('s', 'w'):
        if add == '':
            exit(0)
        else:
            print '%s is eine falsche Eingabe: s, w oder nichts wird erwartet. Bitte nochmal eingeben:'
            add= raw_input().lower()

    rm= ' ' + 'ws'[['s', 'w'].index(add)]
    add= ' ' + add
    
    # dateien umbenennen
    if not os.path.isfile('sommerWinterBilder.txt'):
        url = 'https://raw.github.com/niccokunzmann/tannenhof/master/sommerWinterBilder.txt'
        print 'empfange', url,
        dateiListe = urllib.urlopen(url)
        if dateiListe.code == 200:
            print 'ok'
        else:
            print 'nicht ok'
            raise Fehler('Konnte umzubenennende Dateien nicht empfangen. (%s)' % dateiListe.code)
    else:
        dateiListe = open('sommerWinterBilder.txt')
    dateiListe = dateiListe.read().splitlines()
    dateiListe = [l.strip() for l in dateiListe]
    dateiListe.sort(key= lambda a: a.count('/'))
    lastBasename= None
    mode= 0
    for datei in dateiListe:
        if not datei:
            continue
        
        # verzeichnis betreten
        basename, filename= os.path.split(datei)
        basename = "/home/www/public_html/" + basename
        print 'Verzeichnis %s ...' % basename,
        with client.cd(basename):
            print "ok"

            # datei umbenennnen
            print '\t%s' % filename
            # test: file add exists
            # test: file rm exists
            # file -> file rm
            # file add -> file
            filename, extension= os.path.splitext(filename)
            
            if not client.exists(filename + add + extension):
                print '\t\t%s ist schon richtig umbenannt \n\t\toder kann nicht umbenannt werden' %(filename + extension)
                print '\t%s ... ok' % filename
                continue

            if mode == 3:
                pass
            else:
                if client.exists(filename + rm + extension):
                    if mode == 4:
                        print '\t\t\t\xfcberspringen'
                        continue
                    while mode not in (1, 2, 3, 4):
                        print '\t\t%s existiert schon' %(filename + rm + extension)
                        print '\t\t1 einmal \xfcberspringen'
                        print '\t\t2 einmal trotzdem umbennennen'
                        print '\t\t3 alle folgenden auch umbennennen'
                        print '\t\t4 alle folgenden auch \xfcberspringen'
                        try:
                            mode= int(raw_input('\t\t'))
                        except ValueError:
                            mode= 0
                        if mode == 1 or mode == 4:
                            print '\t\t\t\xfcberspringen'
                            continue
                        if mode == 2:
                            print '\t\t\tnur jetzt umbennennen'
                        if mode == 3:
                            print '\t\t\talle umbennennen'
            print '\t\t%s -> %s' % (filename + extension, filename + rm + extension)
            client.rename(filename + extension, filename + rm + extension)
            print '\t\t%s -> %s' % (filename + add + extension, filename + extension)
            client.rename(filename + add + extension, filename + extension)
            print '\t%s ... ok' % filename
    print 'Alles umbenannt, was ich konnte.'
    raw_input('Zum Beenden ENTER dr\xfccken')
except:
    import sys, traceback
    traceback.print_exception(*sys.exc_info())
    print 'Es ist ein Fehler aufgetreten'
    raw_input('Zum Beenden ENTER dr\xfccken')
