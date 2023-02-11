object frmBase: TfrmBase
  Left = 0
  Top = 0
  Width = 1165
  Height = 914
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    1165
    914)
  DesignLeft = 8
  DesignTop = 8
  object rgPanel: TIWRegion
    Left = 96
    Top = 32
    Width = 1033
    Height = 849
    RenderInvisibleControls = True
    Anchors = []
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    object irBarraTopo: TIWRegion
      Left = 1
      Top = 1
      Width = 1031
      Height = 100
      RenderInvisibleControls = True
      Align = alTop
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = clMoneyGreen
      object IWHRule1: TIWHRule
        Left = -13
        Top = 38
        Width = 1000
        Height = 2
        FriendlyName = 'IWHRule1'
        BorderColor = clWebBLACK
      end
      object lblTituloJanela: TIWLabel
        Left = 15
        Top = 13
        Width = 79
        Height = 16
        Css = 'titulo'
        Font.Color = clNone
        Font.Enabled = False
        Font.Size = 10
        Font.Style = []
        NoWrap = True
        HasTabOrder = False
        FriendlyName = 'lblTituloJanela'
        Caption = 'Titulo Janela'
      end
    end
    object irAreaTrabalho: TIWRegion
      Left = 1
      Top = 101
      Width = 1031
      Height = 747
      RenderInvisibleControls = True
      Align = alClient
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = clGradientInactiveCaption
    end
  end
end
