class Current < ActiveSupport::CurrentAttributes
    # you can use this attribute to assign things like the timezone, what account they are on, etc. keeps everything separated.
    attribute :user
end