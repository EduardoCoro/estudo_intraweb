inherited frmUploadRelease: TfrmUploadRelease
  DesignLeft = 8
  DesignTop = 8
  inherited rgPanel: TIWRegion
    inherited irBarraTopo: TIWRegion
      inherited lblTituloJanela: TIWLabel
        Width = 209
        Caption = 'Upload de Novo Release para %s'
        ExplicitWidth = 209
      end
      object btnConfirma: TIWGradButton
        Left = 15
        Top = 52
        Width = 150
        Height = 37
        Hint = 'Clique aqui para confirmar o upload'
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
        Caption = 'Confirma Upload'
        Color = clBtnFace
        Font.Color = clNone
        Font.Enabled = False
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'btnClientes'
        TabOrder = 1
        OnClick = btnConfirmaClick
      end
    end
    inherited irAreaTrabalho: TIWRegion
      object IWFileUploader1: TIWFileUploader
        Left = 48
        Top = 128
        Width = 400
        Height = 60
        TabOrder = 0
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
    end
  end
end
