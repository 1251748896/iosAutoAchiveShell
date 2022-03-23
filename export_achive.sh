# export_achive.sh

iosPorjectPath=$4
cd $iosPorjectPath

pwd

# 更新 hcdmodule
cd ..
cd hcdmodule
git pull
# flutter pub get

# 更新司机(货主)端 代码
cd ..

git pull
# flutter clean
# flutter pub get

# 刷新 pod 
cd ios
# pod install


development_mode=$1
projectName=$2
exportAchivePath=$3

# 清理工程
# echo '/// 开始清理'
# xcodebuild clean -configuration ${development_mode} -quiet  || exit
# echo '/// 清理完成'
# 生成archive
xcodebuild \
archive -workspace ${projectName}.xcworkspace \
-scheme ${projectName} \
-configuration ${development_mode} \
-archivePath ${exportAchivePath}  -quiet  || exit
echo '/// archive完成'
