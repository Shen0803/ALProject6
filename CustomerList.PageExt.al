pageextension 50101 "Customer List Extension" extends "Customer List"
{
    actions
    {
        addlast("&Customer")
        {
            action(ExportToXml)
            {
                Caption = 'Exposrt to XML';
                ApplicationArea = All;
                Image = XMLFile;
                
                trigger OnAction()
                var
                    CustomerXml: XmlPort "Customer XML";
                    OutStr: OutStream;
                    InStr: InStream;
                    TempBlob: Codeunit "Temp Blob";
                    FileName: Text;
                begin
                    TempBlob.CreateOutStream(OutStr);
                    CustomerXml.SetDestination(OutStr);
                    CustomerXml.Export();
                    TempBlob.CreateInStream(InStr);
                    FileName := 'Customers.xml';
                    File.DownloadFromStream(InStr,'Download','','',FileName)
                end;
            }
        }
    }
}