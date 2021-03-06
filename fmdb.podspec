Pod::Spec.new do |s|
  s.name     = 'FMDB'
  s.version  = '2.0'
  s.summary  = 'A Cocoa / Objective-C wrapper around SQLite.'
  s.homepage = 'https://github.com/ccgus/fmdb'
  s.license  = 'MIT'
  s.author   = { 'August Mueller' => 'gus@flyingmeat.com' }
  s.source   = { :git => 'https://github.com/ccgus/fmdb.git' }

  s.source_files = 'src/FM*.{h,m}'
  s.exclude_files = 'src/fmdb\.m'
  s.library = 'sqlite3'

  s.subspec 'SQLCipher' do |ss|
    ss.source_files = 'src/FM*.{h,m}'
    ss.exclude_files = 'src/fmdb\.m'
    ss.library = 'sqlite3'

    ss.xcconfig     =  { 'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC' }

    ss.dependency 'SQLCipher'
  end
end
