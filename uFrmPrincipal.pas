unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    pnlFundo: TPanel;
    pnlBotoes: TPanel;
    btnGerar: TSpeedButton;
    btnFechar: TSpeedButton;
    pnlMemo: TPanel;
    mmoEtl: TMemo;
    lblTabelaOriginal: TLabel;
    lblColunasOriginal: TLabel;
    lblTabelaDestino: TLabel;
    lblColunasDestino: TLabel;
    lblNomeCursor: TLabel;
    edtTabelaOriginal: TEdit;
    edtColunasOrigem: TEdit;
    edtColunasDestino: TEdit;
    edtTabelaDestino: TEdit;
    edtNomeCursor: TEdit;
    procedure btnGerarClick(Sender: TObject);
    procedure edtAtalho(Sender: TObject; var Key: Char);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.btnGerarClick(Sender: TObject);
begin
  mmoEtl.Text := '';
  mmoEtl.Lines.Add('CREATE OR REPLACE FUNCTION PROC_DIM_'+edtNomeCursor.Text+'() RETURNS VOID AS $$');
  mmoEtl.Lines.Add('DECLARE V_LINHA record;');
  mmoEtl.Lines.Add('');
  mmoEtl.Lines.Add('DECLARE CUR_GET_'+edtNomeCursor.Text+' CURSOR FOR');
  mmoEtl.Lines.Add('SELECT');
  mmoEtl.Lines.Add(StringReplace(edtColunasOrigem.Text, ',', ',' + #10#13, [rfIgnoreCase]));
  mmoEtl.Lines.Add('FROM ' + edtTabelaOriginal.Text + ' ORIGEM');
  mmoEtl.Lines.Add('WHERE NOT EXISTS (SELECT ' + edtColunasDestino.Text + ' FROM ' + edtTabelaDestino.Text + ')');
  mmoEtl.Lines.Add('');
  mmoEtl.Lines.Add('BEGIN');
  mmoEtl.Lines.Add(' OPEN CUR_GET_'+edtNomeCursor.Text+'; ');
  mmoEtl.Lines.Add(' LOOP');
  mmoEtl.Lines.Add('    FETCH CUR_GET_'+edtNomeCursor.Text+' INTO V_LINHA; ');
  mmoEtl.Lines.Add('    EXIT WHEN V_LINHA IS NULL;');
  mmoEtl.Lines.Add('    RAISE NOTICE ''REGISTRO %'', V_LINHA;');
  mmoEtl.Lines.Add('    INSERT INTO ' + edtTabelaDestino.Text );
  mmoEtl.Lines.Add('   (' + edtColunasDestino.Text + ') VALUES V_LINHA.' + StringReplace(edtColunasOrigem.Text, ', ', ', V_LINHA.', [rfIgnoreCase]));
  mmoEtl.Lines.Add(' END LOOP; ');
  mmoEtl.Lines.Add(' CLOSE CUR_GET_'+edtNomeCursor.Text+'; ');
  mmoEtl.Lines.Add('END;');
  mmoEtl.Lines.Add('$$ LANGUAGE PLPGSQL;');
end;

procedure TFrmPrincipal.edtAtalho(Sender: TObject;
  var Key: Char);
begin
  if Key = #$D then
    btnGerarClick(nil);
end;

end.
