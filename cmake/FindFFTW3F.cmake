#Find FFTW3F

find_path(FFTW3F_INCLUDE_DIR
    NAMES fftw3.h
    PATHS ${FFTW3F_INCLUDE_DIRS}
    )

find_library(FFTW3F_LIBRARIES
    NAMES fftw3f
    PATHS ${FFTW3F_LIBRARY_DIRS}
    )

set(FFTW3F_PROCESS_INCLUDES FFTW3F_INCLUDE_DIR)
set(FFTW3F_PROCESS_LIBS FFTW3F_LIBRARIES)
include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(FFTW3F DEFAULT_MSG
    FFTW3F_INCLUDE_DIR FFTW3F_LIBRARIES)