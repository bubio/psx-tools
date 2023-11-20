#!/usr/bin/env bash

echo "Extracting all DIR/BIN files..."
echo "=================================================="

extract_bin () {
  if [ -e ../ps1_assets/"$1.DIR" ]; then
    echo "Extracting $1.BIN..."
    mkdir ../ps1_assets/"$1"
    cd ../ps1_assets/"$1"
    ../../dstream.bin ../../ps1_assets/"$1.DIR" ../../ps1_assets/"$1.BIN" VAG BOF BNK > ../../ps1_assets/"$1.log"
    cd ..
  else
    echo "$1.DIR not found, skipping..."
  fi
}

# Main game files
extract_bin LUMP
# English language
extract_bin STREAM1
# French language
extract_bin STREAM2
# German language
extract_bin STREAM3
# Swedish language
extract_bin STREAM4
# Japanese language
extract_bin STREAM5

echo ""
echo "Done."

# pause equivalent in sh
echo "Press Enter to exit..."
read key

exit