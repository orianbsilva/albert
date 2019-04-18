export QTHOME=/opt/qt/5.12.2/gcc_64

cmake ../. \
 "-DCMAKE_BUILD_TYPE:STRING=Debug" \
 "-DCMAKE_CXX_COMPILER:STRING=/usr/bin/g++" \
 "-DCMAKE_C_COMPILER:STRING=/usr/bin/gcc" \
 "-DCMAKE_PREFIX_PATH:STRING=$QTHOME" \
 "-DQT_QMAKE_EXECUTABLE:STRING=$QTHOME/bin/qmake"
 
export QT_QPA_PLATFORM_PLUGIN_PATH=$QTHOME/plugins
export LD_LIBRARY_PATH=/usr/local/lib:$QTHOME/lib
