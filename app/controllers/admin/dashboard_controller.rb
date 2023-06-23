class Admin::DashboardController < ApplicationController
  def index
    @usersVip=Datum.vip
    @usersReg=Datum.normal
    @userLocal=Datum.local
  end
end
