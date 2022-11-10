

class Role < ActiveRecord::Base
    has_many :auditions

    def actors 
        self.auditions.map {|t| t.actor}
    end

    def locations 
        self.auditions.map {|t| t.location}
    end

    def lead
        if self.auditions.where(hired: true)[0] == nil
            "No actor has been hired for this role."
        else
            self.auditions.where(hired: true)[0]
        end
    end

    def understudy
        if self.auditions.where(hired: true)[1] == nil
            "No actor has been hired for this role."
        else
            self.auditions.where(hired: true)[1]
        end
    end
end