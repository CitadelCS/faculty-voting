class ProposalsController < ApplicationController

    def getRoles
      if current_user.role.isMultiRole?
        @roles = Role.where("is_multi_role = 0")
      else
        @roles = Role.where("id = ?", current_user.role.id)
      end

      @roles
    end

    def getProposals
      if current_user.role.isMultiRole?
        @proposals = Proposal.all
      else
        @proposals = Proposal.where("role_id = ?", current_user.role.id)
      end

      @proposals
    end

    def new
      getRoles
      @proposal = Proposal.new
    end
    
    def index
      getProposals
    end
    
    def archive
      @proposals = Proposal.all
    end
    
    def show
      @proposal = Proposal.find(params[:id])
    end
    
   
    
    def create
      @user = current_user
      @proposal = @user.proposals.build(proposal_params)
      getRoles

      if @proposal.save
          redirect_to @proposal
        else
          render 'new'
        end
    end
    
    def edit
      @proposal = Proposal.find(params[:id])
      getRoles
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
        params.require(:proposal).permit(:title, :text, :group_type, :role_id)
      end
end
