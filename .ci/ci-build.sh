cd Modest
make clean
make library
make create
make test
make install
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
cd ..    
#sudo apt-get install python3 python3-pip ninja-build pkg-config cmake checkinstall -y
python3 -m ensurepip
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade --user setuptools
python3 -m pip install --user meson
ls
    #- uses: actions/checkout@v2
#    - name: 配置 meson
ls ${USERPROFILE}\\.local\\bin
     # run: sudo update-alternatives --install /usr/bin/meson meson /home/runner/.local/bin/meson 1088
    #- name: meson build
export PATH=${PATH}:${USERPROFILE}\\.local\\bin&&${USERPROFILE}\\.local\\bin\\meson build 
    #- name: ninja -C buil
ninja -C build
#    - name: 测试
 ./build/hq -h
#PATH=${PATH}:${USERPROFILE}/.local/bin&&
