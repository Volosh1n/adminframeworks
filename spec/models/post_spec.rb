RSpec.describe Post, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:body) }
  it { is_expected.to validate_uniqueness_of(:title) }

  it 'validates max length of title' do
    expect(described_class.new).to validate_length_of(:title)
      .is_at_least(Post::MIN_LENGTH)
      .is_at_most(Post::TITLE_MAX_LENGTH)
  end

  it 'validates max length of body' do
    expect(described_class.new).to validate_length_of(:body)
      .is_at_least(Post::MIN_LENGTH)
      .is_at_most(Post::BODY_MAX_LENGTH)
  end
end
