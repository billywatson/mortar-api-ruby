#
# Copyright 2012 Mortar Data Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Portions of this code from heroku.rb (https://github.com/heroku/heroku.rb/),
# used under an MIT license 
# (https://github.com/heroku/heroku.rb/blob/56fa8ed4cba0ab7e5785d6df75a9de687237124f/README.md#meta).
#

module Mortar
  class API
    module Errors
      class Error < StandardError; end

      class ErrorWithResponse < Error
        attr_reader :response

        def initialize(message, response)
          super message
          @response = response
        end
      end

      class Unauthorized < ErrorWithResponse; end
      class VerificationRequired < ErrorWithResponse; end
      class Forbidden < ErrorWithResponse; end
      class NotFound < ErrorWithResponse; end
      class Timeout < ErrorWithResponse; end
      class Locked < ErrorWithResponse; end
      class RequestFailed < ErrorWithResponse; end
    end
  end
end
