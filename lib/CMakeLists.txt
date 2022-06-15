add_mlir_library(LinalgToX
    LinalgToX.cpp

    LINK_COMPONENTS
    Core

    LINK_LIBS PUBLIC
    MLIRIR
    MLIRSupport
)
