pageextension 50810 "Sales Invoice Ext" extends "Sales Invoice"
{
    actions
    {
        addafter("F&unctions")
        {
            action("CCAM")
            {
                ApplicationArea = all;
                Image = Download;

                trigger OnAction()
                var
                    CCAMRCInvoice_lRep: Report "CCAM RC Invoice";
                begin
                    CCAMRCInvoice_lRep.RunModal();
                end;
            }
        }
    }
}
