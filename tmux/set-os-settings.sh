if uname -a | grep "Linux" > /dev/null; then
    echo "source-file $(pwd)/linux.conf" >> core.conf
elif uname -a | grep "Darwin" > /dev/null; then
    echo "source-file $(pwd)/osx.conf" >> core.conf
fi
