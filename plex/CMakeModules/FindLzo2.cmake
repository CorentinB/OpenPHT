# - Try to find LZO2
# Once done this will define
#
#  LZO2_FOUND - system has LZO2
#  LZO2_INCLUDE_DIR - the LZO2 include directory
#  LZO2_LIBRARIES - Link these to use LZO2
#  LZO2_DEFINITIONS - Compiler switches required for using LZO2
#  LZO2_NEED_PREFIX - this is set if the functions are prefixed with BZ2_

# Copyright (c) 2006, Alexander Neundorf, <neundorf@kde.org>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.


IF (LZO2_INCLUDE_DIR AND LZO2_LIBRARIES)
    SET(LZO2_FIND_QUIETLY TRUE)
ENDIF (LZO2_INCLUDE_DIR AND LZO2_LIBRARIES)

FIND_PATH(LZO2_INCLUDE_DIR lzo1x.h PATH_SUFFIXES lzo)

FIND_LIBRARY(LZO2_LIBRARIES NAMES lzo2)

IF (LZO2_INCLUDE_DIR AND LZO2_LIBRARIES)
   SET(LZO2_FOUND TRUE)
#   INCLUDE(CheckLibraryExists)
#   CHECK_LIBRARY_EXISTS(${LZO2_LIBRARIES} BZ2_bzCompressInit "" LZO2_NEED_PREFIX)
ELSE (LZO2_INCLUDE_DIR AND LZO2_LIBRARIES)
   SET(LZO2_FOUND FALSE)
ENDIF (LZO2_INCLUDE_DIR AND LZO2_LIBRARIES)

IF (LZO2_FOUND)
  IF (NOT LZO2_FIND_QUIETLY)
    MESSAGE(STATUS "Found LZO2: ${LZO2_LIBRARIES}")
  ENDIF (NOT LZO2_FIND_QUIETLY)
ELSE (LZO2_FOUND)
  IF (LZO2_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could NOT find LZO2")
  ENDIF (LZO2_FIND_REQUIRED)
ENDIF (LZO2_FOUND)

MARK_AS_ADVANCED(LZO2_INCLUDE_DIR LZO2_LIBRARIES)

