# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Socrates', email: 'knowthyself@apollo.com' )
User.create(name: 'Nietzsche', email: 'zarathustra@gmail.com' )
User.create(name: 'Kurt Godel', email: '0101@101.com' )
User.create(name: 'Wittgenstein', email: 'wg@gmail.com' )
User.create(name: 'Schrodinger', email: 'catalive@catdead.com' )
User.create(name: 'Freud', email: 'freud@yourmom.com')
User.create(name: 'Sartre', email: 'nothing@ness.com')
User.create(name: 'Bukowski' , email: 'poordrunk@aol.com')
User.create(name: 'Vonnegut', email: 'breakfastof@champions.com')


Contact.create(address: '2 Chainz blvd', email: '2@chainz.com', name: '2Chainz', phone_number: '222222222', user_id: 1)
Contact.create(address: '1 boss blvd', email: 'theboss@ross.rick', name: 'Rick Ross', phone_number: '1800ross', user_id: 1)
Contact.create(address: 'Pusha T road', email: 'pusha@tee.com', name: 'Pusha T', phone_number: '1800PUSHA', user_id: 2)
Contact.create(address: 'Kanye Road west', email: 'kw@college_dropout.com', name: 'Kanye West', phone_number: '415kanye', user_id: 3)

Favorite.create(user_id: 1, contact_id: 1)
Favorite.create(user_id: 2, contact_id: 3)
Favorite.create(user_id: 3, contact_id: 4)

Authentication.create(user_id: 1, password: '123')
Authentication.create(user_id: 2, password: '123')
Authentication.create(user_id: 3, password: '123')
Authentication.create(user_id: 4, password: '123')
Authentication.create(user_id: 5, password: '123')