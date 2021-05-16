import winim/lean

proc GetCurrentDesktopNumber*(): cint {.importc, dynlib: "VirtualDesktopAccessor.dll".}
proc GoToDesktopNumber*(number: cint) {.importc, dynlib: "VirtualDesktopAccessor.dll".}
proc MoveWindowToDesktopNumber*(window: HWND, number: cint): BOOL {.importc, dynlib: "VirtualDesktopAccessor.dll".}
proc CreateVirtualDesktop*(): cint {.importc, dynlib: "VirtualDesktopAccessor.dll".}
proc RemoveVirtualDesktop*(number, fallbackDesktop: cint): bool {.importc, dynlib: "VirtualDesktopAccessor.dll".}
