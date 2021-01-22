cd Modest
make clean
make all
make create
make test
make modules
make clone 
make install
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:${PKG_CONFIG_PATH}
cd ..    
echo 安装结束
#sudo apt-get install python3 python3-pip ninja-build cmake pkg-config checkinstall -y
export PATH=/c/Users/runneradmin/.local/bin:${PATH}
python3 -m ensurepip
echo 安装结束
python3 -m pip install --upgrade pip
echo 安装结束
python3 -m pip install --upgrade --user setuptools
echo 安装结束
python3 -m pip install --user meson
echo 安装结束
python3 -m pip install --user ninja
echo 安装结束
export -p
ls 
# run: sudo update-alternatives --install /usr/bin/meson meson /home/runner/.local/bin/meson 1088
meson build 
echo 编译结束
    #- name: ninja -C buil
ninja -C build
#    - name: 测试
 ./build/hq -h
#PATH=${PATH}:${USERPROFILE}/.local/bin&&
