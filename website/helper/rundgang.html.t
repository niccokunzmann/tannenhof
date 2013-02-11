{{{

______prefix = u'rundgang'
______rundgang = [unicode(_name) for _name in os.listdir('.') if _name.startswith(______prefix)]

def rundgang(name, bild = None): 
		if bild is None and fileName.startswith('rundgang_') and fileName.endswith('.html.t'):
			bild = fileName[len('rundgang_'):-len('.html.t')] + '.jpg'
		elif bild is None:
			raise ArgumentError('ich brauche das bild als zweites argument, weil der dateiname nicht in "rundgang_*.html.t" passt. ')
		bild = unicode(bild)
		prefix = ______prefix
		rundgang = ______rundgang
		assert fileName in rundgang, 'expected %s to be in %s' % (fileName, rundgang)
		index = rundgang.index(fileName)
		rundgang = [(_name[:-2] if _name.endswith('.t') else _name) for _name in rundgang]
		rundgang.sort()
		next = rundgang[(index + 1) % len(rundgang)]
		back = rundgang[(index - 1) % len(rundgang)]
		next = languageName(next)
		back = languageName(back)
		string = u'''
			<div class="rundgang"> 
				<h1>{name}</h1>
				<div class="bild">
					<img src="bilder/rundgang/{bild}" alt="{name}"/>
				</div>
				<a href="{next}"> &gt;&gt; </a>
				<a href="{back}"> &lt;&lt; </a>
			</div>
		'''
		return string.format(**locals())}}}
