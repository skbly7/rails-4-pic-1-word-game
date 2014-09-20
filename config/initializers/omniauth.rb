Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '782554735117054', '073eaeff1e313ab0972417e32b82259f',
           :scope => 'email', :display => 'popup'
  provider :github, '139628ba30a88dbf355e', '66ce4bb620b1901794ba5bd449025bf93a3eb6e2', scope: "user:email,user:follow"
end