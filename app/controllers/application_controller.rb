class ApplicationController < ActionController::API
    def current_user
        User.first_or_create(username: 'test', email: 'test@test.com', password: 'password')
    end
end
