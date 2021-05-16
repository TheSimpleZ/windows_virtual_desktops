import winim/lean

{.push importc, dynlib: "VirtualDesktopAccessor.dll".}
proc GetDesktopCount*(): cint
proc GetCurrentDesktopNumber*(): cint
proc GoToDesktopNumber*(number: cint)
proc MoveWindowToDesktopNumber*(window: HWND, number: cint): BOOL
proc CreateVirtualDesktop*(): cint
proc RemoveVirtualDesktop*(number, fallbackDesktop: cint): bool
{.pop.}
