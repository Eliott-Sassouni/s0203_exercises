#Eliott Sassouni

##Conceptual Questions

1. A route receives params from the server after an http request, and these routes dictate a) which controller is used, and b) what happens inside the controller. The controller then performs the action given by the chosen route, and this action chooses a .erb file, the view, and the controller sends this view back to the server.

2. A model is an object that stores its data in database tables. The database contains many tables, which comprise of columns and records. Models store their information in these tables. Schema is a .rb file that we should never touch. It is changed when we migrate a database.

3. The given diagram is the one that makes sense to me. The only change I would make is to draw an arrow from database back to controller (instead of through models).

##Code Questions

1. We are declaring sharks as the REST resource, which basically means we are saying that sharks are what we will perform our CRUD operations on.

2. rake routes shows you all the routes that are available and all the HTTP verbs and CRUD actions that can be performed through those routes. This is important because it allows you to see the branches of your application.

3. # config/routes.rb
	
	Rails.application.routes.draw do

  		get 'heroes/index'

  		resources :heroes

  		root 'heroes#index'

	end

	# heroes_controller.rb

	class HeroesController < ApplicationController
  		def index
			@heroes = Hero.all
		end

		def show
			@hero = Hero.find(params[:id])
		end

		def new
			@hero = Hero.new
		end

		def edit
			@hero = Hero.find(params[:id])
		end

		def create
			@hero = Hero.new(booking_params)

			
			if @hero.save
				redirect_to @hero
			else
				render 'new'
			end
		end

		def update
	  		@hero = Hero.find(params[:id])
	 
	  		if @hero.update(hero_params)
	    		redirect_to @hero
	  		else
	    		render 'edit'
	  		end
		end

		def destroy
			@hero = Hero.find(params[:id])
			@hero.destroy

			redirect_to heroes_path
		end

		private
			def hero_params
				params.require(:hero).permit(:title, :text)
			end
	end

##Short Answer

1. We use partials so that we can keep our code DRY. Because code tends to repeat itself, especially in the edit.html.erb and the new.html.erb files, we use partials to write the code only once and render it in other files.

2. We use ERB files so that we can separate our Ruby code and our HTML. ERB includes HTML, so when we want to render a page that we will send it to a server, we use ERB files. This means we do most of our Ruby code in a .rb file (usually a controller) and we do minimal Ruby in the .erb. However, sometimes, Ruby is necessary when rendering a page, and .erb files allow us to combine the two languages.

3. A view is essentially the .erb file that is rendered when a controller decides what action is supposed to happen. This view is a .erb file so it contains Ruby, but mostly HTML, and it provides the view that is sent to the server that is ultimately seen by the user.