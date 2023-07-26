report 50810 "CCAM RC Invoice"
{
    ApplicationArea = All;
    Caption = 'CCAM RC Invoice';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'CCAM.rdlc';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            column(No_; "No.") { }
            column(Bill_to_Address; "Bill-to Address") { }
            column(Bill_to_Address_2; "Bill-to Address 2") { }
            column(Bill_to_Contact_No_; "Bill-to Contact No.") { }
            column(picture; CompanyInformation_lRec.Picture) { }
            column(Address; CompanyInformation_lRec.Address) { }
            column(Address2; CompanyInformation_lRec."Address 2") { }
            column(Name; CompanyInformation_lRec.Name) { }


        }
        dataitem("Sales Line"; "Sales Line")
        {

            column(Item_No; "No.") { }
            column(Qty__Invoiced__Base_; "Qty. Invoiced (Base)") { }
            column(Amount; Amount) { }

        }


    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    trigger OnPreReport()
    begin
        CompanyInformation_lRec.get;
        CompanyInformation_lRec.CalcFields(Picture);
    end;

    var
        CompanyInformation_lRec: Record "Company Information";

}
