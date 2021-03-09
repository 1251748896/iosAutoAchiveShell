# fix_branch.sh

RNPath=$1
role=$2

cd ${RNPath}

if [ ${role} == "logistics" ]
then 
git checkout logistics-dev
git pull
else 
git checkout driver-dev
git pull
fi

git branch

