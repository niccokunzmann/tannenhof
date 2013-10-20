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
			
			
		
{{{include('bottom.html.t')}}}		
