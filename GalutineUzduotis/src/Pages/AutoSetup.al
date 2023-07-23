page 50101 AutoSetup
{
    Caption = 'Auto Setup';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = AutoSetup;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(PrimaryKey; Rec.PrimaryKey)
                {

                }
                field("Car number plate"; Rec.CarPlates)
                {

                }
                field("Rental card"; Rec.RentalCard)
                {

                }
                field("Location of attachments"; Rec.LocationOfAttachments)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        PrimaryKey: Integer;
        CarPlates: Integer;
        RentalCard: Integer;

        LocationOfAttachments: Text;
}