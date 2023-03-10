class Animal < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3};
    validates :species, presence: true, length: { minimum: 3};
    validates :age, presence: true, length: { minimum: 1};
    validates :image_url, presence: true ;
    validates :description, presence: true, length: { minimum: 10};
    validates :adoptable, presence: true ;
    
end
