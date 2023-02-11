inherited frmFishImage: TfrmFishImage
  Width = 960
  Height = 674
  ExplicitWidth = 960
  ExplicitHeight = 674
  PixelsPerInch = 96
  inherited IWFrameRegion: TIWRegion
    Width = 960
    Height = 674
    ExplicitWidth = 960
    ExplicitHeight = 674
    object IWFishImage: TIWImageFile
      Left = 24
      Top = 128
      Width = 841
      Height = 522
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = False
      StyleRenderOptions.RenderFont = False
      StyleRenderOptions.RenderAbsolute = False
      StyleRenderOptions.RenderPadding = False
      StyleRenderOptions.RenderBorder = False
      BorderOptions.Width = 0
      UseSize = False
      Cacheable = True
      FriendlyName = 'IWFishImage'
    end
    object btnClose: TIWButton
      Left = 32
      Top = 32
      Width = 120
      Height = 30
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = False
      StyleRenderOptions.RenderFont = False
      StyleRenderOptions.RenderAbsolute = False
      StyleRenderOptions.RenderPadding = False
      StyleRenderOptions.RenderBorder = False
      Caption = 'Close'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'btnClose'
      OnAsyncClick = btnCloseAsyncClick
    end
  end
  inherited IWTP: TIWTemplateProcessorHTML
    Templates.Default = 'FishImage.html'
  end
end
