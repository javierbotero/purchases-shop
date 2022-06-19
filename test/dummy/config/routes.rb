Rails.application.routes.draw do
  mount Purchase::Engine => "/purchase"
end
