class StaticPagesController < ApplicationController
  before_action :authenticate_admin!, only: [:index]

  def home; end

  def dashboard;end
end
