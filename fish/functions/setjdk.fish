function setjdk
   if test -n "$JAVA_HOME"
     removeFromPath "$JAVA_HOME/bin"
   end
   set -gx JAVA_HOME (/usr/libexec/java_home -v $argv[1])
   set -gx PATH $JAVA_HOME/bin $PATH
end