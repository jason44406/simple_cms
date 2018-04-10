require 'active_support/concern'

module Audit
  extend ActiveSupport::Concern

  #instance methods
  included do

    has_many :audit_logs, as: :auditable

    def write_audit_log(audit_log_text)
      puts "!" * 50
      puts audit_log_text
      puts "!" * 50
      self.valid? ? self.audit_logs.create!(text: audit_log_text) : {}
      # AuditLog.create!(text: "#{session[:username]} performed action #{action_name} on #{@subject.class} id ##{@subject.id}", auditable_id: @subject.id, auditable_type: @subject.class)
    end
  end

end
