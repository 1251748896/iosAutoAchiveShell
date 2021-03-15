# fix_branch.sh

RNPath=$1
role=$2

cd ${RNPath}

if [ ${role} == "logistics" ]
then 
git checkout publish-logistics-4.40.10.100-hwl
git pull
else 
git checkout publish-driver-4.40.10.100-hwl
git pull
fi

git branch

