class AnimalsController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end


  # I Never See Cars Even Under Daylight

  # INDEX
  get "/" do

    @animals = Animal.all

    erb :'animals/index'

  end

  # NEW
  get "/new" do
    "new"

  end

  # SHOW
  get "/:id" do
    id = params[:id].to_i
    "show animal #{ :id }"

  end

  # CREATE
  post "/" do

    "CREATE POST :)"

  end

  # EDIT
  post "/:id/edit" do
    id = params[:id].to_i
    "Post page #{ :id }:)"

  end

  # UPDATE
  put "/:id" do
    id = params[:id].to_i
    "Update #{:id}:)"

  end

  # DELETE
  delete "/:id" do
    id = params[:id].to_i
    "delete #{:id}"

  end

end
