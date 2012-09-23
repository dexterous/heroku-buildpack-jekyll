require "rack/static"

use Rack::Static, 
  urls: ["/"], 
  root: "_site",
  index: "index.html",
  headers: { "Cache-Control" => "public" }

run ->(env) { [ 404, {}, [] ] }
