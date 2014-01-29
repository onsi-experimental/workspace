export GOPATH=$PWD
export PATH="$GOPATH/bin:$PATH"

function goto {
  local p
  local f
  for p in `echo $GOPATH | tr ':' '\n'`; do
    f=`find ${p}/src -type d | grep ${1} | head -n 1`
    if [ -n "$f" ]; then
      cd $f
      return
    fi
  done
}
