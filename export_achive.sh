# export_achive.sh

iosPorjectPath=$4
cd $iosPorjectPath

cd ..
git pull
cd $iosPorjectPath


development_mode=$1
projectName=$2
exportAchivePath=$3

# 清理工程
echo '/// 开始清理'
xcodebuild clean -configuration ${development_mode} -quiet  || exit
echo '/// 清理完成'
# 生成archive
xcodebuild \
archive -workspace ${projectName}.xcworkspace \
-scheme ${projectName} \
-configuration ${development_mode} \
-archivePath ${exportAchivePath}  -quiet  || exit
echo '/// archive完成'
