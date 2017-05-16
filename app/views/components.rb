require 'opal'

#require 'reactrb/auto-import'
require 'react/react-source-browser'
require 'react/react-source-server'
#require 'webpack/client_and_server.js'

require 'hyper-component'

if React::IsomorphicHelpers.on_opal_client?
  require 'opal-jquery'
  require 'browser'
  require 'browser/interval'
  require 'browser/delay'
end

#require 'hyper-console'
require 'hyper-model'
require 'hyper-store'
require 'hyper-operation'
require 'models'

require_tree './components'
