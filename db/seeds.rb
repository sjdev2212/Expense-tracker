# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  categories = Category.create([{ name: 'Food' }, { name: 'Transportation' }, { name: 'Entertainment' }, 
    { name: 'Clothing' }, { name: 'Housing' }, {name: 'Car'}, {name: 'Travel'}, {name: 'Creditcards'},
    {name: 'Cellphone'},{name: 'Health'}, {name: 'Education'},{ name: 'Other' },])
