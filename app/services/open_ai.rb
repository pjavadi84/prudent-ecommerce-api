class OpenAIService
    include Faraday
    
    base_uri 'https://api.openai.com'
  
    def initialize
      @headers = {
        "Authorization" => "Bearer #{ENV['OPENAI_API_KEY']}",
        "Content-Type" => "application/json"
      }
    end
  
    def send_request(prompt)
      self.class.post("/v1/engines/davinci/completions",
                      body: { prompt: prompt, max_tokens: 50 }.to_json,
                      headers: @headers)
    end
  end
  