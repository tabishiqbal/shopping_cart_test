module CurrentIssuance
  extend ActiveSupport::Concern

  private

    def set_issuance
      @issuance = Issuance.find(session[:issuance_id])
    rescue ActiveRecord::RecordNotFound
      @issuance = Issuance.create
      session[:issuance_id] = @issuance.id
    end
end