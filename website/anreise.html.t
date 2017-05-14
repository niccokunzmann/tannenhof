{{{include('top.html.t')}}}		

          <script type="text/javascript">
            var autobahn_string = '<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.de/maps?f=d&amp;source=s_d&amp;saddr=A4&amp;daddr=Alexandrinenweg&amp;geocode=Fcv6CAMdoNqgAA%3BFbJJCAMdBXqgAA&amp;aq=&amp;sll=50.87783,10.523186&amp;sspn=0.015624,0.042272&amp;hl={{{language}}}&amp;mra=dme&amp;mrsp=1&amp;sz=15&amp;ie=UTF8&amp;t=m&amp;ll=50.900218,10.530396&amp;spn=0.075784,0.145912&amp;z=12&amp;output=embed"></iframe>';
            var tabarz_string = '<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.de/maps?f=d&amp;source=s_d&amp;saddr=A4&amp;daddr=Alexandrinenweg&amp;hl={{{language}}}&amp;geocode=FZH6CAMddt-gAA%3BFSBKCAMdMHmgAA&amp;aq=t&amp;sll=50.900976,10.524731&amp;sspn=0.063008,0.169086&amp;mra=dme&amp;mrsp=0&amp;sz=13&amp;ie=UTF8&amp;t=m&amp;ll=50.87439,10.520911&amp;spn=0.009478,0.018239&amp;z=15&amp;output=embed"></iframe>';
            
            
          </script>

					<table>
						<tbody>
							<tr>
								<td>
									<!-- Anfahrt von Autobahn -->
										<a href="http://maps.google.de/maps?f=d&amp;source=embed&amp;saddr=A4&amp;daddr=Alexandrinenweg&amp;geocode=Fcv6CAMdoNqgAA%3BFbJJCAMdBXqgAA&amp;aq=&amp;sll=50.87783,10.523186&amp;sspn=0.015624,0.042272&amp;hl={{{language}}}&amp;mra=dme&amp;mrsp=1&amp;sz=15&amp;ie=UTF8&amp;t=m&amp;ll=50.900218,10.530396&amp;spn=0.075784,0.145912&amp;z=12" style="color:#0000FF;text-align:left" target="anfahrt1">
											<img src="bilder/anreise/autobahn.png" class="googlemapsframe"/>
										</a>
								</td>
								<td>
									<!-- Anfahrt in Bad Tabarz -->
										<a href="http://maps.google.de/maps?f=d&amp;source=embed&amp;saddr=A4&amp;daddr=Alexandrinenweg&amp;hl={{{language}}}&amp;geocode=FZH6CAMddt-gAA%3BFSBKCAMdMHmgAA&amp;aq=t&amp;sll=50.900976,10.524731&amp;sspn=0.063008,0.169086&amp;mra=dme&amp;mrsp=0&amp;sz=13&amp;ie=UTF8&amp;t=m&amp;ll=50.87439,10.520911&amp;spn=0.009478,0.018239&amp;z=15" style="color:#0000FF;text-align:left" target="anfahrt2">
											<img src="bilder/anreise/tabarz.png" class="googlemapsframe"/>
										</a>
								</td>
							</tr>
							<tr>
								<td>
									<a href="http://maps.google.de/maps?f=d&amp;source=embed&amp;saddr=A4&amp;daddr=Alexandrinenweg&amp;geocode=Fcv6CAMdoNqgAA%3BFbJJCAMdBXqgAA&amp;aq=&amp;sll=50.87783,10.523186&amp;sspn=0.015624,0.042272&amp;hl={{{language}}}&amp;mra=dme&amp;mrsp=1&amp;sz=15&amp;ie=UTF8&amp;t=m&amp;ll=50.900218,10.530396&amp;spn=0.075784,0.145912&amp;z=12" style="color:#0000FF;text-align:left" target="anfahrt1">
										{{{choose('Anfahrt von der Autobahn', 'Directions from the autobahn', u'Приезд от автобана')}}}
									</a>
								</td>
								<td>
									<a href="http://maps.google.de/maps?f=d&amp;source=embed&amp;saddr=A4&amp;daddr=Alexandrinenweg&amp;hl={{{language}}}&amp;geocode=FZH6CAMddt-gAA%3BFSBKCAMdMHmgAA&amp;aq=t&amp;sll=50.900976,10.524731&amp;sspn=0.063008,0.169086&amp;mra=dme&amp;mrsp=0&amp;sz=13&amp;ie=UTF8&amp;t=m&amp;ll=50.87439,10.520911&amp;spn=0.009478,0.018239&amp;z=15" style="color:#0000FF;text-align:left" target="anfahrt2">
										{{{choose('Anfahrt in Bad Tabarz', 'Directions in Bad Tabarz', u'Приезд в Табарце')}}}
									</a>
								</td>
						</tbody>
					</table>

					{{{include(languageName('anreise/informationen.txt'))}}}

{{{include('bottom.html.t')}}}
