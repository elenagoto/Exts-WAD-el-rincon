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
visitor4 = User.create!  email: 'martin@elrincon.ch',
                          name: 'martin Visitor',
                          username: 'visitormartin',
                          password: 'password',
                          password_confirmation: 'password'
visitor5 = User.create!  email: 'camila@elrincon.ch',
                          name: 'camila Visitor',
                          username: 'visitorcamila',
                          password: 'password',
                          password_confirmation: 'password'
visitor6 = User.create!  email: 'daniel@elrincon.ch',
                          name: 'daniel Visitor',
                          username: 'visitordaniel',
                          password: 'password',
                          password_confirmation: 'password'
visitor7 = User.create!  email: 'sabrina@elrincon.ch',
                          name: 'sabrina Visitor',
                          username: 'visitorsabrina',
                          password: 'password',
                          password_confirmation: 'password'
visitor8 = User.create!  email: 'angela@elrincon.ch',
                          name: 'angela Visitor',
                          username: 'visitorangela',
                          password: 'password',
                          password_confirmation: 'password'
visitor9 = User.create!  email: 'jules@elrincon.ch',
                          name: 'jules Visitor',
                          username: 'visitorjules',
                          password: 'password',
                          password_confirmation: 'password'
visitor10 = User.create!  email: 'alex@elrincon.ch',
                          name: 'alex Visitor',
                          username: 'visitoralex',
                          password: 'password',
                          password_confirmation: 'password'
visitor2 = User.create!  email: 'maria@elrincon.ch',
                          name: 'maria Visitor',
                          username: 'visitormaria',
                          password: 'password',
                          password_confirmation: 'password'
visitor3 = User.create!  email: 'martha@elrincon.ch',
                          name: 'martha Visitor',
                          username: 'visitormartha',
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

post3 = Post.create!(title: 'Episodio 2: La Violencia Política Bipartidista',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/CNLSU6DDCZFKXBEQ2LZWEMHO7A.jpg',
              spotify_code: '6jnMupkKRQVuCKdbH9zY4a',
              user: olo_curuba)

post4 = Post.create!(title: 'Recomendaciones sobre la Violencia Bipartidista',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://www.eltiempo.com/uploads/2018/03/09/5aa3064dd20e8.jpeg',
              user: author3)

post5 = Post.create!(title: 'Episodio 3: El Frente Nacional y el surgimiento de las guerrillas',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              spotify_code: '4tezHZ9qWJAMmWInyaco73',
              image_url: 'https://panoramacultural.com.co/images/FrenteNacional-FotoElEspectador.jpg',
              user: olo_curuba)

post6 = Post.create!(title: 'Episodio especial: memorias del 16 de mayo de 1984 en la UN ',
             body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
             spotify_code: '06x2DoPgO4dSVaTtbASzcp',
             image_url: 'https://www.elrebelde.info/images/2018/05/16/16%20de%20mayo%20de%201984%20%20calle%2026%20antes%20de...%20(asesinan%20estudiantes%20y%20la%20lucha%20continua.%20%20Jesus%20Leon.%20Tendran%20que%20matarnos%20a%20todos%20para%20callar%20nuestra%20voz).jpg',
             user: olo_curuba)

post7 = Post.create!(title: 'Episodio 5: El Estado en Colombia',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              spotify_code: '7cgCONJBauNLweDPv5cxtK',
              image_url: 'https://panampost.com/wp-content/uploads/web_dsc00653_big_ce.jpg',
              user: olo_curuba)

post8 = Post.create!(title: 'Un poco más sobre el Estado en Colombia',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Mapa_de_territorios_cedidos_por_Perú_a_Colombia.jpg',
              user: author2)

post9 = Post.create!(title: 'Episodio 6: La Violencia Política Bipartidista',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/CNLSU6DDCZFKXBEQ2LZWEMHO7A.jpg',
              spotify_code: '6jnMupkKRQVuCKdbH9zY4a',
              user: olo_curuba)

post10 = Post.create!(title: 'Recomendaciones sobre la Violencia Bipartidista',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://www.eltiempo.com/uploads/2018/03/09/5aa3064dd20e8.jpeg',
              user: author3)

