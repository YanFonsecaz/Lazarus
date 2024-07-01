unit CadCategoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ZConnection, CadModelo;

type

  { TCadCategoriaF }

  TCadCategoriaF = class(TCadModeloF)
    dsCategoria: TDataSource;
    edtDescricaoDoProduto: TEdit;
    edtID: TEdit;
    lbID: TLabel;
    lbDescricao: TLabel;
    Panel4: TPanel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFechaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public

  end;

var
  CadCategoriaF: TCadCategoriaF;

implementation

{$R *.lfm}

{ TCadCategoriaF }

procedure TCadCategoriaF.btnFechaClick(Sender: TObject);
begin
  Close;
end;

procedure TCadCategoriaF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  CloseAction:=caFree;
end;

procedure TCadCategoriaF.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.

