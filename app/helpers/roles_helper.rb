module RolesHelper

    def is_admin?(user)
        unless is_current_user?(user)
            return false
        end

        role = Role.find_by(user_id: user.id)
        unless role.role_name == "admin"
            return false
        end

        return true;
    end
    
end