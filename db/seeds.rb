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
author1 = User.create!  email: 'jean@elrincon.ch',
                        name: 'Jean Author',
                        username: 'authorjean',
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
post1 = Post.create!(title: 'Episodio 1: La historia secreta de la música',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              preview_text: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant.',
              image_url: 'https://www.laxmasmusica.com/uploads/ck-uploads/2020/05/30/MJ%20HSCM.JPG',
              user: author1)

post2 = Post.create!(title: 'Episodio 2: Guerras del siglo XX',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              preview_text: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant.',
              image_url: 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Mapa_de_territorios_cedidos_por_Perú_a_Colombia.jpg',
              user: author2)

post3 =Post.create!(title: 'Episodio 3: No sé qué más contar',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              preview_text: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant.',
              image_url: 'https://dianagarces.com/wordpress/images/stories/imagenes/Mafalda-Vacaciones.jpg',
              user: author2)

post4 =Post.create!(title: 'Episodio 4: Paramilitarismo y Guerrillas',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              preview_text: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant.',
              image_url: 'https://pacifista.tv/wp-content/uploads/2018/09/Paramilitares-1-1.jpg',
              user: author3)

post5 =Post.create!(title: 'Episodio 5: La protesta en Colombia',
              body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. \n
              Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
              preview_text: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant.',
              image_url: 'https://files.rcnradio.com/public/2019-12/000_1MP1AT.jpg',
              user: author3)

post6 =Post.create!(title: 'Episodio 6: El último episodio',
             body: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant. Tootsie roll candy lollipop fruitcake soufflé pudding gummies. Halvah marshmallow cake. Toffee powder oat cake chupa chups icing cake marshmallow apple pie danish. Fruitcake jelly topping. Tart croissant icing. Marzipan chocolate bar powder. Halvah brownie carrot cake bonbon wafer gingerbread jelly beans. Dessert marshmallow pastry pie chupa chups jujubes pudding. Apple pie sweet roll tiramisu sugar plum ice cream gummies gummi bears candy fruitcake. Tootsie roll gingerbread cheesecake liquorice sweet roll sweet. Caramels chupa chups jelly-o icing liquorice marzipan. Dessert biscuit donut jelly oat cake pastry oat cake pudding pudding. Soufflé carrot cake liquorice. Dessert lemon drops sesame snaps ice cream dragée topping tootsie roll.',
             preview_text: 'Cupcake ipsum dolor sit amet dragée. Tart cheesecake biscuit marzipan jelly beans carrot cake icing toffee. Candy candy jujubes. Sweet fruitcake jelly croissant.',
             image_url: 'https://img2.rtve.es/a/5627179?w=800&preview=1595004910305.jpg',
             user: author3)


# Tags
post1.tag_list =  'historia,colombia,podcast'
post2.tag_list =  'podcast,arte,literatura'
post3.tag_list =  'colombia,literatura,historia'
post4.tag_list =  'arte,podcast,musica'
post5.tag_list =  'podcast,colombia,arte'
post6.tag_list =  'violencia,podcast,siglo XX'