page 50104 Auto
{

    Caption = 'Auto';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Auto;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Number; Rec.Number)
                {

                }
                field(Name; Rec.Name)
                {

                }
                // repeater(AutoList)
                // {
                field(MarkCode; Rec.MarkCode)
                {
                    ApplicationArea = All;
                    Caption = 'Mark Code';
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        ItemRec: Record AutoMark;
                    begin
                        ItemRec.Reset();
                        if Page.RunModal(Page::"AutoMark", ItemRec) = Action::LookupOK then
                            Rec.MarkCode := ItemRec.CarCode
                    end;
                    //MarkSelection.GetMarkData;
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                    Caption = 'Model';
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        ItemRec: Record AutoModel;
                        MarkRec: Record AutoMark;
                    begin
                        ItemRec.Reset();
                        MarkRec.CarCode := Rec.MarkCode;
                        ItemRec.SetFilter(MarkCode, Rec.MarkCode, MarkRec.CarCode);
                        if (MarkRec.CarCode = Rec.MarkCode) then
                            if Page.RunModal(Page::"AutoModel", ItemRec) = Action::LookupOK then
                                Rec.Model := ItemRec.ModelCode
                    end;
                }
                field(DOM; Rec.DOM)
                {

                }
                field(CivilInsuranceEndDate; Rec.CivilInsuranceEndDate)
                {

                }
                field(MOT; Rec.MOT)
                {

                }
                field(LocationCode; Rec.LocationAdress)
                {

                }
                field(RentService; Rec.RentService)
                {

                }
                field(RentPrice; Rec.RentPrice)
                {

                }
            }
        }
    }


    actions
    {
        area(Processing)
        {
            action(ReservationList)
            {
                ApplicationArea = All;
                Image = Open;
                Caption = 'Current Reservations';
                Promoted = true;
                trigger OnAction()
                var
                    ReservationRec: Record AutoReservation;
                    FilterDate: Date;
                begin
                    FilterDate := Today;
                    ReservationRec.SetFilter(BookedUntil, '<=%1', Today);
                    if Page.RunModal(Page::"AutoReservation", ReservationRec) = Action::LookupOK then;
                end;
            }

        }
    }

    var
        myInt: Integer;

}