inherited frmMainForm: TfrmMainForm
  Width = 1207
  Height = 661
  ExplicitWidth = 1207
  ExplicitHeight = 661
  PixelsPerInch = 96
  DesignLeft = 2
  DesignTop = 2
  object rgnSideBar: TIWRegion [0]
    Left = 0
    Top = 0
    Width = 201
    Height = 661
    RenderInvisibleControls = True
    Align = alLeft
    ExplicitHeight = 844
    object lnkViewFishList: TIWLink
      Left = 10
      Top = 16
      Width = 145
      Height = 17
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      HasTabOrder = True
      DoSubmitValidation = False
      FriendlyName = 'lnkViewFishList'
      OnAsyncClick = lnkViewFishListAsyncClick
      TabOrder = -1
      RawText = False
      Caption = 'Fish List'
    end
    object lnkViewRandomImage: TIWLink
      Left = 10
      Top = 48
      Width = 145
      Height = 17
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      HasTabOrder = True
      DoSubmitValidation = False
      FriendlyName = 'lnkViewRandomImage'
      OnAsyncClick = lnkViewRandomImageAsyncClick
      TabOrder = -1
      RawText = False
      Caption = 'View Random Image'
    end
    object lnkViewAllFishImages: TIWLink
      Left = 10
      Top = 81
      Width = 177
      Height = 17
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      HasTabOrder = True
      DoSubmitValidation = False
      FriendlyName = 'lnkViewAllFishImages'
      OnAsyncClick = lnkViewAllFishImagesAsyncClick
      TabOrder = -1
      RawText = False
      Caption = 'View All Fish Images'
    end
  end
  object rgnMain: TIWRegion [1]
    Left = 201
    Top = 0
    Width = 1006
    Height = 661
    RenderInvisibleControls = True
    Align = alClient
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    ExplicitLeft = 193
    ExplicitHeight = 844
  end
  inherited IWTP: TIWTemplateProcessorHTML
    Templates.Default = 'MainForm.html'
    Left = 144
    Top = 104
  end
end
