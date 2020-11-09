class ProposalsController < ApplicationController
    def new
      @proposal = Proposal.new
    end
    
    def index
      @proposals = Proposal.all
    end
    
    def archive
      @proposals = Proposal.all
    end
    
    def show
      @proposal = Proposal.find(params[:id])
    end
    
    def upvote
      @proposal = Proposal.find(params[:id])
      @proposal.upvote_by current_user
      redirect_to proposal_path(@proposal)
    end
    
    def downvote
      @proposal = Proposal.find(params[:id])
      @proposal.downvote_by current_user
      redirect_to proposal_path(@proposal)
    end
    
    def create
      @user = current_user
      @proposal = @user.proposals.build(proposal_params)
        
        if @proposal.save
          redirect_to @proposal
        else
          render 'new'
        end
    end
    
    def edit
      @proposal = Proposal.find(params[:id])
      authorize! :update, @proposal
    end
    
    def update
      @proposal = Proposal.find(params[:id])
 
      if @proposal.update(proposal_params)
        redirect_to @proposal
      else
        render 'edit'
      end
    end
    
    def destroy
      @proposal = Proposal.find(params[:id])
      authoize! :update, @proposal
      @proposal.destroy
 
      redirect_to proposals_path
    end
 
    private
      def proposal_params
        params.require(:proposal).permit(:title, :text)
      end
end
