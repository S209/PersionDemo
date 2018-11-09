 Customize this file, documentation can be found here:
# https://docs.fastlane.tools/actions/
# All available actions: https://docs.fastlane.tools/actions
# can also be listed using the `fastlane actions` command


# Change the syntax highlighting to Ruby
# All lines starting with a # are ignored when running `fastlane`


# If you want to automatically update fastlane if a new version is available:
# update_fastlane


# This is the minimum version number required.
# Update this, if you use features of a newer version
min_fastlane_version("2.70.3")


default_platform(:ios)


platform :ios do
  before_all do
    # ENV["SLACK_URL"] = "https://hooks.slack.com/services/..."
    cocoapods(use_bundle_exec: false)
    # cocoapods
  end
 :wqi


  # desc "Submit a new Beta Build to Apple TestFlight"
  # desc "This will also make sure the profile is up to date"
  # lane :beta do
  #  # sync_code_signing(type: "appstore") # more information: https://codesigning.guide
  #  build_app # more options available
  #  upload_to_testflight


  #   sh "your_script.sh"
  #   You can also use other beta testing services here (run `fastlane actions`)
  # end


#  desc "Deploy a new version to the App Store"
#  lane :release do
#    # sync_code_signing(type: "appstore")
#    capture_screenshots
#    build_app # more options available
#    upload_to_app_store(force: true)
#    # frame_screenshots
#  end


  # You can define as many lanes as you want


  desc "内测版本"
  lane :adhoc do |options|
    get_certificates           # invokes cert
    get_provisioning_profile   # invokes sigh
    gym(
      clean:true, # 是否清空以前的编译信息 true：是
      scheme: "TestApp", # 自己项目名称
      workspace: "TestApp.xcworkspace", # 自己项目名称xcworkspace（使用cocoapods才会生成）
      export_method:"ad-hoc", #app-store ad-hoc
      configuration:"AdHoc",
      output_directory:"./fastlane/build", # 打包后的 ipa 文件存放的目录
      export_xcargs: "-allowProvisioningUpdates", #访问钥匙串
      output_name:"TestApp.ipa",  # ipa 文件名
      #silent:true,#隐藏没有必要的信息
      export_options: {
        provisioningProfiles: {
          "com.combatworld.honourcard" => "dis_profile0104" # bundleid，打包用的证书名字
        }
      }
    )
    pgyer(api_key: "925b799ec8ce5d19910288cdde27bfdc", # 从蒲公英项目详情中获取的 apikey
         user_key: "794c12895e9513258bf90331d9b6cc63", # 从蒲公英项目详情中获取的 userkey
         update_description: options[:desc]#"description" # 本次测试更新的文字说明（参数设置）




    )


  end
  after_all do |lane|
    # This block is called, only if the executed lane was successful


    # slack(
    #   message: "Successfully deployed new App Update."
    # )
  end

