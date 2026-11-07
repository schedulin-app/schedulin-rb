# frozen_string_literal: true

module Schedulin
  module Ugc
    class Client
      # @param client [Schedulin::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Create an AI UGC (talking-actor) video from a brief and start rendering it. Reserves AI credits up front; poll
      # getProject until COMPLETED or FAILED
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Ugc::Types::CreateVideoUgcRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.ugc.create_video(product_name: "productName")
      #
      # @return [Schedulin::Ugc::Types::CreateVideoUgcResponse]
      def create_video(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v0/studio/ugc/createProject",
          body: Schedulin::Ugc::Types::CreateVideoUgcRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Ugc::Types::CreateVideoUgcResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get an AI UGC video's status, with signed URLs for the final video and poster once COMPLETED. Pass waitSeconds
      # (max 45) to wait for it to finish before responding
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [Integer, nil] :wait_seconds
      #
      # @example
      #   client.ugc.get_video(id: "id")
      #
      # @return [Schedulin::Ugc::Types::GetVideoUgcResponse]
      def get_video(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["id"] = params[:id] if params.key?(:id)
        query_params["waitSeconds"] = params[:wait_seconds] if params.key?(:wait_seconds)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/studio/ugc/getProject",
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
          (response.body.to_s.empty? ? nil : Schedulin::Ugc::Types::GetVideoUgcResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Copy a COMPLETED UGC video into the media library and return its permanent URL, ready to attach to a post.
      # Idempotent: repeat calls return the same media
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Ugc::Types::AddToMediaLibraryUgcRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.ugc.add_to_media_library(project_id: "projectId")
      #
      # @return [Schedulin::Ugc::Types::AddToMediaLibraryUgcResponse]
      def add_to_media_library(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v0/studio/ugc/addToMediaLibrary",
          body: Schedulin::Ugc::Types::AddToMediaLibraryUgcRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Ugc::Types::AddToMediaLibraryUgcResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :per_page
      # @option params [Schedulin::Ugc::Types::ListAvatarsUgcRequestSortItem, nil] :sort
      # @option params [String, nil] :name
      # @option params [String, nil] :status
      #
      # @example
      #   client.ugc.list_avatars
      #
      # @return [Schedulin::Ugc::Types::ListAvatarsUgcResponse]
      def list_avatars(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["perPage"] = params[:per_page] if params.key?(:per_page)
        query_params["sort"] = params[:sort] if params.key?(:sort)
        query_params["name"] = params[:name] if params.key?(:name)
        query_params["status"] = params[:status] if params.key?(:status)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/studio/ugc/avatars/list",
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
          (response.body.to_s.empty? ? nil : Schedulin::Ugc::Types::ListAvatarsUgcResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
