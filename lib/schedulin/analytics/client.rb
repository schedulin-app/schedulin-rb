# frozen_string_literal: true

module Schedulin
  module Analytics
    class Client
      # @param client [Schedulin::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Aggregate engagement totals (impressions, reach, likes, comments, shares, saves, video views, clicks,
      # engagement), follower audience and posts published for the window, plus percent change vs the previous window of
      # the same length. Covers posts published from the workspace's connected accounts. Filter with `platforms` and
      # `socialAccountIds`; `from`/`to` may span up to 400 days. Metrics are collected periodically per post, so the
      # most recent hours may still be filling in.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :from
      # @option params [String] :to
      # @option params [Schedulin::Analytics::Types::OverviewAnalyticsRequestPlatformsItem, nil] :platforms
      # @option params [String, nil] :social_account_ids
      #
      # @example
      #   client.analytics.overview(
      #     from: "from",
      #     to: "to"
      #   )
      #
      # @return [Schedulin::Analytics::Types::OverviewAnalyticsResponse]
      def overview(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["from"] = params[:from] if params.key?(:from)
        query_params["to"] = params[:to] if params.key?(:to)
        query_params["platforms"] = params[:platforms] if params.key?(:platforms)
        query_params["socialAccountIds"] = params[:social_account_ids] if params.key?(:social_account_ids)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/analytics/overview",
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
          (response.body.to_s.empty? ? nil : Schedulin::Analytics::Types::OverviewAnalyticsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Engagement totals for the window grouped by platform, highest engagement first. Covers posts published from the
      # workspace's connected accounts. Filter with `platforms` and `socialAccountIds`; `from`/`to` may span up to 400
      # days. Metrics are collected periodically per post, so the most recent hours may still be filling in.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :from
      # @option params [String] :to
      # @option params [Schedulin::Analytics::Types::PlatformBreakdownAnalyticsRequestPlatformsItem, nil] :platforms
      # @option params [String, nil] :social_account_ids
      #
      # @example
      #   client.analytics.platform_breakdown(
      #     from: "from",
      #     to: "to"
      #   )
      #
      # @return [Schedulin::Analytics::Types::PlatformBreakdownAnalyticsResponse]
      def platform_breakdown(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["from"] = params[:from] if params.key?(:from)
        query_params["to"] = params[:to] if params.key?(:to)
        query_params["platforms"] = params[:platforms] if params.key?(:platforms)
        query_params["socialAccountIds"] = params[:social_account_ids] if params.key?(:social_account_ids)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/analytics/platforms",
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
          (response.body.to_s.empty? ? nil : Schedulin::Analytics::Types::PlatformBreakdownAnalyticsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Posts ranked by `metric` (default `engagementTotal`) accumulated within the window. Covers posts published from
      # the workspace's connected accounts. Filter with `platforms` and `socialAccountIds`; `from`/`to` may span up to
      # 400 days. Metrics are collected periodically per post, so the most recent hours may still be filling in.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :from
      # @option params [String] :to
      # @option params [Schedulin::Analytics::Types::TopPostsAnalyticsRequestPlatformsItem, nil] :platforms
      # @option params [String, nil] :social_account_ids
      # @option params [Schedulin::Analytics::Types::TopPostsAnalyticsRequestMetric, nil] :metric
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.analytics.top_posts(
      #     from: "from",
      #     to: "to"
      #   )
      #
      # @return [Schedulin::Analytics::Types::TopPostsAnalyticsResponse]
      def top_posts(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["from"] = params[:from] if params.key?(:from)
        query_params["to"] = params[:to] if params.key?(:to)
        query_params["platforms"] = params[:platforms] if params.key?(:platforms)
        query_params["socialAccountIds"] = params[:social_account_ids] if params.key?(:social_account_ids)
        query_params["metric"] = params[:metric] if params.key?(:metric)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/analytics/top-posts",
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
          (response.body.to_s.empty? ? nil : Schedulin::Analytics::Types::TopPostsAnalyticsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
