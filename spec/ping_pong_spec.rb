require 'ping_pong'

describe 'ping_pong' do

  let(:middleware) { PingPong.new app }
  let(:app)        { double "app" }
  let(:env)        { { } }

  describe 'responds to __ping__' do
    before do
      env['PATH_INFO'] = '/__ping__'
    end

    it 'with a 200 status' do
      expect(middleware.call(env)[0]).to eq 200
    end
    it 'with plain_text content' do
      expect(middleware.call(env)[1]['Content-Type']).to eq 'text/plain'
    end
    it 'with body PONG!' do
      expect(middleware.call(env)[2][0]).to eq 'PONG!'
    end
  end

  describe 'passes through other urls' do
    let(:response) { double }

    before do
      app.stub(:call).and_return(response)
      env['PATH_INFO'] = '/'
    end

    it 'to the app' do
      app.should_receive(:call).with env
      middleware.call env
    end

    it 'returns the app response' do
      expect(middleware.call(env)).to equal response
    end
  end

end
