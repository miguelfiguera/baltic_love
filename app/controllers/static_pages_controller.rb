class StaticPagesController < ApplicationController
  before_action :authenticate_admin!, only: [:index]

  def home
  end

  def features
  end

  def dashboard
  end
end
