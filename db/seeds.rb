# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create!  email: 'admin@elrincon.ch',
                      name: 'Admin',
                      username: 'admin',
                      password: 'password',
                      password_confirmation: 'password',
                      role: 'admin'

# Authors
olo_curuba = User.create!  email: 'olorcuruba@elrincon.ch',
                        name: 'El Olor de la Curuba',
                        username: 'authorcuruba',
                        password: 'password',
                        password_confirmation: 'password',
                        role: 'author'
author2 = User.create!  email: 'gabrielle@elrincon.ch',
                        name: 'Gabrielle Author',
                        username: 'authorgabrielle',
                        password: 'password',
                        password_confirmation: 'password',
                        role: 'author'
author3 = User.create!  email: 'victoria@elrincon.ch',
                        name: 'Victoria Author',
                        username: 'authorvictoria',
                        password: 'password',
                        password_confirmation: 'password',
                        role: 'author'

# Visitors
visitor1 = User.create!  email: 'john@elrincon.ch',
                          name: 'John Visitor',
                          username: 'visitorjohn',
                          password: 'password',
                          password_confirmation: 'password'
visitor2 = User.create!  email: 'julia@elrincon.ch',
                          name: 'Julia Visitor',
                          username: 'visitorjulia',
                          password: 'password',
                          password_confirmation: 'password'
visitor3 = User.create!  email: 'matt@elrincon.ch',
                          name: 'Matt Visitor',
                          username: 'visitormatt',
                          password: 'password',
                          password_confirmation: 'password'


# Posts
post1 = Post.create!(title: 'Episodio 1: El Estado en Colombia',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              spotify_code: '7cgCONJBauNLweDPv5cxtK',
              image_url: 'https://panampost.com/wp-content/uploads/web_dsc00653_big_ce.jpg',
              user: olo_curuba)

post2 = Post.create!(title: 'Un poco más sobre el Estado en Colombia',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Mapa_de_territorios_cedidos_por_Perú_a_Colombia.jpg',
              user: author2)

post3 =Post.create!(title: 'Episodio 2: La Violencia Política Bipartidista',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/CNLSU6DDCZFKXBEQ2LZWEMHO7A.jpg',
              spotify_code: '6jnMupkKRQVuCKdbH9zY4a',
              user: olo_curuba)

post4 =Post.create!(title: 'Recomendaciones sobre la Violencia Bipartidista',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://www.eltiempo.com/uploads/2018/03/09/5aa3064dd20e8.jpeg',
              user: author3)

post5 =Post.create!(title: 'Episodio 3: El Frente Nacional y el surgimiento de las guerrillas',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              spotify_code: '4tezHZ9qWJAMmWInyaco73',
              image_url: 'https://panoramacultural.com.co/images/FrenteNacional-FotoElEspectador.jpg',
              user: olo_curuba)

post6 =Post.create!(title: 'Episodio especial: memorias del 16 de mayo de 1984 en la UN ',
             body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
             spotify_code: '06x2DoPgO4dSVaTtbASzcp',
             image_url: 'https://www.elrebelde.info/images/2018/05/16/16%20de%20mayo%20de%201984%20%20calle%2026%20antes%20de...%20(asesinan%20estudiantes%20y%20la%20lucha%20continua.%20%20Jesus%20Leon.%20Tendran%20que%20matarnos%20a%20todos%20para%20callar%20nuestra%20voz).jpg',
             user: olo_curuba)


# Tags
post1.tag_list =  'historia,colombia,podcast'
post2.tag_list =  'arte,literatura,historia'
post3.tag_list =  'colombia,podcast,siglo xx'
post4.tag_list =  'arte,cine,historia'
post5.tag_list =  'podcast,colombia,política'
post6.tag_list =  'violencia,podcast,siglo xx'
