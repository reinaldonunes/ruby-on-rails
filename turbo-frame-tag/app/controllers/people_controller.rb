class PeopleController < ApplicationController
  before_action :set_person, only: %i[ show edit update destroy ]

  # GET /people or /people.json
  def index
    @people = Person.all
  end

  # GET /people/1 or /people/1.json
  def show
  end

  def awards
    respond_to do |format|
      format.html { render partial: 'people/awards' }
    end
  end

  def credits
    respond_to do |format|
      format.html { render partial: 'people/credits' }
    end
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:person).permit(:name)
    end
end
