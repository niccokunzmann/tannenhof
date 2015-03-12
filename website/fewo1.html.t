{{{include('top.html.t')}}}

            <h1 class="fewo">{{{choose('Ferienwohnung 1', 'Apartment 1', u'Апартамент 1')}}}</h1>

			<div class="bildergalerie">
				<div class="spalteLinks">
					<div class="stueck">
						<div class="bild">
							<img src="bilder/fewo1/wohnzimmer.jpg" alt="">
						</div>
					</div>
				</div>
				<div class="spalteRechts">
					<div class="stueck">
						<div class="bild">
							<div style="height:4em"></div>
							<h1>{{{choose('Wohnzimmer', 'Living Room', 'Russisch')}}}</h1>
              {{{choose(u'''
                Couch mit Sesseln und Tischchen, Sat-TV, Radio, Telefon <br/>
                Küchenzeile mit Geschirrspüler, Kochplatten, Kaffeemaschine, Wasserkocher, Toaster, Kühlschrank und Geschirr''', u'''
                With arm-chair, couch, satellite-TV, radio, telephone<br/>
                Kitchenet with dishwasher, cooking plates, coffee maker, water heater, toaster, refrigerator and dishes''')}}}
						</div>
					</div>
				</div>
			</div>

			<div class="bildergalerie">
				<div class="spalteLinks">
					<div class="stueck">
						<div class="bild">
							<img src="bilder/fewo1/essecke.jpg" alt="">
						</div>
					</div>
				</div>
				<div class="spalteRechts">
					<div class="stueck">
						<div class="bild">
							<img src="bilder/fewo1/kuechenzeile.jpg" alt="">
						</div>
					</div>
				</div> 
			</div>

			<div class="bildergalerie">
				<div class="spalteLinks">
					<div class="stueck">
						<div class="bild">
							<img src="bilder/fewo1/schlafzimmer.jpg" alt="">
						</div>
						<div class="beschreibung">
              {{{choose(u'Schlafzimmer mit Doppelbett', u'Sleeping room with king-size bed')}}}
						</div>
					</div> 
				</div>
				
				<div class="spalteRechts">
					<div class="stueck">
						<div class="bild">
							<img src="bilder/fewo1/bad.jpg" alt="">
						</div>
						<div class="beschreibung">
							{{{choose(u'''
                Bad mit Dusche, WC, Föhn. <br/>
                Handtücher und Bettwäsche sind inklusive und werden wöchentlich gewechselt.	''', u'''
                Bathroom with shower, toilet, hair dryer <br/>
                Towels and bedlinen are inclusive and changed 
                weekly. ''')}}}
						</div>
					</div>
				</div>
			</div>
			
      <!-- -------------------------------- Preise ------------------------------------ -->
      
          <h1 class="fewo">{{{choose('Preise', 'Prices')}}}</h1>
      
					<table>
						<tbody>
							<tr>
								<td colspan="4" class="heading">{{{choose(	\
										u'Preise f&uuml;r Ferienwohnung 1 in &#8364; incl. MwSt. zzgl. Kurtaxe f&uuml;r', \
										u'Price for Appartment 1 in &euro; (VAT incl.) for', \
										u'Расценки для апартамента 1 в Евро включая НДС на') \
									}}}
									2015
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
								<td>308,00</td>
								<td>44,00</td>
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
						<a name="verfuegbarkeit" href="https://www.google.com/calendar/embed?src=5o7c0km3kbc73csoeb79l59ruc%40group.calendar.google.com&ctz=Europe/Berlin" target="fewo1verfuegbarkeit">
							{{{choose(
								u'Verf&uuml;gbarkeit der Ferienwohnung 1 (f&uuml;r 1 bis 2 Personen)', 
								u'Availability of appartment 1 (for 1 to 2 people)', 
								u'Календарь для заявки апартамента 1 (с 1 до 2 человека)') \
							}}}
						</a>						
					</p>
					<iframe src="https://www.google.com/calendar/embed?src=5o7c0km3kbc73csoeb79l59ruc%40group.calendar.google.com&ctz=Europe/Berlin" width="100%" height="800"></iframe>
			    
		
{{{include('bottom.html.t')}}}		
