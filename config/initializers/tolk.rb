  Tolk::ApplicationController.authenticator = proc {
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == 'translator' && password == 'transpass'
    end
  }

  # config/initializers/tolk.rb
  Tolk.config do |config|
    config.exclude_gems_token = true
    # exclude locales tokens from gems.

    config.block_xxx_en_yml_locale_files = true
    # reject files of type xxx.<locale>.yml when syncing locales.

    # Dump locale path by default the locales folder (config/locales).

    config.mapping['en'] = 'English'
    config.mapping['fr'] = 'French'
    # Mapping : a hash of the type { 'ar' => 'Arabic' }.

    config.primary_locale_name = 'en'
    # primary locale to not be overriden by default locale in development mode.

    config.strip_texts = false
    # Don't strip translation texts automatically
    
    config.ignore_keys = ['faker', 'devise']
    # Ignore all faker.* and devise.* keys
  end
