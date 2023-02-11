inherited frmBaseDBGrid: TfrmBaseDBGrid
  Width = 782
  Height = 556
  ExplicitWidth = 782
  ExplicitHeight = 556
  inherited IWFrameRegion: TIWRegion
    Left = -3
    Top = -3
    Width = 782
    Height = 452
    Align = alCustom
    OnCreate = IWFrameRegionCreate
    ExplicitLeft = -3
    ExplicitTop = -3
    ExplicitWidth = 782
    ExplicitHeight = 452
    DesignSize = (
      782
      452)
    object Grid: TIWDBGrid [0]
      Left = -1
      Top = -95
      Width = 780
      Height = 450
      Align = alCustom
      BorderColors.Color = clNone
      BorderColors.Light = clNone
      BorderColors.Dark = clNone
      BGColor = clNone
      BorderSize = 1
      BorderStyle = tfDefault
      Caption = 'Grid'
      CellPadding = 0
      CellSpacing = 0
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FrameBuffer = 40
      Lines = tlAll
      UseFrame = True
      UseSize = True
      ScrollToCurrentRow = True
      Columns = <>
      DataSource = DataSource
      FooterRowCount = 0
      FriendlyName = 'Grid'
      FromStart = True
      HighlightColor = clNone
      HighlightRows = False
      Options = [dgShowTitles]
      RefreshMode = rmAutomatic
      RowLimit = 0
      RollOver = True
      RowClick = True
      RollOverColor = clWebCRIMSON
      RowHeaderColor = clNone
      RowAlternateColor = clGradientActiveCaption
      RowCurrentColor = clWebGREEN
    end
    inherited btnSalvar: TIWGradButton
      Left = 86
      Top = 215
      Visible = False
      ExplicitLeft = 86
      ExplicitTop = 319
    end
    inherited btnCancelar: TIWGradButton
      Left = 312
      Top = 231
      Visible = False
      ExplicitLeft = 312
      ExplicitTop = 335
    end
  end
end
