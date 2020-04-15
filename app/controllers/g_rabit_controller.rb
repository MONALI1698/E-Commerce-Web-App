class GRabitController < ApplicationController
  def home
    respond_to do|format|
      format.html{render:home}
  end

  def user_profile
    respond_to do|format|
      format.html{render:user_profile}
  end
  end
end
end