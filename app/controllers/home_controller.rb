class HomeController < ApplicationController
    def home
        if current_user.profile.present?
            redirect_posts
        else
            redirect_profile
        end
    end

    private

    def redirect_posts
        redirect_to posts_path
    end

    def redirect_profile
        redirect_to new_profile_path
    end
end