# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{
#                            name: 'Star Wars'
#                          }, {
#                            name: 'Lord of the Rings'
#                          }])
#   Character.create(name: 'Luke', movie: movies.first)


ken = Author.create(name: 'Ken Calibra')
mud = Author.create(name: 'Muhamad')
lom = Author.create(name: 'Loan')
la = Author.create(name: 'Lorem')

Book.create([{
              title: 'Don Quixote',
              publisher: 'Longhorn',
              publish_date: '2010',
              page_count: 100,
              author_id: ken.id
            }, {
              title: 'The river between',
              publisher: 'Longhorn',
              publish_date: '2011',
              page_count: 322,
              author_id: mud.id
            }, {
              title: 'Kilo Kinsman',
              publisher: 'Longhorn',
              publish_date: '2008',
              page_count: 330,
              author_id: lom.id
            }, {
              title: 'Lorem Pasu',
              publisher: 'Koot',
              publish_date: '2022',
              page_count: 200,
              author_id: la.id
            }])
