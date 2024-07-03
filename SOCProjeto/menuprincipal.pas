unit MenuPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, CadCategoria, CadClientes, RelClientes;

type

  { TMenuPrincipalF }

  TMenuPrincipalF = class(TForm)
    MainMenu1: TMainMenu;
    mnRelTesteCliente: TMenuItem;
    mnCategoriaR: TMenuItem;
    mnOrcamentoR: TMenuItem;
    mnProdutosR: TMenuItem;
    mnClienteR: TMenuItem;
    mnOrcamento: TMenuItem;
    mnUsuarios: TMenuItem;
    mnProdutos: TMenuItem;
    mnCategoria: TMenuItem;
    mnCliente: TMenuItem;
    mnSair: TMenuItem;
    mnSobre: TMenuItem;
    mnRelatorios: TMenuItem;
    mnVendas: TMenuItem;
    mnCadastrar: TMenuItem;
    procedure mnCategoriaClick(Sender: TObject);
    procedure mnClienteClick(Sender: TObject);
    procedure mnClienteRClick(Sender: TObject);
    procedure mnSairClick(Sender: TObject);
  private

  public

  end;

var
  MenuPrincipalF: TMenuPrincipalF;

implementation

{$R *.lfm}

{ TMenuPrincipalF }

procedure TMenuPrincipalF.mnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMenuPrincipalF.mnCategoriaClick(Sender: TObject);
begin
  CadCategoriaF:=TCadCategoriaF.Create(Self);
  CadCategoriaF.ShowModal;
end;

procedure TMenuPrincipalF.mnClienteClick(Sender: TObject);
begin
    CadClientesF:=TCadClientesF.Create(Self);
    CadClientesF.ShowModal;
end;

procedure TMenuPrincipalF.mnClienteRClick(Sender: TObject);
begin
    RelClientesF := TRelClientesF.Create(Self);
    RelClientesF.ShowModal;
end;

end.
