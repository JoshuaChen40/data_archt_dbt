使用方式，請執行以下語法:
```
# git install
sudo yum install git
git --version
git config --global user.name "JoshuaChen40"
git config --global user.email "XXXXXX@gmail.com"
git config --global --list
ssh-keygen -t rsa -b 4096
# 請把 id_rsa.pub裡面的字段貼給我，我會開權限給你

# git clone setting
mkdir /usr/docker
cd /usr/docker
git clone git@github.com:JoshuaChen40/docker_airflow.git
mv /usr/docker/docker_airflow /usr/docker/airflow

# docker build
sh /usr/docker/airflow/images/docker_build.sh

# docker-compose up
sh /usr/docker/airflow/docker_compose.sh
```

檔案說明:
1. dags Folder裡面存放需要跑的dag程式碼
2. images裡面放Build Airflow需要執行的檔案
3. airflow.cfg.default是用來參考與研究airflow config參數使用
