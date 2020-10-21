class ProposalsController < ApplicationController
    def new
      @proposal = Proposal.new  
    end
    
    def index
      @proposals = Proposal.all
    end
    
    def show
      @proposal = Proposal.find(params[:id])
    end
    
    def create
      @proposal = Proposal.new(proposal_params)
        
        if @proposal.save
          redirect_to @proposal
        else
          render 'new'
        end
    end
 
    private
      def proposal_params
        params.require(:proposal).permit(:title, :text)
      end
end
