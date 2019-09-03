# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CatRentalRequest.destroy_all
Cat.destroy_all

c1 = Cat.create(birth_date: '2000/01/01', color: 'BLACK', name: 'Kitten', sex: 'M', description: 'Very cute kitten.')
c2 = Cat.create(birth_date: '2002/01/15', color: 'BROWN', name: 'David', sex: 'M', description: 'Very cute kitty.')
c3 = Cat.create(birth_date: '2015/03/01', color: 'ORANGE', name: 'Paloma', sex: 'F', description: 'Very happy kitten.')
c4 = Cat.create(birth_date: '2010/01/18', color: 'BLACK', name: 'Shelby', sex: 'F', description: 'Very LARGE kitten.')
c5 = Cat.create(birth_date: '2003/12/19', color: 'WHITE', name: 'Alexandre', sex: 'F', description: 'Very small kitten.')
c6 = Cat.create(birth_date: '2006/11/01', color: 'WHITE', name: 'Jeffers', sex: 'M', description: 'Very dumb kitten.')
c7 = Cat.create(birth_date: '2010/02/22', color: 'ORANGE', name: 'Mr. Kenny', sex: 'M', description: 'Very smart kitten.')

r1 =  CatRentalRequest.create(cat_id: c1.id, start_date: '2020/01/03', end_date: '2020/01/10')
r1 =  CatRentalRequest.create(cat_id: c1.id, start_date: '2020/01/11', end_date: '2020/01/20')
r1 =  CatRentalRequest.create(cat_id: c1.id, start_date: '2020/04/18', end_date: '2020/04/22')
r1 =  CatRentalRequest.create(cat_id: c1.id, start_date: '2020/06/14', end_date: '2020/06/16')
r1 =  CatRentalRequest.create(cat_id: c2.id, start_date: '2020/03/06', end_date: '2020/03/16')
r1 =  CatRentalRequest.create(cat_id: c2.id, start_date: '2020/05/10', end_date: '2020/05/16')
r1 =  CatRentalRequest.create(cat_id: c2.id, start_date: '2020/02/14', end_date: '2020/02/20')
r1 =  CatRentalRequest.create(cat_id: c2.id, start_date: '2019/12/16', end_date: '2019/12/25')

