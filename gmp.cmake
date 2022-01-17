# Find gmp
# This sets the following variables:
# gmp target

set(gmp_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/include/)

if(WIN32)
	set(gmp_LIBRARIES_DEBUG ${CMAKE_CURRENT_LIST_DIR}/lib/libgmp-10.lib)
	set(gmp_LIBRARIES_RELEASE ${CMAKE_CURRENT_LIST_DIR}/lib/libgmp-10.lib)
			
	set(gmp_LOC_DEBUG ${CMAKE_CURRENT_LIST_DIR}/lib/libgmp-10.dll)
	set(gmp_LOC_RELEASE ${CMAKE_CURRENT_LIST_DIR}/lib/libgmp-10.dll)
else()
endif()

message("gmp_INCLUDE_DIRS  ${gmp_INCLUDE_DIRS}")
message("gmp_LIBRARIES_DEBUG  ${gmp_LIBRARIES_DEBUG}")
message("gmp_LIBRARIES_RELEASE  ${gmp_LIBRARIES_RELEASE}")

if(gmp_INCLUDE_DIRS AND gmp_LIBRARIES_DEBUG AND gmp_LIBRARIES_RELEASE)
	__import_target(gmp dll)
endif()