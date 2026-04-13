
if (NOT TARGET Qt5::uic)
    add_executable(Qt5::uic IMPORTED)

    set(imported_location "/home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/bin/uic")
    _qt5_Widgets_check_file_exists(${imported_location})

    set_target_properties(Qt5::uic PROPERTIES
        IMPORTED_LOCATION ${imported_location}
    )
endif()

if (QT5_STRICT_PLUGIN_GLOB OR Qt5Widgets_STRICT_PLUGIN_GLOB)
    include("${CMAKE_CURRENT_LIST_DIR}/Qt5Widgets_AccessibleFactory.cmake" OPTIONAL)
endif()
set(Qt5Widgets_UIC_EXECUTABLE Qt5::uic)

# Create versionless tool targets.
foreach(__qt_tool uic)
    if(NOT "${QT_NO_CREATE_VERSIONLESS_TARGETS}" AND NOT TARGET Qt::${__qt_tool}
       AND TARGET Qt5::${__qt_tool})
        add_executable(Qt::${__qt_tool} IMPORTED)
        get_target_property(__qt_imported_location Qt5::${__qt_tool} IMPORTED_LOCATION)
        set_target_properties(Qt::${__qt_tool}
                              PROPERTIES IMPORTED_LOCATION "${__qt_imported_location}")
    endif()
endforeach()
