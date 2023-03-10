class AnimalsController < ApplicationController

    # post
    def create 
        animal = Animal.new(animal_params) #create new with params
    

    if Animal.save
        render json: trail, status: :created

    else

        render json: { errors: trail.errors }, status: :unprocessable_entity
        
    end
end


    private

    def animal_params
        params.require(:animal).permit(name:, :species, :age, :image_url, :description, :adoptable)
    end
end