module RolesHelper

    def is_admin?(user)
        unless is_current_user?(user)
            return false
        end

        role = Role.find_by(user_id: user.id)
        if role&.admin
            return true
        else
            return false
        end
    end
    
end