post11 = Post.create!(title: 'Episodio 7: El Frente Nacional y el surgimiento de las guerrillas',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              spotify_code: '4tezHZ9qWJAMmWInyaco73',
              image_url: 'https://panoramacultural.com.co/images/FrenteNacional-FotoElEspectador.jpg',
              user: olo_curuba)

post12 = Post.create!(title: 'Episodio 8: memorias del 16 de mayo de 1984 en la UN ',
             body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
             spotify_code: '06x2DoPgO4dSVaTtbASzcp',
             image_url: 'https://www.elrebelde.info/images/2018/05/16/16%20de%20mayo%20de%201984%20%20calle%2026%20antes%20de...%20(asesinan%20estudiantes%20y%20la%20lucha%20continua.%20%20Jesus%20Leon.%20Tendran%20que%20matarnos%20a%20todos%20para%20callar%20nuestra%20voz).jpg',
             user: olo_curuba)

post13 = Post.create!(title: 'Episodio 9: El Estado en Colombia',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              spotify_code: '7cgCONJBauNLweDPv5cxtK',
              image_url: 'https://panampost.com/wp-content/uploads/web_dsc00653_big_ce.jpg',
              user: olo_curuba)

post14 = Post.create!(title: 'Un poco más sobre el Estado en Colombia',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Mapa_de_territorios_cedidos_por_Perú_a_Colombia.jpg',
              user: author2)

post15 = Post.create!(title: 'Episodio 10: La Violencia Política Bipartidista',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/CNLSU6DDCZFKXBEQ2LZWEMHO7A.jpg',
              spotify_code: '6jnMupkKRQVuCKdbH9zY4a',
              user: olo_curuba)

post16 = Post.create!(title: 'Recomendaciones sobre la Violencia Bipartidista',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://www.eltiempo.com/uploads/2018/03/09/5aa3064dd20e8.jpeg',
              user: author3)

post17 = Post.create!(title: 'Episodio 11: El Frente Nacional y el surgimiento de las guerrillas',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              spotify_code: '4tezHZ9qWJAMmWInyaco73',
              image_url: 'https://panoramacultural.com.co/images/FrenteNacional-FotoElEspectador.jpg',
              user: olo_curuba)

post18 = Post.create!(title: 'Episodio 12: memorias del 16 de mayo de 1984 en la UN ',
             body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
             spotify_code: '06x2DoPgO4dSVaTtbASzcp',
             image_url: 'https://www.elrebelde.info/images/2018/05/16/16%20de%20mayo%20de%201984%20%20calle%2026%20antes%20de...%20(asesinan%20estudiantes%20y%20la%20lucha%20continua.%20%20Jesus%20Leon.%20Tendran%20que%20matarnos%20a%20todos%20para%20callar%20nuestra%20voz).jpg',
             user: olo_curuba)

post19 = Post.create!(title: 'Episodio 13: El Estado en Colombia',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              spotify_code: '7cgCONJBauNLweDPv5cxtK',
              image_url: 'https://panampost.com/wp-content/uploads/web_dsc00653_big_ce.jpg',
              user: olo_curuba)

post20 = Post.create!(title: 'Un poco más sobre el Estado en Colombia',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Mapa_de_territorios_cedidos_por_Perú_a_Colombia.jpg',
              user: author2)

post21 = Post.create!(title: 'Episodio 14: La Violencia Política Bipartidista',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/CNLSU6DDCZFKXBEQ2LZWEMHO7A.jpg',
              spotify_code: '6jnMupkKRQVuCKdbH9zY4a',
              user: olo_curuba)

post22 = Post.create!(title: 'Recomendaciones sobre la Violencia Bipartidista',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://www.eltiempo.com/uploads/2018/03/09/5aa3064dd20e8.jpeg',
              user: author3)

post23 = Post.create!(title: 'Episodio 15: El Frente Nacional y el surgimiento de las guerrillas',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              spotify_code: '4tezHZ9qWJAMmWInyaco73',
              image_url: 'https://panoramacultural.com.co/images/FrenteNacional-FotoElEspectador.jpg',
              user: olo_curuba)

