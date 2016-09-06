class PrescriptionsController < ApplicationController

  def index
  	@students = Student.all.where(statut: nil , user_id: current_user.id )
  end
end
