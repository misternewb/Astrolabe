Pod::Spec.new do |s|
  s.name = 'Astrolabe'
  s.version = '4.2.3'
  s.summary = 'Cells management library'

  s.homepage = 'https://github.com/netcosports/Astrolabe'
  s.license = { :type => "MIT" }
  s.author = {
    'Sergei Mikhan' => 'sergei@netcosports.com',
    'Vladimir Burdukov' => 'vladimir.burdukov@netcosports.com'
  }
  s.source = { :git => 'https://github.com/netcosports/Astrolabe.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |sub|
    sub.source_files = 'Sources/Core/*.swift'
    sub.tvos.exclude_files = ['Sources/Core/*PagerSource.swift', 'Sources/Core/*PagerCollectionViewCell.swift']

    sub.dependency 'RxSwift', '~> 4.2'
    sub.dependency 'RxCocoa', '~> 4.2'
  end

  s.subspec 'Loaders' do |sub|
    sub.source_files = 'Sources/Loaders/*.swift'
    sub.dependency 'Gnomon/Core', '~> 4.2'
    sub.dependency 'Astrolabe/Core'
  end
end
