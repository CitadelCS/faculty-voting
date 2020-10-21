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
    
    def edit
      @proposal = Proposal.find(params[:id])
    end
    
    def update
      @proposal = Proposal.find(params[:id])
 
      if @proposal.update(proposal_params)
        redirect_to @proposal
      else
        render 'edit'
      end
    end
 
    private
      def proposal_params
        params.require(:proposal).permit(:title, :text)
      end
end
