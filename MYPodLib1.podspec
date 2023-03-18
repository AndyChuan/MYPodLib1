#
# Be sure to run `pod lib lint MYPodLib1.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

class MyCode
def recursionDirCreateSubSpace(path1,space)
    ignore = ['.','..','.DS_Store']
 
    Dir.foreach(path1) do |file|
        
        # p file  # 打印所有的file，需要忽略掉你不需要的
        if ignore.include?(file) && file.length > 0
            next
        end
        
        tmpPath = "#{path1}/#{file}"
        # p tmpPath # 打印合理的路径，检测是否有不合理的记得过滤
        if File::ftype(tmpPath) == "directory"
            space.subspec file do |tmpS|
                tmpS.source_files = "#{tmpPath}/*"
                recursionDirCreateSubSpace(tmpPath,tmpS)
            end
        end
    end
end


Pod::Spec.new do |s|
  s.name             = 'MYPodLib1'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MYPodLib1.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/chengchuancun-a1147/MYPodLib1'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chengchuancun-a1147' => 'chuancun.cheng-a1147@aqara.com' }
  s.source           = { :git => 'https://github.com/chengchuancun-a1147/MYPodLib1.git', :tag => '0.1.0' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'MYPodLib1/Classes/*'
  s.public_header_files = 'MYPodLib1/Classes/MYPodHeader.h'
#  s.resource='MYPodLib1/MYFrameBundle.bundle'
  s.resource_bundles = {
    'MYFrameBundle' =>['MYPodLib1/Assets/*']
  }

  MyCode.new.recursionDirCreateSubSpace("MYPodLib1/Classes",s);
  end
  
  # s.resource_bundles = {
  #   'MYPodLib1' => ['MYPodLib1/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
