type Apache::Vhost::Directory = Struct[{
    'allow'                                               => Optional[String],
    'deny'                                                => Optional[String],
    'order'                                               => Optional[String],
    'satify'                                              => Optional[String],
    'path'                                                => Optional[String],
    'provider'                                            => Optional[String],
    'headers'                                             => Optional[Variant[String[1], Array[String[1]]]],
    'geoip_enable'                                        => Optional[Apache::Bool],
    'options'                                             => Optional[Variant[String[1], Array[String[1]]]],
    'index_options'                                       => Optional[Variant[String[1], Array[String[1]]]],
    'index_order_default'                                 => Optional[Variant[String[1], Array[String[1]]]],
    'index_stylesheet'                                    => Optional[String],
    'allow_override'                                      => Optional[Variant[String[1], Array[String[1]]]],
    'satify'                                              => Optional[String],
    'limit'                                               => Any, # TODO: complex type
    'limit_except'                                        => Any, # TODO: complex type equal to limit
    'addhandlers'                                         => Optional[Variant[String[1], Array[String[1]]]],
    'sethandler'                                          => Optional[String],
    'h2_copy_files'                                       => Optional[Apache::Bool],
    'h2_push_resource'                                    => Optional[Variant[String[1], Array[String[1]]]],
    'passenger_enabled'                                   => Optional[Apache::Bool],
    'passenger_base_uri'                                  => Optional[String],
    'passenger_ruby'                                      => Optional[String],
    'passenger_python'                                    => Optional[String],
    'passenger_meteor_app_settings'                       => Optional[String],
    'passenger_meteor_app_env'                            => Optional[String],
    'passenger_app_env'                                   => Optional[String],
    'passenger_app_root'                                  => Optional[String],
    'passenger_app_group_name'                            => Optional[String],
    'passenger_app_type'                                  => Optional[String],
    'passenger_startup_file'                              => Optional[String],
    'passenger_restart_dir'                               => Optional[String],
    'passenger_rolling_restarts'                          => Optional[String],
    'passenger_resist_deployment_errors'                  => Optional[String],
    'passenger_user'                                      => Optional[String],
    'passenger_group'                                     => Optional[String],
    'passenger_friendly_error_pages'                      => Optional[Apache::Bool],
    'passenger_min_instances'                             => Optional[Variant[Integer[0], String]],
    'passenger_max_instances'                             => Optional[Variant[Integer[0], String]],
    'passenger_force_max_concurrent_requests_per_process' => Optional[String],
    'passenger_start_timeout'                             => Optional[String],
    'passenger_concurrency_model'                         => Optional[String],
    'passenger_thread_count'                              => Optional[String],
    'passenger_max_request'                               => Optional[String],
    'passenger_max_request_time'                          => Optional[String],
    'passenger_memory_limit'                              => Optional[String],
    'passenger_high_performance'                          => Optional[Apache::Bool],
    'passenger_buffer_upload'                             => Optional[Apache::Bool],
    'passenger_buffer_response'                           => Optional[Apache::Bool],
    'passenger_error_override'                            => Optional[Apache::Bool],
    'passenger_max_request_queue_size'                    => Optional[Variant[Integer[0], String]],
    'passenger_max_request_queue_time'                    => Optional[Variant[Integer[0], String]],
    'passenger_sticky_sessions'                           => Optional[Apache::Bool],
    'passenger_sticky_sessions_cookie_name'               => Optional[String],
    'passenger_allow_encoded_slashes'                     => Optional[Apache::Bool],
    'passenger_debugger'                                  => Optional[Apache::Bool],
    'php_flags'                                           => Optional[Hash[String, Variant[String, Boolean, Integer]]],
    'php_values'                                          => Optional[Hash[String, Variant[String, Boolean, Integer]]],
    'php_admin_flags'                                     => Optional[Hash[String, Variant[String, Boolean, Integer]]],
    'php_admin_values'                                    => Optional[Hash[String, Variant[String, Boolean, Integer]]],
    'directory_index'                                     => Optional[String],
    'additional_includes'                                 => Optional[Array[String[1]]],
    'error_documents'                                     => Optional[Array, Hash], # TODO: Hash has error_code and document
    'dav'                                                 => Optional[String[1]],
    'dav_depth_infinity'                                  => Optional[Apache::Bool],
    'dav_min_timeout'                                     => Optional[Variant[String, Integer[0]]],
}]
