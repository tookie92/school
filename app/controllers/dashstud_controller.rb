class DashstudController < ApplicationController
  def index
  	@students = Student.all.where(statut: "Oui")
  end
end
