if uname -a | grep "Linux" > /dev/null; then
    echo "source-file linux.conf" >> core.conf
elif uname -a | grep "Darwin" > /dev/null; then
    echo "source-file osx.conf" >> core.conf
fi
