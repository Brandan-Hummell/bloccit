module UsersHelper
    def user_has_comments?(user)
        if user.comments.nil?
            return false
        else
            return true
        end
    end

    def user_has_posts?(user)
        if user.posts.nil?
            return false
        else
            return true
        end
    end
end
