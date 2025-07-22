# cmake files support debug production
include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(TOYOTA_TX_V2_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_assemble)
add_library(TOYOTA_TX_V2_default_default_XC8_assemble OBJECT ${TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_assemble})
    TOYOTA_TX_V2_default_default_XC8_assemble_rule(TOYOTA_TX_V2_default_default_XC8_assemble)
    list(APPEND TOYOTA_TX_V2_default_library_list "$<TARGET_OBJECTS:TOYOTA_TX_V2_default_default_XC8_assemble>")
endif()

# Handle files with suffix S, for group default-XC8
if(TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(TOYOTA_TX_V2_default_default_XC8_assemblePreprocess OBJECT ${TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_assemblePreprocess})
    TOYOTA_TX_V2_default_default_XC8_assemblePreprocess_rule(TOYOTA_TX_V2_default_default_XC8_assemblePreprocess)
    list(APPEND TOYOTA_TX_V2_default_library_list "$<TARGET_OBJECTS:TOYOTA_TX_V2_default_default_XC8_assemblePreprocess>")
endif()

# Handle files with suffix [cC], for group default-XC8
if(TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_compile)
add_library(TOYOTA_TX_V2_default_default_XC8_compile OBJECT ${TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_compile})
    TOYOTA_TX_V2_default_default_XC8_compile_rule(TOYOTA_TX_V2_default_default_XC8_compile)
    list(APPEND TOYOTA_TX_V2_default_library_list "$<TARGET_OBJECTS:TOYOTA_TX_V2_default_default_XC8_compile>")
endif()


add_executable(${TOYOTA_TX_V2_default_image_name} ${TOYOTA_TX_V2_default_library_list})
set_target_properties(${TOYOTA_TX_V2_default_image_name} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${TOYOTA_TX_V2_default_output_dir})

target_link_libraries(${TOYOTA_TX_V2_default_image_name} PRIVATE ${TOYOTA_TX_V2_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
TOYOTA_TX_V2_default_link_rule(${TOYOTA_TX_V2_default_image_name})




