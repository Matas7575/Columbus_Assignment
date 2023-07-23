page 50107 AutoRentHeader
{
    Caption = 'Auto rent header';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = AutoRentHeader;
    //AutoSplitKey = true;

    layout
    {
        area(Content)
        {


            Group(GroupName)
            {
                field(LineNum; Rec.LineNum)
                {
                    Editable = Rec.State = 'Open';
                }
                field(ClientNum; Rec.ClientNum)
                {
                    Editable = Rec.State = 'Open';
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
                    Editable = Rec.State = 'Open';
                }


                field(DateOfDocument; Rec.DateOfDocument)
                {
                    Editable = Rec.State = 'Open';
                }
                field(CarNum; Rec.CarNum)
                {
                    Editable = Rec.State = 'Open';
                }
                field(DateFrom; Rec.DateFrom)
                {
                    Editable = Rec.State = 'Open';
                }
                field(DateUntil; Rec.DateUntil)
                {
                    Editable = Rec.State = 'Open';
                }
                field(Total; Rec.Total)
                {
                    Editable = Rec.State = 'Open';
                }
                field(State; Rec.State)
                {

                }

            }
            part(LineParts; AutoRentLine)
            {
                SubPageLink = DocumentNum = field(LineNum);
            }
            part(Damages; AutoRentDamage)
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
                    Rec.State := 'Closed';
                end;
            }
            action(OpenState)
            {
                Caption = 'Change state to Open';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.State := 'Open';
                end;
            }
            action(ReturnCar)
            {
                Caption = 'Return car';
                //Image = Image::NewRecord;
                // RunObject = Page;
                // RunPageLink = "50109";
                trigger OnAction()
                var
                    //LinePage: Page AutoRentLine;
                    ReturnCode: Codeunit ReturnCar;
                begin
                    ReturnCode.TransferDataAndDelete(Rec.LineNum);
                end;

            }
        }
    }

    var
        Damage: text;
        isClosed: Boolean;
    //RentRec: Record AutoRentHeader;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if (Rec.State = 'Closed') then
            isClosed := true;
    end;

}