class ProposalsController < ApplicationController
    def new
        
    end
    
    def create
      @proposal = Proposal.new(proposal_params)
 
      @proposal.save
      redirect_to @proposal
    end
 
    private
      def proposal_params
        params.require(:proposal).permit(:title, :text)
      end
end