post24 = Post.create!(title: 'Episodio 16: memorias del 16 de mayo de 1984 en la UN ',
             body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
             spotify_code: '06x2DoPgO4dSVaTtbASzcp',
             image_url: 'https://www.elrebelde.info/images/2018/05/16/16%20de%20mayo%20de%201984%20%20calle%2026%20antes%20de...%20(asesinan%20estudiantes%20y%20la%20lucha%20continua.%20%20Jesus%20Leon.%20Tendran%20que%20matarnos%20a%20todos%20para%20callar%20nuestra%20voz).jpg',
             user: olo_curuba)

post25 = Post.create!(title: 'Episodio 17: El Estado en Colombia',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              spotify_code: '7cgCONJBauNLweDPv5cxtK',
              image_url: 'https://panampost.com/wp-content/uploads/web_dsc00653_big_ce.jpg',
              user: olo_curuba)

post26 = Post.create!(title: 'Un poco más sobre el Estado en Colombia',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Mapa_de_territorios_cedidos_por_Perú_a_Colombia.jpg',
              user: author2)

post27 = Post.create!(title: 'Episodio 18: La Violencia Política Bipartidista',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/CNLSU6DDCZFKXBEQ2LZWEMHO7A.jpg',
              spotify_code: '6jnMupkKRQVuCKdbH9zY4a',
              user: olo_curuba)

post28 = Post.create!(title: 'Recomendaciones sobre la Violencia Bipartidista',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              image_url: 'https://www.eltiempo.com/uploads/2018/03/09/5aa3064dd20e8.jpeg',
              user: author3)

post29 = Post.create!(title: 'Episodio 19: El Frente Nacional y el surgimiento de las guerrillas',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              spotify_code: '4tezHZ9qWJAMmWInyaco73',
              image_url: 'https://panoramacultural.com.co/images/FrenteNacional-FotoElEspectador.jpg',
              user: olo_curuba)

post30 = Post.create!(title: 'Episodio 20: memorias del 16 de mayo de 1984 en la UN ',
             body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
             spotify_code: '06x2DoPgO4dSVaTtbASzcp',
             image_url: 'https://upload.wikimedia.org/wikipedia/commons/7/73/Plaza_Che%2C_Bogotá.jpg',
             user: olo_curuba)


# Tags
post1.tag_list =  'historia,colombia,podcast'
post2.tag_list =  'arte,literatura,historia'
post3.tag_list =  'colombia,podcast,siglo xx'
post4.tag_list =  'arte,cine,historia'
post5.tag_list =  'podcast,colombia,política'
post6.tag_list =  'violencia,podcast,siglo xx'
post1.tag_list =  'historia,colombia,podcast'
post2.tag_list =  'arte,literatura,historia'
post3.tag_list =  'colombia,podcast,siglo xx'
post4.tag_list =  'arte,cine,historia'
post5.tag_list =  'podcast,colombia,política'
post6.tag_list =  'violencia,podcast,siglo xx'
post7.tag_list =  'historia,colombia,podcast'
post8.tag_list =  'arte,literatura,historia'
post9.tag_list =  'colombia,podcast,siglo xx'
post10.tag_list =  'arte,cine,historia'
post11.tag_list =  'podcast,colombia,política'
post12.tag_list =  'violencia,podcast,siglo xx'
post13.tag_list =  'historia,colombia,podcast'
post14.tag_list =  'arte,literatura,historia'
post15.tag_list =  'colombia,podcast,siglo xx'
post16.tag_list =  'arte,cine,historia'
post17.tag_list =  'podcast,colombia,política'
post18.tag_list =  'violencia,podcast,siglo xx'
post19.tag_list =  'historia,colombia,podcast'
post20.tag_list =  'arte,literatura,historia'
post21.tag_list =  'colombia,podcast,siglo xx'
post22.tag_list =  'arte,cine,historia'
post23.tag_list =  'podcast,colombia,política'
post24.tag_list =  'violencia,podcast,siglo xx'
post25.tag_list =  'historia,colombia,podcast'
post26.tag_list =  'arte,literatura,historia'
post27.tag_list =  'colombia,podcast,siglo xx'
post28.tag_list =  'arte,cine,historia'
post29.tag_list =  'podcast,colombia,política'
post30.tag_list =  'violencia,podcast,siglo xx'
