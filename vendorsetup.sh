# Copy prebuilt vendor script
VENDOR_DIR="vendor/xiaomi/prebuilt"
URL="https://sourceforge.net/projects/guidixproject/files/files/vendor.img"

# Calculate the checksum of vendor.img
current_checksum=$(md5sum "${vendor_DIR}/vendor.img" | awk '{ print $1 }')

# Expected vendor checksum
expected_checksum="ab8ceb92407682e6b7bc25d26f4ee628"

# Compare the current checksum with the expected checksum
 if [ "$current_checksum" != "$expected_checksum" ]; then
   echo -e "${color}Cloning Vendor, Please Wait ${end}"
   rm -rf ${VENDOR_DIR}/vendor.img
   wget ${URL} -O ${VENDOR_DIR}/vendor.img
 fi
fi
