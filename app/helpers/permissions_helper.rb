module PermissionsHelper

    def can_create?(user)
        unless is_current_user?(user)
          return false
        end
    
        permission = Permission.find_by(user_id: user.id)
        unless permission&.create
          return false
        end
    
        return true
    end

    def can_edit?(user)
        unless is_current_user?(user)
            return false
        end
    
        permission = Permission.find_by(user_id: user.id)
        unless permission&.edit
            return false
        end
    
        return true
    end

    def can_delete?(user)
        unless is_current_user?(user)
            return false
        end
    
        permission = Permission.find_by(user_id: user.id)
        unless permission&.remove
            return false
        end
    
        return true
    end

end