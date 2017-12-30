
macro(sfml_export_targets)
	# CMAKE_CURRENT_LIST_DIR or CMAKE_CURRENT_SOURCE_DIR not usable for files that are to be included like this one
	set(CURRENT_DIR "${PROJECT_SOURCE_DIR}/cmake/export")

	include(CMakePackageConfigHelpers)
	write_basic_package_version_file("${CMAKE_CURRENT_BINARY_DIR}/SFMLConfigVersion.cmake"
	                                 VERSION ${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}
	                                 COMPATIBILITY SameMajorVersion)

	export(EXPORT SFMLConfigExport
	       FILE "${CMAKE_CURRENT_BINARY_DIR}/SFMLTargets.cmake")

	configure_file("${CURRENT_DIR}/SFMLConfig.cmake"
	  "${CMAKE_CURRENT_BINARY_DIR}/SFMLConfig.cmake"
	  COPYONLY)

	set(ConfigPackageLocation lib/cmake/SFML)
	install(EXPORT SFMLConfigExport
	        FILE SFMLTargets.cmake
	        DESTINATION ${ConfigPackageLocation})

	install(FILES "${CURRENT_DIR}/SFMLConfig.cmake" "${CMAKE_CURRENT_BINARY_DIR}/SFMLConfigVersion.cmake"
	        DESTINATION ${ConfigPackageLocation}
	        COMPONENT Devel)
endmacro()
