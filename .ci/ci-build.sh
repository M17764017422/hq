cd Modest
make clean
make static
make create
make test
make modules
make clone 
make install
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:${PKG_CONFIG_PATH}
cd ..    
echo 安装结束
#sudo apt-get install python3 python3-pip ninja-build cmake pkg-config checkinstall -y
#export PATH=/c/Users/runneradmin/.local/bin:${PATH}
export PATH=/c/Users/runneradmin/.local/bin:/usr/local/lib:${PATH}
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
export -p
ls 
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
