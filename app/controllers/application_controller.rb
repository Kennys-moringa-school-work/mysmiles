class ApplicationController < ActionController::API
    include ActionController::Cookies
    before_action :authorize
    

    private 

    def authorize
    return render json: { errors: ["Please login or sign up"] }, status: :unauthorized unless session.include? :user_id
    end

    # error handling
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
