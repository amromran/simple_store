# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Product.delete_all
product = Product.create(title: 'Product Eins',
                         description:
                           %(<p>
      <em>Description of product Eins etc etc
    </p>),
                         price: 33.95)

product.image.attach(io: File.open(
  Rails.root.join('db', 'images', 'eins.jpg')),
                     filename: 'eins.jpg')

product.save!
# . . .
product = Product.create(title: 'Product Zwei',
                         description:
                           %(<p>
      <em>Description of product Zwei etc etc
    </p>),
                         price: 30.95)

product.image.attach(io: File.open(
  Rails.root.join('db', 'images', 'zwei.jpg')),
                     filename: 'zwei.jpg')

product.save!
# . . .

product = Product.create(title: 'Product Drei',
                         description:
                           %(<p>
      <em>Description of product Drei etc etc
    </p>),
                         price: 28.95)

product.image.attach(io: File.open(
  Rails.root.join('db', 'images', 'drei.jpg')),
                     filename: 'drei.jpg')

product.save!
