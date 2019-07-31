require 'note'

describe Note do
  it 'formats the note' do
    formatter = double :formatter
    note = Note.new("week 2","dependency injection", formatter)
    format = double 'format'
    allow(formatter).to receive(:format).and_return("Title: week 2 \n dependency injection")
    expect(note.display).to eq formatter.format(note)
  end
end