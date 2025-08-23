source 'https://rubygems.org'

# You may use http://rbenv.org/ or https://rvm.io/ to install and use this version
ruby ">= 2.6.10"

# Exclude problematic versions of cocoapods and activesupport that causes build failures.
# Xcode 16 generates a project in a slightly different ways from previous versions of Xcode, and you need the latest CocoaPods and Xcodeproj gems to make it work properly.
# Comment if project is created with Xcode 16
# gem 'cocoapods', '>= 1.13', '!= 1.15.0', '!= 1.15.1'
# Add if project is created with Xcode 16
gem 'cocoapods', '1.16.2'
gem 'activesupport', '>= 6.1.7.5', '!= 7.1.0'
# Comment if project is created with Xcode 16
# gem 'xcodeproj', '< 1.26.0'
# Add if project is created with Xcode 16
gem 'xcodeproj', '1.27.0'
gem 'concurrent-ruby', '< 1.3.4'

# Ruby 3.4.0 has removed some libraries from the standard library.
gem 'bigdecimal'
gem 'logger'
gem 'benchmark'
gem 'mutex_m'
