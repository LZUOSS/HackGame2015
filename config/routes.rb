Rails.application.routes.draw do
    get 'ChkPassword' => 'hackgame#CheckPassword'
    get 'GetPassword' => 'hackgame#GetPassword'
end
