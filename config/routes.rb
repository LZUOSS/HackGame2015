Rails.application.routes.draw do
    get 'ChkPassword' => 'hackgame#CheckPassword'
    get 'GetPassowrd' => 'hackgame#GetPassowrd'
end
