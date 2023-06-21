class Admin::DashboardController < ApplicationController
  def index
    @usersVip=Datum.vip
    @usersReg=Datum.normal
  end
end
