{{{

______prefix = u'rundgang'
______rundgang = [unicode(_name) for _name in os.listdir('.') if _name.startswith(______prefix) and _name.endswith('.html.t')]
______rundgang.sort()

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
		next = rundgang[(index + 1) % len(rundgang)]
		back = rundgang[(index - 1) % len(rundgang)]
		next = languageName(next)
		back = languageName(back)
		string = u'''
		  <script type="text/javascript">
<!--
		    function navigateThroughRundgang(event) {{
          if (event.keyCode == 39 || event.keyCode == 13) {{
            document.location = "{next}";
          }} else if (event.keyCode == 37) {{
            document.location = "{back}";
          }} 
        }}
        document.onkeypress = navigateThroughRundgang;
        // -->
		  </script>
		  <div class="rundgang"> 
        <div class="back">
		      <a href="{back}"> &lt;&lt; </a>
	      </div>
	      <div class="next">
		      <a href="{next}"> &gt;&gt; </a>
	      </div>
        <div class="bild">
				  <img src="bilder/rundgang/{bild}" alt="{name}"/>
				</div>
				<div class="beschreibung">
  				{name}
  			</div>
			</div>
		'''
		return string.format(**locals())
}}}
