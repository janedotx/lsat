class LessonsCollectionController < ApplicationController
  def show
    @lessons_collection = @user.lessons_collection
  end
end
