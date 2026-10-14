# frozen_string_literal: true

module Schedulin
  module Ideas
    class Client
      # @param client [Schedulin::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # The workspace's Ideas board: its columns in order (the last column is Done) and every idea that isn't archived,
      # ordered by column position.
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
      #   client.ideas.list
      #
      # @return [Schedulin::Ideas::Types::ListIdeasResponse]
      def list(request_options: {}, **_params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/ideas",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Ideas::Types::ListIdeasResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Add an idea to the bottom of a column (the first column when `columnId` is omitted). Creates the workspace's
      # Ideas board if it doesn't exist yet.
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Ideas::Types::CreateIdeasRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.ideas.create(title: "title")
      #
      # @return [Schedulin::Ideas::Types::CreateIdeasResponse]
      def create(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v0/ideas",
          body: Schedulin::Ideas::Types::CreateIdeasRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Ideas::Types::CreateIdeasResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Permanently delete an idea from the Ideas board.
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Ideas::Types::DeleteIdeasRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.ideas.delete(id: "id")
      #
      # @return [Schedulin::Ideas::Types::DeleteIdeasResponse]
      def delete(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request_data = Schedulin::Ideas::Types::DeleteIdeasRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v0/ideas/#{URI.encode_uri_component(params[:id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Schedulin::Ideas::Types::DeleteIdeasResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Change an idea's title or description, or move it to the bottom of another column with `columnId`. Moving into
      # the last (Done) column marks it completed; moving out clears that.
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Ideas::Types::UpdateIdeasRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.ideas.update(id: "id")
      #
      # @return [Schedulin::Ideas::Types::UpdateIdeasResponse]
      def update(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request_data = Schedulin::Ideas::Types::UpdateIdeasRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v0/ideas/#{URI.encode_uri_component(params[:id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Schedulin::Ideas::Types::UpdateIdeasResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
