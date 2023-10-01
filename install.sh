#!/bin/bash
curl "https://portswigger-cdn.net/burp/releases/download?product=pro&version=&type=jar" -o burpsuite_pro_latest.jar

java -jar loader.jar &
sleep 2s

echo "java --add-opens=java.desktop/javax.swing=ALL-UNNAMED--add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED -javaagent:loader.jar -noverify -jar burpsuite_pro_latest.jar &" > burpsuite_pro_latest
chmod +x burpsuite_pro_latest
cp burpsuite_pro_latest /bin/burpsuite_pro_latest
./burpsuite_pro_latest
