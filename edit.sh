#!/bin/bash

echo "<style>\n\timg[src$="#shadow-round"] {\n\t\tborder-radius: 20px;\n\t\tbox-shadow: 1px 10px 20px #222222;\n\t}\n</style>\n$(cat "$1")" > "$1"
