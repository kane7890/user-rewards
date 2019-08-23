class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :store

  # def makebuy
  #   @user=self.user
  #   @store=self.store
  #   errormesg=""
  # if !@user.points  || @user.points < @store.point_value
  #     errormesg << " You do not have enough points to make the purchase at #{@store.name}"
  #   end
  #
  # if errormesg == ""
  #    points=@user.points - @store.point_value
  #    # happiness = @user.happiness + @attraction.happiness_rating
  #    # nausea= @user.nausea + @attraction.nausea_rating
  #
  #    @user.update(points: points)
  #
  #   # byebug
  #  else
  #    errormesg = "Sorry." + errormesg
  #  end

#   errormesg
 # end

end
