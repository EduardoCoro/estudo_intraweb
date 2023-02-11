inherited frmListaProdutos: TfrmListaProdutos
  inherited IWFrameRegion: TIWRegion
    inherited Grid: TIWDBGrid
      Caption = 'Lista de Produtos'
      Columns = <
        item
          Alignment = taLeftJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          ShowHint = True
          VAlign = vaMiddle
          Visible = True
          Width = '20'
          Wrap = False
          RawText = False
          Css = ''
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'id_produto'
          LinkField = 'id_produto'
          OnClick = GridColumns0Click
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Size = 10
          Title.Font.Style = []
          Title.Header = False
          Title.Height = '0'
          Title.ShowHint = True
          Title.Text = 'C'#243'digo do produto'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
          Title.RawText = True
        end
        item
          Alignment = taLeftJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          ShowHint = True
          VAlign = vaMiddle
          Visible = True
          Width = '100'
          Wrap = False
          RawText = False
          Css = ''
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'nome'
          LinkField = 'id_produto'
          OnClick = GridColumns0Click
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Size = 10
          Title.Font.Style = []
          Title.Header = False
          Title.Height = '0'
          Title.ShowHint = True
          Title.Text = 'Nome do Produto'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
          Title.RawText = True
        end
        item
          Alignment = taLeftJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          ShowHint = True
          VAlign = vaMiddle
          Visible = True
          Width = '200'
          Wrap = False
          RawText = False
          Css = ''
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'descricao'
          LinkField = 'id_produto'
          OnClick = GridColumns0Click
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Size = 10
          Title.Font.Style = []
          Title.Header = False
          Title.Height = '0'
          Title.ShowHint = True
          Title.Text = 'Descri'#231#227'o'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
          Title.RawText = True
        end
        item
          Alignment = taLeftJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          ShowHint = True
          VAlign = vaMiddle
          Visible = True
          Width = '100'
          Wrap = False
          RawText = False
          Css = ''
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'pasta'
          LinkField = 'id_produto'
          OnClick = GridColumns0Click
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Size = 10
          Title.Font.Style = []
          Title.Header = False
          Title.Height = '0'
          Title.ShowHint = True
          Title.Text = 'Pasta para upload'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
          Title.RawText = True
        end
        item
          Alignment = taLeftJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          ShowHint = True
          VAlign = vaMiddle
          Visible = True
          Width = '100'
          Wrap = False
          RawText = False
          Css = ''
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'imagem'
          LinkField = 'id_produto'
          OnClick = GridColumns0Click
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Size = 10
          Title.Font.Style = []
          Title.Header = False
          Title.Height = '0'
          Title.ShowHint = True
          Title.Text = 'Imagem'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
          Title.RawText = True
        end>
      ExplicitHeight = 260
    end
  end
end
