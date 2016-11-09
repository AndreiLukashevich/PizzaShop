class AddProducts < ActiveRecord::Migration
  def change
    Product.create ({
    :title => 'Bacon with mushrooms',
    :description => 'Nice Bacon with mushrooms pizza',
    :price => 12,
    :size => 30,
    :is_spicy => false,
    :is_veg => false,
    :is_best_offer => true,
    :path_to_image => '/images/bacon.jpg'
    })

    Product.create ({
    :title => 'Four cheeses',
    :description => 'This is Four cheeses pizza',
    :price => 14,
    :size => 30,
    :is_spicy => false,
    :is_veg => false,
    :is_best_offer => true,
    :path_to_image => '/images/cheeses.jpg'
    })

    Product.create ({
    :title => 'Vegetarian',
    :description => 'Amazing Vegetarian pizza',
    :price => 10,
    :size => 30,
    :is_spicy => false,
    :is_veg => true,
    :is_best_offer => false,
    :path_to_image => '/images/veg.jpg'
    })
  end
end
