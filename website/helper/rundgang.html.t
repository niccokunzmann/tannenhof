{{{def rundgang(name, bild): 
		prefix = 'rundgang'
		print 'haskjdfhashkdhkashkjdkahskjkas', fileName, os.listdir('.')
		rundgang = [_name for _name in os.listdir('.') if _name.startswith(prefix)]
		rundgang.sort()
		assert fileName in rundgang, 'expected %s to be in %s' % (fileName, rundgang)
		index = rundgang.index(fileName)
		next = rundgang[(index + 1) % len(rundgang)]
		back = rundgang[(index - 1) % len(rundgang)]
		next = languageName(next)
		back = languageName(back)
		string = '''
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
