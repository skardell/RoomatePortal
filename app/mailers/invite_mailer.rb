class InviteMailer < ApplicationMailer
    
    def invite_send(email)
        mail to: email, subject: "Household Invite", from: 'srkardell@gmail.com'
    end
end
