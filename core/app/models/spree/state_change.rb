module Spree
  class StateChange < Spree::Base
    belongs_to :user, class_name: Spree.user_class.to_s
    belongs_to :stateful, polymorphic: true

    validates :stateful_id, :stateful_type, presence: true

    def <=>(other)
      created_at <=> other.created_at
    end
  end
end
