# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    class Client
      # @param client [Schedulin::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieve all connected social media accounts for the authenticated user
      #
      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.social_accounts.list
      #
      # @return [Schedulin::SocialAccounts::Types::ListSocialAccountsResponse]
      def list(request_options: {}, **_params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/social-accounts",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::SocialAccounts::Types::ListSocialAccountsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # List companies available to a connected Whop account. Select one before requesting its forum experiences.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.social_accounts.list_whop_companies(id: "id")
      #
      # @return [Schedulin::SocialAccounts::Types::ListWhopCompaniesSocialAccountsResponse]
      def list_whop_companies(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/social-accounts/#{URI.encode_uri_component(params[:id].to_s)}/whop-companies",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::SocialAccounts::Types::ListWhopCompaniesSocialAccountsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # List forum experiences for a Whop company. Use an item id as platformConfiguration.experience.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String] :company_id
      #
      # @example
      #   client.social_accounts.list_whop_forums(
      #     id: "id",
      #     company_id: "companyId"
      #   )
      #
      # @return [Schedulin::SocialAccounts::Types::ListWhopForumsSocialAccountsResponse]
      def list_whop_forums(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["companyId"] = params[:company_id] if params.key?(:company_id)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/social-accounts/#{URI.encode_uri_component(params[:id].to_s)}/whop-forums",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::SocialAccounts::Types::ListWhopForumsSocialAccountsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # List the text and announcement channels the Schedulin bot can post into for a connected Discord server. Use an
      # item id as `platformConfiguration.channel` when creating a Discord post.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.social_accounts.list_discord_channels(id: "id")
      #
      # @return [Schedulin::SocialAccounts::Types::ListDiscordChannelsSocialAccountsResponse]
      def list_discord_channels(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/social-accounts/#{URI.encode_uri_component(params[:id].to_s)}/discord-channels",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::SocialAccounts::Types::ListDiscordChannelsSocialAccountsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # List the channels in a connected Slack workspace that the Schedulin bot can post into (public channels, plus
      # private channels it was invited to). Use an item id as `platformConfiguration.channel` when creating a Slack
      # post.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.social_accounts.list_slack_channels(id: "id")
      #
      # @return [Schedulin::SocialAccounts::Types::ListSlackChannelsSocialAccountsResponse]
      def list_slack_channels(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/social-accounts/#{URI.encode_uri_component(params[:id].to_s)}/slack-channels",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::SocialAccounts::Types::ListSlackChannelsSocialAccountsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Update social media account settings and information
      #
      # @param request_options [Hash]
      # @param params [Schedulin::SocialAccounts::Types::UpdateSocialAccountsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.social_accounts.update(id: "id")
      #
      # @return [Schedulin::SocialAccounts::Types::UpdateSocialAccountsResponse]
      def update(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request_data = Schedulin::SocialAccounts::Types::UpdateSocialAccountsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v0/social-accounts/#{URI.encode_uri_component(params[:id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::SocialAccounts::Types::UpdateSocialAccountsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Remove a connected social media account
      #
      # @param request_options [Hash]
      # @param params [Schedulin::SocialAccounts::Types::DeleteSocialAccountsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.social_accounts.delete(id: "id")
      #
      # @return [Schedulin::SocialAccounts::Types::DeleteSocialAccountsResponse]
      def delete(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request_data = Schedulin::SocialAccounts::Types::DeleteSocialAccountsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v0/social-accounts/#{URI.encode_uri_component(params[:id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::SocialAccounts::Types::DeleteSocialAccountsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Set the IANA timezone (e.g. 'America/Los_Angeles') used to interpret queue times for this account. Unknown names
      # and UTC-offset strings (e.g. '+05:00') are rejected with 422.
      #
      # @param request_options [Hash]
      # @param params [Schedulin::SocialAccounts::Types::UpdateTimezoneSocialAccountsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.social_accounts.update_timezone(
      #     id: "id",
      #     timezone: "timezone"
      #   )
      #
      # @return [Schedulin::SocialAccounts::Types::UpdateTimezoneSocialAccountsResponse]
      def update_timezone(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request_data = Schedulin::SocialAccounts::Types::UpdateTimezoneSocialAccountsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v0/social-accounts/#{URI.encode_uri_component(params[:id].to_s)}/timezone",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::SocialAccounts::Types::UpdateTimezoneSocialAccountsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Return the next available queue slot times (UTC) for a social account, computed from its queue schedule,
      # per-slot capacity, and timezone. Empty when the account has no queue times configured. Use a slot as
      # `scheduledAt`, or pass `action: "queue"` when creating a post to take the next slot automatically.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :after
      #
      # @example
      #   client.social_accounts.next_slots(id: "id")
      #
      # @return [Schedulin::SocialAccounts::Types::NextSlotsSocialAccountsResponse]
      def next_slots(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["after"] = params[:after] if params.key?(:after)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/social-accounts/#{URI.encode_uri_component(params[:id].to_s)}/next-slots",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::SocialAccounts::Types::NextSlotsSocialAccountsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # List the boards for a connected Pinterest account. Use a board id in `platformConfiguration.board_ids` when
      # creating a Pinterest post.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.social_accounts.pinterest_boards(id: "id")
      #
      # @return [Schedulin::SocialAccounts::Types::PinterestBoardsSocialAccountsResponse]
      def pinterest_boards(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/social-accounts/#{URI.encode_uri_component(params[:id].to_s)}/pinterest-boards",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::SocialAccounts::Types::PinterestBoardsSocialAccountsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Fetch the privacy-level options, duration limits, and interaction settings for a connected TikTok account —
      # required to build a valid `platformConfiguration` when creating a TikTok post.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.social_accounts.tiktok_creator_info(id: "id")
      #
      # @return [Schedulin::SocialAccounts::Types::TiktokCreatorInfoSocialAccountsResponse]
      def tiktok_creator_info(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/social-accounts/#{URI.encode_uri_component(params[:id].to_s)}/tiktok-creator-info",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::SocialAccounts::Types::TiktokCreatorInfoSocialAccountsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
