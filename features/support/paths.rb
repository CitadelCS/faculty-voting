# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
     case page_name
        when /^the home\s?page$/
              '/'  
             when /^the Sign In\s?page$/ 
                new_user_session_path                   #PATH TO THE SIGN IN PAGE
                 when /^the roles In\s?page$/
                    roles_path                              #PATH TO THE ROLES PAGE
                        when /^the new roles In\s?page$/
                            new_role_path                         #PATH TO THE NEW ROLE PAGE
                                when /^the new proposal\s?page$/
                                   new_proposal_path                   #PATH TO THE NEW PROPOSAL PAGE
                                        when /^the home index\s?page$/
                                           home_index_path                  #PATH TO THE HOME INDEX PAGE
                                                when /^the signup\s?page$/
                                                   new_user_registration_path    #PATH TO THE SIGN UP PAGE
                                                         when /^the active\s?page$/
                                                               proposals_path        #PATH TO THE PROPOSAL PAGE 
                                                                when /^the archived\s?page$/
                                                                    proposals_archive_path   #PATH T
    # when /^the Create New User\s?page$/
   #     new_prog_users_path
   # when /^the Create New Proposals page$/
        
   #  when/^the Welcome $/
    #    welcome_index_path
        
    when /^the edit proposal\s?page$/
       home_index_path
    # when/^Sign up\
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
