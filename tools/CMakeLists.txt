add_llvm_executable(linalgtox-opt linalgtox-opt.cpp)

install(TARGETS linalgtox-opt
EXPORT LinalgToXTargets
RUNTIME DESTINATION ${LLVM_TOOLS_INSTALL_DIR}
COMPONENT linalgtox-opt)

get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)

target_link_libraries(linalgtox-opt PRIVATE
  MLIROptLib
  LinalgToX
  ${dialect_libs}
  ${conversion_libs}
)
