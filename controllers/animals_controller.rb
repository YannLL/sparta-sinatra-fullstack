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

    # "Index page"

    erb :'animals/index'

  end

  # NEW
  get "/new" do
    @animal = Animal.all
    "new animal"

  end

  # SHOW
  get "/:id" do
    params[:id].to_i
    @animal = Animal.find id
    # "show animal #{ :id }"

    "#{:id}"

  end

  # CREATE
  post "/" do

    "CREATE POST :)"

  end

  # EDIT
  post "/:id/edit" do
  params[:id].to_i

  "Post page #{ :id }:)"

  end

  # UPDATE
  put "/:id" do
    params[:id].to_i
    "Update #{:id}:)"

  end

  # DELETE
  delete "/:id" do
  params[:id].to_i
  "delete #{:id}"

  end

end
