User.destroy_all
Deck.destroy_all
Card.destroy_all

user1 = User.create(email: 'rtetelbaum@mailbox.org', password: 'pass123', first_name: 'Roman', last_name: 'Tetelbaum')

deck1 = Deck.create(title: 'Rails Review', subject: 'Coding Interview', completed: false, count: 10, user: user1)

card1 = Card.create(question: 'What is the table that joins two models in a has-many to has-many relationship?', answer: 'Join table', deck: deck1)
card2 = Card.create(question: 'Explain how we can define Ruby regular expressions?', answer: 'A Ruby regular expression is a special sequence of characters that helps you match or find other strings.', deck: deck1)
card3 = Card.create(question: 'What is the controller action that matches the DELETE HTTP verb?', answer: '#destroy', deck: deck1)
card4 = Card.create(question: 'Explain how you can list all routes for an application?', answer: 'Write rake:routes in the terminal.', deck: deck1)
card5 = Card.create(question: 'What Rails generator is not recommended for use due to its creation of too many things?', answer: 'Scaffold', deck: deck1)
card6 = Card.create(question: 'Explain what is ORM (Object-Relationship-Model) in Rails?', answer: 'ORM indicates that your classes are mapped to the table in the database, and objects are directly mapped to the rows in the table.', deck: deck1)
card7 = Card.create(question: 'What type of params should we use in our contollers?', answer: 'Strong params', deck: deck1)
card8 = Card.create(question: 'Explain what are class libraries in Ruby?', answer: 'Class libraries in Ruby consist of a variety of domains, such as data types, thread programming, various domains, etc.', deck: deck1)
card9 = Card.create(question: 'Explain what is interpolation in Ruby?', answer: 'Ruby interpolation is the process of inserting a string into a literal.', deck: deck1)
card10 = Card.create(question: 'What is the role of Active Record in Ruby?', answer: 'Its main aim is to make sure that the relation among the object and the database is maintained and all the validations can be considered on time.', deck: deck1)
