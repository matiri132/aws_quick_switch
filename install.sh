#!/bin/bash

INSTALL_DIR="/home/$USER/.local/bin"
SCRIPT="aws_quick_switch.sh"
SOURCE="/home/$USER/.zshrc"


if [ $1 == "update" ]; then
    cp "$SCRIPT" "$INSTALL_DIR"/aws_quick_switch.sh
    chmod +x "$INSTALL_DIR"/"$SCRIPT"
    exit 0
else
    cp "$SCRIPT" "$INSTALL_DIR"/aws_quick_switch.sh
    chmod +x "$INSTALL_DIR"/"$SCRIPT"
    echo "alias aws_sp='function a(){if [ ! \"\$1\" = \"\" ];then \$(aws_quick_switch.sh \"\$1\"); else; aws_quick_switch.sh; fi;  };a'" >> ${SOURCE}
fi

