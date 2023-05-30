pageextension 50110 "Item Card Picture Extension" extends "Item Card"
{
    layout
    {
        
    }
    
    actions
    {
        addlast("Functions")
        {
            action(ImportItemPicture)
            {
                Caption = 'Import Item Picture';
                ApplicationArea = All;
                Image = Import;

                trigger OnAction()
                    var ImageManagement : Codeunit "Image Management";
                begin
                    ImageManagement.ImportItemPicture(Rec);                
                end;
            }
        }
    }
}