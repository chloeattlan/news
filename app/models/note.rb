
# == Schema Information
#
# Table name: notes
#
#  id          :bigint           not null, primary key
#  article     :string
#  event       :text
#  impact      :text
#  source      :string
#  stocks_text :string
#  summary     :text
#  timeframe   :text
#  today       :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Note < ApplicationRecord
end
