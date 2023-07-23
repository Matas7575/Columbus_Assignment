report 50100 MyReport
{
    Caption = 'Auto rent report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(AutoData; Auto)
        {
            column(CarNumber; Number)
            {

            }
            column(CarMark; Mark)
            {

            }
            column(CarModel; Model)
            {

            }
            dataitem(RentDataHeader; AutoRentHeader)
            {
                column(DatePeriod; myDate)
                {

                }
                column(ClientNumCtrl; ClientNum)
                {

                }

            }
        }

    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Name; myDate)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'AutoRentReport.rdl';
        }
    }
    trigger OnInitReport()
    begin
        myDate := RentDataHeader.DateUntil - RentDataHeader.DateFrom;
    end;

    var
        myDate: Integer;
}