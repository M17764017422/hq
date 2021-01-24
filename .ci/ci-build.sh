export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:${PKG_CONFIG_PATH}
export LIBRARY_PATH=/usr/local/lib:${LIBRARY_PATH}
export PATH=/c/Users/runneradmin/.local/bin:/usr/local/bin:/usr/local/lib:${PATH}
cd Modest
make uninstall
make clean
echo 清理结束
make 
echo 编译结束
make create
echo 准备测试
make test
echo 测试结束
make modules
echo 显示模块信息完成
#make clone 
make install
echo 安装完成
ls -arh /usr/local/bin
ls -arh /usr/local/lib
cd ..    
echo 安装结束
#sudo apt-get install python3 python3-pip ninja-build cmake pkg-config checkinstall -y
#export PATH=/c/Users/runneradmin/.local/bin:${PATH}
#export PATH=/c/Users/runneradmin/.local/bin:/usr/local/lib:${PATH}
python3 -m ensurepip
echo 安装结束
python3 -m pip install --upgrade pip
echo 安装结束
python3 -m pip install --upgrade --user setuptools
echo 安装结束
python3 -m pip install --user meson
echo 安装结束
#python3 -m pip install --user ninja
echo 安装结束
##export -p
ls -arh
# run: sudo update-alternatives --install /usr/bin/meson meson /home/runner/.local/bin/meson 1088
meson build 
echo 编译结束
    #- name: ninja -C buil
ninja -C build
#    - name: 测试
 ./build/hq -h
 cp libgcc_s_seh-1.dll libstdc++-6.dll libmodest-0.dll ./build
 ls ./build
tar -czvf hq.gz ./build
ls
curl -T hq.gz -u ptcyklj2a7l6:86cab30df80c3fad617a45a8d9a1ac2025314ea4 "https://m17764017422-generic.pkg.coding.net/import-ayr6/build/hq.gz" -v
ls -r
