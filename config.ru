
use Rack::Deflater

use Rack::Static,
  :urls => ["/img", "/build/js", "/build/css"]

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('index.html', File::RDONLY)
  ]
}



