Rails.application.routes.draw do

get('/', {:controller=>'achieve',:action=>'start'})

get('/class1', {:controller=>'achieve',:action=>'class1'})
get('/class2', {:controller=>'achieve',:action=>'class2'})
get('/class3', {:controller=>'achieve',:action=>'class3'})
get('/class4', {:controller=>'achieve',:action=>'class4'})
end
