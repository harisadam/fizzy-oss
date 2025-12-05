Rails.application.routes.draw do
  mount Fizzy::Oss::Engine => "/fizzy-oss"
end
