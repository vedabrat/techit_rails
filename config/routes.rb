Rails.application.routes.draw do

  get 'charges/new'

  get 'charges/create'

  get 'njmjofficials/pres'
  get 'njmjofficials/secretary'
  get 'njmjofficials/treasurer'
  get 'njmjofficials/vp'
  get 'njmjofficials/parlimentarian'
  get 'njmjofficials/programming'
  get 'njmjofficials/recruit_retain_director'
  get 'njmjofficials/marketing_pr'
  get 'njmjofficials/community_serv_dir'
  get 'njmjofficials/historian'

  get 'welcome/about'
  get 'welcome/clicker'
  get 'welcome/grow'
  get 'welcome/ideas'
  get 'welcome/index'
  get 'welcome/invest'
  get 'welcome/interviews'
  get 'welcome/musicClasses'
  get 'welcome/networking'
  get 'welcome/njmj'
  get 'welcome/njmj_letsdothis'
  get 'welcome/loan'
  get 'welcome/pricing'
  get 'welcome/mailinglistdnp'
  get 'welcome/sisterSites'
  get 'welcome/stockwatch'
  get 'welcome/ticket_handeling'
  get 'welcome/topgolf'
  get 'welcome/topgolf_letsdothis'
  get 'welcome/value'
  get 'welcome/wine_budgeting'
  get 'welcome/WIPuns'
  get 'welcome/your_6_week_dev'

  get 'njmj/budderproductionnotes1'
  get 'njmj/bus_plan'
  get 'njmj/budderorder'
  get 'njmj/kellykustom'
  get 'njmj/notes'
  get 'njmj/media_drop'
  get 'njmj/meetingnotes'
  get 'njmj/membership'
  get 'njmj/meeting1'
  get 'njmj/secretary'
  get 'njmj/survey'


  get 'charges/new'
  get 'charges/budder_ord'
  get 'charges/charges'
  get 'charges/create'
  get 'charges/coffee'
  get 'charges/donate'
  get 'charges/food'
  get 'charges/gas'
  get 'charges/memberMonRec'
  get 'charges/memberWeekRec'
  get 'charges/memberYearRec'
  get 'charges/room'
  get 'charges/repair'

  get 'dwp/index'
  get 'dwp/set1'
  get 'dwp/cocaine1'
  get 'dwp/cocaine2'
  get 'dwp/cocaine3'
  get 'dwp/heroin1'
  get 'dwp/heroin2'
  get 'dwp/ketamine1'
  get 'dwp/lsd1'
  get 'dwp/lsd2'
  get 'dwp/mdma1'
  get 'dwp/mdma2'
  get 'dwp/meth1'
  get 'dwp/meth2'
  get 'dwp/misc1'
  get 'dwp/set1'
  get 'dwp/shrooms1'
  get 'dwp/shrooms2'
  get 'dwp/weed'
  get 'dwp/weed1'
  get 'dwp/weed2'
  get 'dwp/weed3'
  get 'dwp/weed4'
  resources :charges
  root 'welcome#index'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
