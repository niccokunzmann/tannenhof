{{{include('top.html.t')}}}

					<a name="preise"></a>
					<table>
						<tbody>
							<tr>
								<td colspan="4" class="heading">{{{choose(	\
										u'Preise f&uuml;r Ferienwohnung 1 in &#8364; incl. MwSt. zzgl. Kurtaxe f&uuml;r', \
										u'Price for Appartment 1 in &euro; (VAT incl.) for', \
										u'Расценки для апартамента 1 в Евро включая НДС на') \
									}}}
									2013
									{{{choose('', '', u'г.')}}}
								</td>
							</tr>
							<tr>
								<td></td>
								<td>{{{choose('1 Woche', '1 Week', u'1 Неделя')}}}</td>
								<td>{{{choose('1 Tag', '1 Day', u'1 День')}}}</td>
								<td></td>
							</tr><tr>
								<td>{{{choose('mit 2 Personen', u'2 People', u'2 человека')}}}</td>
								<td>301,00</td>
								<td>43,00</td>
							</tr>
						</tbody>
					</table>
					<p>
						{{{choose(
							u'''Unser Angebot für ihren Aufenthalt bei uns bitten wir per  
                            <a href="&#109;&#097;&#105;&#108;&#116;&#111;:&#110;&#111;&#099;&#111;&#110;&#064;&#116;&#045;&#111;&#110;&#108;&#105;&#110;&#101;&#046;&#100;&#101;">E-Mail</a>
                            oder Telefon zu erfragen.<br/>
							Unter 3 Nächten  berechnen wir zusätzlich 25€ für die Endreinigung.''', \
							u'''The prices are offered for one appartment and weekly or longer stay. For rent we ask you to request.
							If you have any questions - please send us an 
                            <a href="&#109;&#097;&#105;&#108;&#116;&#111;:&#110;&#111;&#099;&#111;&#110;&#064;&#116;&#045;&#111;&#110;&#108;&#105;&#110;&#101;&#046;&#100;&#101;">e-mail</a>.
							If you stay for only one or two days we charge additional 25€ for cleaning. ''', \
							u'''Мы с удовольствием вышлем Вам по почте, 
                            <a href="&#109;&#097;&#105;&#108;&#116;&#111;:&#110;&#111;&#099;&#111;&#110;&#064;&#116;&#045;&#111;&#110;&#108;&#105;&#110;&#101;&#046;&#100;&#101;">электронной почте</a> или факсу предложение для индивидуального отдыха на нашей вилле.
							Кроме–того мы были бы рады, ответить на Ваши вопросы по телефону.
							Эсли вы остаётесь на один или два дня, очистка стоит дополнительно 25€.''') \
						}}}
					</p>
					<p>
						<a name="verfuegbarkeit" href="http://www.tabarz.de/cms/subu/scripts/uk_verfuegbarkeit.php?uk_id=1126&amp;k_id=56" target="fewo1verfuegbarkeit">
							{{{choose(
								u'Verf&uuml;gbarkeit der Ferienwohnung 1 (f&uuml;r 1 bis 2 Personen)', 
								u'Availability of appartment 1 (for 1 to 2 people)', 
								u'Календарь для заявки апартамента 1 (с 1 до 2 человека)') \
							}}}
						</a>						
					</p>
					<iframe src="http://www.tabarz.de/cms/subu/scripts/uk_verfuegbarkeit.php?uk_id=1126&amp;k_id=56" width="100%" height="800"></iframe>
					
{{{include('bottom.html.t')}}}
