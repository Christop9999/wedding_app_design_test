module API
  module V1
  class UsersController < API::V1::BaseController
  
 
  
private
     def user_params
      params.require(:wedding).permit(:name, :bride, :groom, :date)
    end

      def query_params
        # this assumes that an album belongs to an artist and has an :artist_id
        # allowing us to filter by this
        params.permit(:name)
      end

     end
  end
end
  
