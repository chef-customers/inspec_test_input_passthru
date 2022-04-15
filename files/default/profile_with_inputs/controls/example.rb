control 'test value of input caption' do
  impact 0.7
  title 'test value of input caption'
  desc 'test value of input caption'

  describe input('caption') do
    it { should cmp 'caption one' }
  end
end
