Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/"                => "mappy_asyncs#mappyasync"
  
  get "/process_bing"    => "mappy_asyncs#process_bing"
  get "/process_here"    => "mappy_asyncs#process_here"
  get "/process_mapbox"  => "mappy_asyncs#process_mapbox"
  get "/process_targomo" => "mappy_asyncs#process_targomo"

end
