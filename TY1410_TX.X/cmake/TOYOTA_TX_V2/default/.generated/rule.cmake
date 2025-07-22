# The following functions contains all the flags passed to the different build stages.

set(PACK_REPO_PATH "C:/Users/t00904/.mchp_packs" CACHE PATH "Path to the root of a pack repository.")

function(TOYOTA_TX_V2_default_default_XC8_assemble_rule target)
    set(options
        "-c"
        "${MP_EXTRA_AS_PRE}"
        "-mcpu=16F1936"
        "${DEBUGGER_NAME}"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC12-16F1xxx_DFP/1.2.63/xc8"
        "-fno-short-double"
        "-fno-short-float"
        "-O0"
        "-fasmfile"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-Wa,-a"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-osccal"
        "-moscval=0x3400"
        "-mno-resetbits"
        "-mno-save-resetbits"
        "-mno-download"
        "-mno-stackcall"
        "-mdefault-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto:auto:auto")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__16F1936__"
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../..")
endfunction()
function(TOYOTA_TX_V2_default_default_XC8_assemblePreprocess_rule target)
    set(options
        "-c"
        "${MP_EXTRA_AS_PRE}"
        "-mcpu=16F1936"
        "-x"
        "assembler-with-cpp"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC12-16F1xxx_DFP/1.2.63/xc8"
        "-fno-short-double"
        "-fno-short-float"
        "-O0"
        "-fasmfile"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-Wa,-a"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-osccal"
        "-moscval=0x3400"
        "-mno-resetbits"
        "-mno-save-resetbits"
        "-mno-download"
        "-mno-stackcall"
        "-mdefault-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto:auto:auto")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__16F1936__"
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../..")
endfunction()
function(TOYOTA_TX_V2_default_default_XC8_compile_rule target)
    set(options
        "-c"
        "${MP_EXTRA_CC_PRE}"
        "-mcpu=16F1936"
        "${DEBUGGER_NAME}"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC12-16F1xxx_DFP/1.2.63/xc8"
        "-fno-short-double"
        "-fno-short-float"
        "-O0"
        "-fasmfile"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-Wa,-a"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-osccal"
        "-moscval=0x3400"
        "-mno-resetbits"
        "-mno-save-resetbits"
        "-mno-download"
        "-mno-stackcall"
        "-mdefault-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto:auto:auto")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__16F1936__"
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../..")
endfunction()
function(TOYOTA_TX_V2_default_link_rule target)
    set(options
        "-Wl,-Map=mem.map"
        "${MP_EXTRA_LD_PRE}"
        "-mcpu=16F1936"
        "${DEBUGGER_NAME}"
        "-Wl,--defsym=__MPLAB_BUILD=1"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC12-16F1xxx_DFP/1.2.63/xc8"
        "-fno-short-double"
        "-fno-short-float"
        "-O0"
        "-fasmfile"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-Wa,-a"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-osccal"
        "-moscval=0x3400"
        "-mno-resetbits"
        "-mno-save-resetbits"
        "-mno-download"
        "-mno-stackcall"
        "-mdefault-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto:auto:auto"
        "-Wl,--memorysummary,memoryfile.xml")
    list(REMOVE_ITEM options "")
    target_link_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../..")
endfunction()
