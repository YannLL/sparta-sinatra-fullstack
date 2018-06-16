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

    "Index page"

  end

  # NEW
  get "/new" do

    "new animal"

  end

  # SHOW
  get "/:id" do

    "show animal"

  end

  # CREATE
  post "/" do

    "CREATE POST :)"

  end

  # EDIT
  post "/:id/edit" do

  "Post page :)"

  end

  # UPDATE
  put "/:id" do

    "Update :)"

  end

  # DELETE
  delete "/:id" do

  "delete"

  end

end
