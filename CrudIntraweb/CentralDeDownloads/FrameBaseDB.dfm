object frmBaseDB: TfrmBaseDB
  Left = 0
  Top = 0
  Width = 830
  Height = 511
  TabOrder = 0
  object IWFrameRegion: TIWRegion
    Left = 0
    Top = 0
    Width = 830
    Height = 511
    RenderInvisibleControls = True
    TabOrder = 0
    Align = alClient
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    DesignSize = (
      830
      511)
    object btnSalvar: TIWGradButton
      Left = 534
      Top = 463
      Width = 140
      Height = 36
      Anchors = [akRight, akBottom]
      Style.Border.Color = clWebGRAY
      Style.Border.Width = 1
      Style.BorderDisabled.Color = clWebGRAY
      Style.BorderDisabled.Width = 1
      Style.Button.Alignment = taCenter
      Style.Button.Font.Color = clWebWHITE
      Style.Button.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.Button.Font.Size = 10
      Style.Button.Font.Style = []
      Style.Button.FromColor = clWebLIGHTGRAY
      Style.Button.ToColor = 7368816
      Style.ButtonHover.Alignment = taCenter
      Style.ButtonHover.Font.Color = clWebWHITE
      Style.ButtonHover.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.ButtonHover.Font.Size = 10
      Style.ButtonHover.Font.Style = []
      Style.ButtonHover.FromColor = 5723991
      Style.ButtonHover.ToColor = 12237498
      Style.ButtonActive.Alignment = taCenter
      Style.ButtonActive.Font.Color = clWebWHITE
      Style.ButtonActive.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.ButtonActive.Font.Size = 10
      Style.ButtonActive.Font.Style = []
      Style.ButtonActive.FromColor = 7368816
      Style.ButtonActive.ToColor = clWebLIGHTGRAY
      Style.ButtonDisabled.Alignment = taCenter
      Style.ButtonDisabled.Font.Color = clWebWHITE
      Style.ButtonDisabled.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.ButtonDisabled.Font.Size = 10
      Style.ButtonDisabled.Font.Style = []
      Style.ButtonDisabled.FromColor = clWebLIGHTGRAY
      Style.ButtonDisabled.ToColor = 7368816
      Style.ColorScheme = csLightGray
      Style.BoxShadow.ColorTransparency = 0.500000000000000000
      Style.TextShadow.ColorTransparency = 0.500000000000000000
      Caption = 'Salvar'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'btnSalvar'
      TabOrder = 0
      OnAsyncClick = btnSalvarAsyncClick
      ExplicitLeft = 449
    end
    object btnCancelar: TIWGradButton
      Left = 680
      Top = 463
      Width = 140
      Height = 36
      Anchors = [akRight, akBottom]
      Style.Border.Color = clWebGRAY
      Style.Border.Width = 1
      Style.BorderDisabled.Color = clWebGRAY
      Style.BorderDisabled.Width = 1
      Style.Button.Alignment = taCenter
      Style.Button.Font.Color = clWebWHITE
      Style.Button.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.Button.Font.Size = 10
      Style.Button.Font.Style = []
      Style.Button.FromColor = clWebLIGHTGRAY
      Style.Button.ToColor = 7368816
      Style.ButtonHover.Alignment = taCenter
      Style.ButtonHover.Font.Color = clWebWHITE
      Style.ButtonHover.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.ButtonHover.Font.Size = 10
      Style.ButtonHover.Font.Style = []
      Style.ButtonHover.FromColor = 5723991
      Style.ButtonHover.ToColor = 12237498
      Style.ButtonActive.Alignment = taCenter
      Style.ButtonActive.Font.Color = clWebWHITE
      Style.ButtonActive.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.ButtonActive.Font.Size = 10
      Style.ButtonActive.Font.Style = []
      Style.ButtonActive.FromColor = 7368816
      Style.ButtonActive.ToColor = clWebLIGHTGRAY
      Style.ButtonDisabled.Alignment = taCenter
      Style.ButtonDisabled.Font.Color = clWebWHITE
      Style.ButtonDisabled.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.ButtonDisabled.Font.Size = 10
      Style.ButtonDisabled.Font.Style = []
      Style.ButtonDisabled.FromColor = clWebLIGHTGRAY
      Style.ButtonDisabled.ToColor = 7368816
      Style.ColorScheme = csLightGray
      Style.BoxShadow.ColorTransparency = 0.500000000000000000
      Style.TextShadow.ColorTransparency = 0.500000000000000000
      Caption = 'Cancelar'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'Cancela'
      TabOrder = 1
      ExplicitLeft = 595
    end
  end
  object DataSource: TDataSource
    Left = 224
    Top = 96
  end
end
