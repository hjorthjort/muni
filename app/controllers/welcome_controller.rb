class WelcomeController < ApplicationController
  def index
    @municipalities = Municipality.all
  end
end
