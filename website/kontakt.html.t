<html>
	<body>
	{{{include('top.html.t')}}}
		<div class="kontakt">Ferienwohnungen "Villa Tannenhof"</div>
		
		{{{choose('', '', u'<div class="kontakt">Апартаменты «Вилла Танненхоф»</div>')}}}

		<div class="kontakt">J&ouml;rg Kunzmann{{{choose('', '', u', Йорг Кунцманн')}}}</div>

		<div class="kontakt">Zimmerbergstr. 7</div>
		
		<div class="kontakt">{{{choose(u'', u'Germany ', u'Геримания ')}}}99891 Tabarz</div>

		<div class="kontakt">{{{choose('Tel.: 0', 'Tel.: +49 ', u'телефон: +49 ')}}}36259 / 51200</div>

		<div class="kontakt">{{{choose('Fax: 0', 'Fax.: +49 ', u'факс: +49 ')}}}36259 / 51201</div>
		
		<div class="kontakt">{{{choose('E-Mail', 'E-Mail', u'Электро́нная По́чта')}}}: {{{include('helper/email.html.t')}}}</div>
	{{{include('bottom.html.t')}}}
	</body>
</html>