class VoximplantController < ApplicationController
  skip_before_action :verify_authenticity_token  
  def get_call_history
    puts "***********************"
    puts params
    puts "***********************"
    client = VoximplantApi::Client.new account_id: 3451596, api_key: '7bb35c0c-d8f2-4316-92f7-bc6ede80c205'
    # calls = client.get_account_info
    calls = client.get_call_history from_date: params["from_date"], to_date: params["to_date"] 
    puts "***********************"
    puts calls
    puts "***********************"
    render json: calls
  end
end
