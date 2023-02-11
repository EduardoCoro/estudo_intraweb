inherited frmListaLicencas: TfrmListaLicencas
  DesignLeft = 8
  DesignTop = 8
  inherited rgPanel: TIWRegion
    inherited irBarraTopo: TIWRegion
      inherited lblTituloJanela: TIWLabel
        Width = 211
        Caption = 'Listagem de Licen'#231'as por Produto'
        ExplicitWidth = 211
      end
      object IWGradButton1: TIWGradButton
        Left = 463
        Top = 50
        Width = 140
        Height = 36
        Hint = 'Insira um novo cliente'
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
        Caption = 'Aplicar filtro'
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWGradButton1'
        TabOrder = 0
      end
      object IWGradButton3: TIWGradButton
        Left = 609
        Top = 50
        Width = 150
        Height = 36
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
        Caption = 'Voltar'
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWGradButton1'
        TabOrder = 1
        OnClick = IWGradButton3Click
      end
    end
  end
end
