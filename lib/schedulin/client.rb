# frozen_string_literal: true

module Schedulin
  class Client
    # @param api_key [String]
    # @param base_url [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(api_key:, base_url: nil, max_retries: 2)
      @raw_client = Schedulin::Internal::Http::RawClient.new(
        base_url: base_url || Schedulin::Environment::DEFAULT,
        headers: {
          "X-Fern-Language" => "Ruby",
          "x-api-key" => api_key.to_s
        },
        max_retries: max_retries
      )
    end

    # @return [Schedulin::Posts::Client]
    def posts
      @posts ||= Schedulin::Posts::Client.new(client: @raw_client)
    end

    # @return [Schedulin::SocialAccounts::Client]
    def social_accounts
      @social_accounts ||= Schedulin::SocialAccounts::Client.new(client: @raw_client)
    end

    # @return [Schedulin::Tags::Client]
    def tags
      @tags ||= Schedulin::Tags::Client.new(client: @raw_client)
    end

    # @return [Schedulin::Media::Client]
    def media
      @media ||= Schedulin::Media::Client.new(client: @raw_client)
    end
  end
end
