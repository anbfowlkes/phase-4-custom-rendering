class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    # render json: cheeses

    # render json: cheeses, only: [:id, :name, :price, :is_best_seller]
    
    render json: cheeses, except: [:created_at, :updated_at], methods: [:summary]
  end
  





  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    #----------------------------------#
    # render json: cheese
    #-------------------------#
    # render json: {
    #   id: cheese.id,
    #   name: cheese.name,
    #   price: cheese.price,
    #   is_best_seller: cheese.is_best_seller
    # }
    #----------------------------#
    # render json: cheese, except: [:created_at, :update_at], methods: [:summary]
    #-----------------------------#
    if cheese
      render json: cheese, except: [:created_at, :update_at], methods: [:summary]
    else
      render json: {error: 'Cheese not found'}, status: 404
    end   
  end

end
