page 50111 FinishedAutoRentHeader
{
    Caption = 'Finished Auto Rent Header';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = FinishedAutoRentHeader;

    layout
    {
        area(Content)
        {

            Group(GroupName)
            {
                field(LineNum; Rec.LineNum)
                {
                    Editable = false;
                }
                field(ClientNum; Rec.ClientNum)
                {
                    Editable = false;
                    trigger OnValidate()
                    var
                        CustomerRec: Record Customer;
                        CustomerLedgerRec: Record "Cust. Ledger Entry";
                    begin
                        //ItemRec.deb

                        CustomerLedgerRec.SetFilter(CustomerLedgerRec."Customer No.", '=%1', Rec.ClientNum);
                        if (not (CustomerLedgerRec."Debit Amount" = 0)) then begin
                            Error('Customer has debt');
                        end;
                        if (CustomerRec.IsBlocked()) then begin
                            Error('This customer is blocked');
                        end;
                    end;
                }
                field(DriversLicense; Rec.DriversLicense)
                {
                    Editable = false;
                }


                field(DateOfDocument; Rec.DateOfDocument)
                {
                    Editable = false;
                }
                field(CarNum; Rec.CarNum)
                {
                    Editable = false;
                }
                field(DateFrom; Rec.DateFrom)
                {
                    Editable = false;
                }
                field(DateUntil; Rec.DateUntil)
                {
                    Editable = false;
                }
                field(Total; Rec.Total)
                {
                    Editable = false;
                }

            }
            part(LineParts; FinishedAutoRentLine)
            {
                SubPageLink = DocumentNum = field(LineNum);
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CloseState)
            {
                Caption = 'Change state to closed';
                ApplicationArea = All;

                trigger OnAction()
                begin
                end;
            }
            // action(OpenState)
            // {
            //     Caption = 'Change state to Open';
            //     ApplicationArea = All;

            //     trigger OnAction()
            //     begin
            //         Rec.State := 'Open';
            //     end;
            // }
        }
    }

    var
        myInt: Integer;
        isClosed: Boolean;
    //RentRec: Record AutoRentHeader;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin

    end;

}