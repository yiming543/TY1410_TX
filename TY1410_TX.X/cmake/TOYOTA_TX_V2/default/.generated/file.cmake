# The following variables contains the files used by the different stages of the build process.
set(TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_assemble)
set_source_files_properties(${TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)
set(TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_assemblePreprocess)
set_source_files_properties(${TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_assemblePreprocess} PROPERTIES LANGUAGE ASM)
set(TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_compile "${CMAKE_CURRENT_SOURCE_DIR}/../../../TY1410_TX.c")
set_source_files_properties(${TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_link)
set(TOYOTA_TX_V2_default_image_name "default.elf")


# The output directory of the final image.
set(TOYOTA_TX_V2_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/TOYOTA_TX_V2")
