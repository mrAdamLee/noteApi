require 'rails_helper'

RSpec.describe "Notes", type: :request do
  describe "POST /notes" do
    it "creates a new note" do
      post notes_path, params: { note: { text: "Hello" } }
      expect(response).to have_http_status(:created)
      expect(Note.last.text).to eq("Hello")
    end
  end

  # Add more tests for other actions here
end