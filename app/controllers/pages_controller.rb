class PagesController < ApplicationController
  def home
    @rooms = Room.where(is_active: true).order("created_at DESC").limit(5)
  end
end
