#!/usr/bin/python2
# Programm von Nicco Kunzmann

try:
    from userAndPassword import user, password
    import ftplib
    import os
    import urllib

    class Fehler(Exception):
        pass

    # daten
    host= 'villatannenhof.homepage.t-online.de'
    port= 21

    # verbindung herstellen
    print 'Verbinde mit %s ...\t' % host,
    client= ftplib.FTP(host= host)
    print 'ok'
    print 'Login als "%s" ...\t' % user,
    s= client.login(user, password)
    if s.startswith('230 '):
        print 'ok'
    else:
        print
        raise Fehler(s)
    
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
        if basename != lastBasename:
            print 'Verzeichnis %s ...' % basename,
            s= client.cwd(basename)
            if s.startswith('2'):
                print 'ok'
            else:
                print
                raise Fehler(s)
        lastBasename= basename

        # datei umbenennnen
        print '\t%s' % filename
        # test: file add exists
        # test: file rm exists
        # file -> file rm
        # file add -> file
        filename, extension= os.path.splitext(filename)
        
        try:
            client.size(filename + add + extension)
        except ftplib.error_perm:
            print '\t\t%s ist schon richtig umbenannt \n\t\toder kann nicht umbenannt werden' %(filename + extension)
            print '\t%s ... ok' % filename
            continue

        if mode == 3:
            pass
        else:
            try:
                client.size(filename + rm + extension)
            except ftplib.error_perm:
                pass
            else:
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
