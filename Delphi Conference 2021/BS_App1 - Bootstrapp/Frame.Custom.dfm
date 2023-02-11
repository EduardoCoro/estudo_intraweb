object frmCustomFrame: TfrmCustomFrame
  Left = 0
  Top = 0
  Width = 343
  Height = 169
  TabOrder = 0
  PixelsPerInch = 96
  object IWFrameRegion: TIWRegion
    Left = 0
    Top = 0
    Width = 343
    Height = 169
    RenderInvisibleControls = True
    Align = alClient
    LayoutMgr = IWTP
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
  end
  object IWTP: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Left = 96
    Top = 72
  end
end
