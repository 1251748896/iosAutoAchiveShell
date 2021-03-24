# fix_branch.sh

RNPath=$1
role=$2

cd ${RNPath}


if [ ${role} == "logistics" ]
then 
echo "来到这里了"
git checkout publish-logistics-4.40.10.100-hwl
git pull
else 
echo "来到这里了---司机${role}"
git checkout publish-driver-4.40.10.100-hwl
git pull
fi

git branch

