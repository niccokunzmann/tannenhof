<html>
	<body>
	{{{include('top.html.t')}}}
		<div class="impressum">Ferienwohnungen "Villa Tannenhof"</div>
		
		{{{choose('', '', u'<div class="impressum">Апартаменты «Вилла Танненхоф»</div>')}}}

		<div class="impressum">J&ouml;rg Kunzmann{{{choose('', '', u', Йорг Кунцманн')}}}</div>

		<div class="impressum">Zimmerbergstr. 7</div>
		
		<div class="impressum">{{{choose(u'', u'Germany ', u'Геримания ')}}}99891 Tabarz</div>

		<div class="impressum">{{{choose('Tel.: 0', 'Tel.: +49 ', u'телефон: +49 ')}}}36259 / 51200</div>

		<div class="impressum">{{{choose('Fax: 0', 'Fax.: +49 ', u'факс: +49 ')}}}36259 / 51201</div>
		
		<div class="impressum">{{{choose('E-Mail', 'E-Mail', u'Электро́нная По́чта')}}}: {{{include('helper/email.html.t')}}}</div>
	{{{include('bottom.html.t')}}}
	</body>
</html>