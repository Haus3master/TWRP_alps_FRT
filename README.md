# TWRP_alps_FRT
TWRP 3.7.0 for the Nokia 1 TA-1066(MT6735/7M)


#Guide for building
1. Clone the twrp ninimal manifest android 11 branch

   repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11
   repo sync --force-sync -c -j8
   
3. Place this device tree in the "device/alps/FRT" directory from the cloned minimal manifests. Note: you must create the "alps/FRT/" directories yourself, it won't be included in the minimal manifest.
4. Run the following commands in the order

   . build/envsetup.sh
   lunch twrp_FRT-eng
   mka recoveryimage -j16 #I have used -j16 to reduce build tmes, you may choose your own number of simultanelous jobs as per your specifications.

6. Your built recovery image will be located in "out/target/product/FRT/recovery.img

Credits to @sebaubuntu for twrpdtgen - which helped create the device tree
