class InviteMailer < ApplicationMailer
    
    def invite_send(email)
        mail to: email, subject: "Household Invite", from: 'info@mysite.com'
    end
end
