if(CC_INSTALL_SENSORS_ANALYTICS_SDK)
	__install_directory_specif(${CMAKE_CURRENT_SOURCE_DIR}/include/ gmp)
	
	set(LIBS)
	set(DLLS)
	
	if(CC_BC_WIN)
		set(LIBS ${CMAKE_CURRENT_SOURCE_DIR}/lib/libgmp-10.lib
				)
		set(DLLS ${CMAKE_CURRENT_SOURCE_DIR}/lib/libgmp-10.dll
				)
	elseif(CC_BC_LINUX)
	else()
	endif()
	
	INSTALL(FILES ${LIBS} DESTINATION lib)
	INSTALL(FILES ${DLLS} DESTINATION bin)
endif()