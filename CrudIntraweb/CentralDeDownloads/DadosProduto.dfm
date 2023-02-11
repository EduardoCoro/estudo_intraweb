inherited frmDadosProduto: TfrmDadosProduto
  Width = 813
  Height = 589
  ExplicitWidth = 813
  ExplicitHeight = 589
  inherited IWFrameRegion: TIWRegion
    Left = 32
    Width = 781
    Height = 589
    Align = alCustom
    ExplicitLeft = 32
    ExplicitWidth = 781
    ExplicitHeight = 589
    object IWLabel1: TIWLabel [0]
      Left = 16
      Top = 8
      Width = 121
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      NoWrap = True
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'C'#243'digo do Produto:'
    end
    object IWDBEdit1: TIWDBEdit [1]
      Left = 16
      Top = 30
      Width = 369
      Height = 21
      StyleRenderOptions.RenderBorder = False
      Editable = False
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWDBEdit1'
      ReadOnly = True
      SubmitOnAsyncEvent = True
      TabOrder = 1
      AutoEditable = False
      DataField = 'id_produto'
      DataSource = DataSource
      PasswordPrompt = False
    end
    object IWLabel2: TIWLabel [2]
      Left = 16
      Top = 64
      Width = 114
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      NoWrap = True
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Nome do Produto:'
    end
    object IWDBEdit2: TIWDBEdit [3]
      Left = 16
      Top = 86
      Width = 369
      Height = 21
      StyleRenderOptions.RenderBorder = False
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWDBEdit1'
      SubmitOnAsyncEvent = True
      AutoEditable = False
      DataField = 'nome'
      DataSource = DataSource
      PasswordPrompt = False
    end
    object IWLabel3: TIWLabel [4]
      Left = 16
      Top = 128
      Width = 138
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      NoWrap = True
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Descri'#231#227'o do Produto:'
    end
    object IWLabel4: TIWLabel [5]
      Left = 16
      Top = 288
      Width = 195
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      NoWrap = True
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Pasta para upload de releases:'
    end
    object IWDBEdit4: TIWDBEdit [6]
      Left = 16
      Top = 310
      Width = 369
      Height = 21
      StyleRenderOptions.RenderBorder = False
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWDBEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 3
      AutoEditable = False
      DataField = 'pasta'
      DataSource = DataSource
      PasswordPrompt = False
    end
    object IWLabel5: TIWLabel [7]
      Left = 16
      Top = 344
      Width = 122
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      NoWrap = True
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Arquivo da imagem'
    end
    object IWDBEdit5: TIWDBEdit [8]
      Left = 16
      Top = 366
      Width = 369
      Height = 21
      StyleRenderOptions.RenderBorder = False
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWDBEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 4
      AutoEditable = False
      DataField = 'imagem'
      DataSource = DataSource
      PasswordPrompt = False
    end
    object IWDBMemo1: TIWDBMemo [9]
      Left = 16
      Top = 154
      Width = 592
      Height = 121
      StyleRenderOptions.RenderBorder = False
      BGColor = clNone
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      InvisibleBorder = False
      HorizScrollBar = False
      VertScrollBar = True
      Required = False
      TabOrder = 2
      SubmitOnAsyncEvent = True
      AutoEditable = False
      DataField = 'descricao'
      DataSource = DataSource
      FriendlyName = 'IWDBMemo1'
    end
    object IWFileUploader1: TIWFileUploader [10]
      Left = 16
      Top = 393
      Width = 369
      Height = 60
      TabOrder = 5
      TextStrings.DragText = 'Drop files here to upload'
      TextStrings.UploadButtonText = 'Upload a file'
      TextStrings.CancelButtonText = 'Cancel'
      TextStrings.UploadErrorText = 'Upload failed'
      TextStrings.MultipleFileDropNotAllowedText = 'You may only drop a single file'
      TextStrings.OfTotalText = 'of'
      TextStrings.RemoveButtonText = 'Remove'
      TextStrings.TypeErrorText = 
        '{file} has an invalid extension. Only {extensions} files are all' +
        'owed.'
      TextStrings.SizeErrorText = '{file} is too large, maximum file size is {sizeLimit}.'
      TextStrings.MinSizeErrorText = '{file} is too small, minimum file size is {minSizeLimit}.'
      TextStrings.EmptyErrorText = '{file} is empty, please select files again without it.'
      TextStrings.NoFilesErrorText = 'No files to upload.'
      TextStrings.OnLeaveWarningText = 
        'The files are being uploaded, if you leave now the upload will b' +
        'e cancelled.'
      Style.ButtonOptions.Alignment = taCenter
      Style.ButtonOptions.Font.Color = clWebWHITE
      Style.ButtonOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.ButtonOptions.Font.Size = 10
      Style.ButtonOptions.Font.Style = []
      Style.ButtonOptions.FromColor = clWebMAROON
      Style.ButtonOptions.ToColor = clWebMAROON
      Style.ButtonOptions.Height = 30
      Style.ButtonOptions.Width = 200
      Style.ButtonHoverOptions.Alignment = taCenter
      Style.ButtonHoverOptions.Font.Color = clWebWHITE
      Style.ButtonHoverOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.ButtonHoverOptions.Font.Size = 10
      Style.ButtonHoverOptions.Font.Style = []
      Style.ButtonHoverOptions.FromColor = 214
      Style.ButtonHoverOptions.ToColor = 214
      Style.ListOptions.Alignment = taLeftJustify
      Style.ListOptions.Font.Color = clWebBLACK
      Style.ListOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.ListOptions.Font.Size = 10
      Style.ListOptions.Font.Style = []
      Style.ListOptions.FromColor = clWebGOLD
      Style.ListOptions.ToColor = clWebGOLD
      Style.ListOptions.Height = 30
      Style.ListOptions.Width = 0
      Style.ListSuccessOptions.Alignment = taLeftJustify
      Style.ListSuccessOptions.Font.Color = clWebWHITE
      Style.ListSuccessOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.ListSuccessOptions.Font.Size = 10
      Style.ListSuccessOptions.Font.Style = []
      Style.ListSuccessOptions.FromColor = clWebFORESTGREEN
      Style.ListSuccessOptions.ToColor = clWebFORESTGREEN
      Style.ListErrorOptions.Alignment = taLeftJustify
      Style.ListErrorOptions.Font.Color = clWebWHITE
      Style.ListErrorOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.ListErrorOptions.Font.Size = 10
      Style.ListErrorOptions.Font.Style = []
      Style.ListErrorOptions.FromColor = clWebRED
      Style.ListErrorOptions.ToColor = clWebRED
      Style.DropAreaOptions.Alignment = taCenter
      Style.DropAreaOptions.Font.Color = clWebWHITE
      Style.DropAreaOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.DropAreaOptions.Font.Size = 10
      Style.DropAreaOptions.Font.Style = []
      Style.DropAreaOptions.FromColor = clWebDARKORANGE
      Style.DropAreaOptions.ToColor = clWebDARKORANGE
      Style.DropAreaOptions.Height = 60
      Style.DropAreaOptions.Width = 0
      Style.DropAreaActiveOptions.Alignment = taCenter
      Style.DropAreaActiveOptions.Font.Color = clWebWHITE
      Style.DropAreaActiveOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
      Style.DropAreaActiveOptions.Font.Size = 10
      Style.DropAreaActiveOptions.Font.Style = []
      Style.DropAreaActiveOptions.FromColor = clWebLIMEGREEN
      Style.DropAreaActiveOptions.ToColor = clWebLIMEGREEN
      Style.DropAreaActiveOptions.Height = 60
      Style.DropAreaActiveOptions.Width = 0
      ListVisible = False
      CssClasses.Strings = (
        'button='
        'button-hover='
        'drop-area='
        'drop-area-active='
        'drop-area-disabled='
        'list='
        'upload-spinner='
        'progress-bar='
        'upload-file='
        'upload-size='
        'upload-listItem='
        'upload-cancel='
        'upload-success='
        'upload-fail='
        'success-icon='
        'fail-icon=')
      OnAsyncUploadCompleted = IWFileUploader1AsyncUploadCompleted
      OnAsyncUploadSuccess = IWFileUploader1AsyncUploadSuccess
      FriendlyName = 'IWFileUploader1'
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
    end
    inherited btnSalvar: TIWGradButton
      Left = 478
      Top = 538
      TabOrder = 6
      ExplicitLeft = 510
      ExplicitTop = 538
    end
    inherited btnCancelar: TIWGradButton
      Left = 624
      Top = 538
      TabOrder = 7
      ExplicitLeft = 656
      ExplicitTop = 538
    end
    object IWImageFile1: TIWImageFile
      Left = 408
      Top = 310
      Width = 209
      Height = 195
      BorderOptions.Width = 0
      UseSize = True
      Cacheable = True
      FriendlyName = 'IWImageFile1'
    end
  end
end
