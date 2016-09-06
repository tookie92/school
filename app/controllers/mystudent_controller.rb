class MystudentController < ApplicationController
  def index
  	@student = Student.all.where(classroom_id: @classroom.id)
  end
end
