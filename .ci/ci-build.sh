cd Modest
make clean
make all
make create
make test
make modules
make install
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:${PKG_CONFIG_PATH}
cd ..    
#sudo apt-get install python3 python3-pip ninja-build pkg-config cmake checkinstall -y
python3 -m ensurepip
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade --user setuptools
python3 -m pip install --user meson
export PATH=${USERPROFILE}\\.local\\bin:${PATH}
ls 
# run: sudo update-alternatives --install /usr/bin/meson meson /home/runner/.local/bin/meson 1088
meson build 
    #- name: ninja -C buil
ninja -C build
#    - name: 测试
 ./build/hq -h
#PATH=${PATH}:${USERPROFILE}/.local/bin&&
