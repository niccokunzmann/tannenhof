{{{include('top.html.t')}}}

            <h1 class="fewo">{{{choose('Ferienwohnung 2', 'Apartment 2', u'Апартамент 2')}}}</h1>

			<div class="bildergalerie">
				<div class="spalteLinks">
					<div class="stueck">
						<div class="bild">
							<img src="bilder/fewo2/wohnzimmer.jpg" alt="">
						</div>
					</div>
				</div>
				<div class="spalteRechts">
					<div class="stueck">
						<div class="bild">
							<div style="height:4em"></div>
							<h1>{{{choose('Wohnzimmer', 'Living Room', 'Russisch')}}}</h1>
							{{{choose(u'''mit Couch, Sesseln, 
							Tischchen, Schrankwand, 
							Sat-TV, Radio und Telefon  sowie
							Küchenzeile mit <!--Geschirrspüler,--> Kochplatten, Kaffeemaschine, Wasserkocher, Toaster, Kühlschrank und Geschirr
							und Essecke ''', u'''
              with satellite-TV, radio, telephone, cupboard. <br/> 
              Kitchenet with <!--dishwasher,--> cooking plates, coffee maker, water boiler, toaster, refrigerator and dishes
              ''')}}}
						</div>
					</div>
				</div>
			</div>
			<div class="bildergalerie">
				<div class="spalteLinks">
					<div class="stueck">
						<div class="bild">
							<img src="bilder/fewo2/kuechenzeile.jpg" alt="">
						</div>
					</div>
				</div>
				<div class="spalteRechts">
					<div class="stueck">
						<div class="bild">
							<img src="bilder/fewo2/essecke.jpg" alt="">
						</div>
					</div>
				</div>
			</div>
			<div class="bildergalerie">
				<div class="spalteLinks">
					<div class="stueck">
						<div class="bild">
							<img src="bilder/fewo2/schlafzimmer_etagenbett.jpg" alt="">
						</div>
					</div>						
					<div class="stueck">
						<div class="bild">
							<div style="height:4em"></div>
							<h1>{{{choose('Schlafzimmer', u'Sleeping Room')}}}</h1>
							{{{choose('mit Doppelbett und Etagenbett', 'with king-size bed and bunk bed')}}}
						</div>
					</div>
				</div>
				<div class="spalteRechts">
					<div class="stueck">
						<div class="bild">
							<img src="bilder/fewo2/schlafzimmer.jpg" alt="">
						</div>
					</div>
				</div>
			</div>
			
			<div class="bildergalerie">
				<div class="spalteLinks">
					<div class="stueck">
						<div class="bild">
							<img src="bilder/fewo2/bad.jpg" alt="">
						</div>
					</div>
				</div>
				<div class="spalteRechts">
					<div class="stueck">
						<div class="bild">
							<div style="height:10em"></div>
							<h1>{{{choose('Bad', 'Bathroom')}}}</h1> 
							{{{choose(u'''mit Dusche, WC, Föhn. <br/>
                Handtücher und Bettwäsche sind inklusive<br/> und werden wöchentlich gewechselt.''', u'''
                with shower, toilet, hair dryer <br/>
                Towels and bedlinen are inclusive <br/> and changed 
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
										u'Preise f&uuml;r Ferienwohnung 2 in &#8364; incl. MwSt. zzgl. Kurtaxe f&uuml;r', \
										u'Price for Appartment 2 in &euro; (VAT incl.) for', \
										u'Расценки для апартамента 2 в Евро включая НДС на') \
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
							</tr><tr>
								<td>{{{choose('mit 3 Personen', u'3 People', u'3 человека')}}}</td>
								<td>343,00</td>
								<td>49,00</td>
							</tr><tr>
								<td>{{{choose('mit 4 Personen', u'4 People', u'4 человека')}}}</td>
								<td>378,00</td>
								<td>54,00</td>
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
						<a name="verfuegbarkeit" href="https://www.google.com/calendar/embed?src=ia59egqm2altaphbd74uu802po%40group.calendar.google.com&ctz=Europe/Berlin" target="fewo2verfuegbarkeit">
							{{{choose(
								u'Verf&uuml;gbarkeit der Ferienwohnung 2 (f&uuml;r 1 bis 4 Personen)', 
								u'Availability of appartment 2 (for 1 to 4 people)', 
								u'Календарь для заявки апартамента 2 (с 1 до 4 человека)') \
							}}}
						</a>
					</p>
					<iframe src="https://www.google.com/calendar/embed?src=ia59egqm2altaphbd74uu802po%40group.calendar.google.com&ctz=Europe/Berlin" width="100%" height="800"></iframe>
      
{{{include('bottom.html.t')}}}