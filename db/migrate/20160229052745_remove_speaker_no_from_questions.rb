class RemoveSpeakerNoFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :speaker_no, :integer
  end
end
