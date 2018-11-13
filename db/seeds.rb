# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.find_or_create_by(codigo: 'admin183121');

Residence.find_or_create_by(nombre:'Parque Bonito', desc:'Residencia de veraneo y a poca distancia de la playa, exelente para pasar en familia', provincia:'Buenos Aires', partido:'Villa Gesell', ciudad:'Villa Gesell', img_link:'https://media-cdn.tripadvisor.com/media/photo-s/0a/95/b6/64/residencia-parque-bonito.jpg', direccion:'Almeda 208')
Residence.find_or_create_by(nombre:'La Florida', desc:'En La Florida encontrarás un alojamiento innovador, situado en el corazón de Villa Gesell a orillas del mar.', provincia:'Buenos Aires', partido:'Villa Gesell', ciudad:'Villa Gesell', img_link:'https://cdn.bestday.net/_lib/vimages/Villa-Gesell-Argentina/Hotels/Villa-Gesell-Spa-Resort-ex-Days-Inn-Villa-Gesell/Fachada_g.jpg', direccion:'Sandias 223')
Residence.find_or_create_by(nombre:'Boutique', desc:'Lugar tranquilo para relajarse y disfrutar', provincia:'Buenos Aires', partido:'Mar del Plata', ciudad:'Mar del Plata', img_link:'https://www.roblescasascampos.com/res/Inmuebles/1650_1562963236_750x450.jpg', direccion:'Av Miranda 350')
Residence.find_or_create_by(nombre:'Sanso', desc:'La Residencia Sanso está situada a 2 km del centro de San Carlos de Bariloche y cuenta con zona de parrilla y cancha de tenis. Este alojamiento independiente está rodeado de bosques naturales y ofrece conexión wifi gratis.', provincia:'Rio Negro', partido:'Bariloche', ciudad:'San Carlos de Bariloche', img_link:'https://s-ec.bstatic.com/images/hotel/max1024x768/292/29223001.jpg', direccion:'Av los PIoneros 780')
Residence.find_or_create_by(nombre:'La Maria', desc:'La Maria ocupa 2 hectáreas de extensión, a solo 15 kilómetros de la ciudad Capital de Mendoza, entre casas de residencia veraniega y bodegas.', provincia:'Mendoza', partido:'Mendoza', ciudad:'Mendoza Ciudad', img_link:'http://www.mendoza.travel/wp-content/mendoza_uploads/adalgisa-mendoza-002.jpg', direccion:'Pueyrredón, Chacras de Coria')
