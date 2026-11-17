#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
# CocoaPods support is kept for apps that have not enabled Swift Package Manager.
# The sources live in the SPM layout under qr_code_scanner/Sources.
#

Pod::Spec.new do |s|
  s.name             = 'qr_code_scanner'
  s.version          = '0.2.0'
  s.summary          = 'QR Code Scanner for flutter.'
  s.description      = <<-DESC
QR code scanner that can be embedded inside flutter.
                       DESC
  s.homepage         = 'https://github.com/juliuscanute/qr_code_scanner'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'juliuscanute[*]touchcapture.net' }
  s.source           = { :path => '.' }
  s.source_files = 'qr_code_scanner/Sources/**/*.{swift,h,m}'
  s.public_header_files = 'qr_code_scanner/Sources/MTBBarcodeScanner/include/*.h'
  s.dependency 'Flutter'
  s.frameworks = 'AVFoundation', 'QuartzCore'
  s.platform = :ios, '12.0'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
