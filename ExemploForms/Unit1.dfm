object frmVermelho: TfrmVermelho
  Left = 0
  Top = 0
  Width = 695
  Height = 400
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  BGColor = clWebTOMATO
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWRegion1: TIWRegion
    Left = 336
    Top = 0
    Width = 359
    Height = 400
    Cursor = crAuto
    RenderInvisibleControls = False
    Align = alRight
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderOptions.NumericWidth = 5
    BorderOptions.BorderWidth = cbwThin
    BorderOptions.Style = cbsDotted
    BorderOptions.Color = clMenuHighlight
    Color = clNone
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = True
    object IWButton1: TIWButton
      Left = 16
      Top = 13
      Width = 113
      Height = 65
      Cursor = crAuto
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Voltar'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWButton1'
      ScriptEvents = <>
      TabOrder = 0
      OnClick = IWButton1Click
    end
    object IWMemo1: TIWMemo
      Left = 152
      Top = 13
      Width = 161
      Height = 225
      Cursor = crAuto
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BGColor = clNone
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      InvisibleBorder = False
      HorizScrollBar = False
      VertScrollBar = True
      Required = False
      TabOrder = 1
      SubmitOnAsyncEvent = True
      FriendlyName = 'IWMemo1'
    end
  end
  object IWRegion2: TIWRegion
    Left = 0
    Top = 0
    Width = 336
    Height = 400
    Cursor = crAuto
    RenderInvisibleControls = False
    Align = alClient
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = clWebCORAL
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = True
    ExplicitLeft = 128
    ExplicitTop = 152
    ExplicitWidth = 60
    ExplicitHeight = 60
  end
end