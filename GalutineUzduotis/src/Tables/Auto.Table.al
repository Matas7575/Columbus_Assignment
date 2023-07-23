table 50104 Auto
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Number; Code[20])
        {
            TableRelation = "No. Series";
        }
        field(2; Name; Text[20])
        {

        }
        field(3; MarkCode; Text[30])
        {
            Caption = 'Mark';
            TableRelation = AutoMark.CarCode;
        }
        field(4; Model; Text[50])
        {
            Caption = 'Model';
            TableRelation = AutoModel.ModelCode;
        }
        field(5; DOM; Date)
        {
            Caption = 'Date of Manufacture';
        }
        field(6; CivilInsuranceEndDate; Date)
        {
            Caption = 'Civil insurance end date';
        }
        field(7; MOT; Date)
        {
            Caption = 'Validity of the technical review end date';
        }
        field(8; LocationAdress; Text[100])
        {
            Caption = 'Location Address';
            TableRelation = Location.Address;
        }
        field(9; RentService; Text[100])
        {
            Caption = 'Rent service';
            TableRelation = Resource.Name;
        }
        field(10; RentPrice; Integer)
        {
            TableRelation = Resource."Usage (Price)";
            CalcFormula = count("Price List Line");
            Caption = 'Rent Price';
            Editable = false;
            FieldClass = FlowField;

        }

    }

    keys
    {
        key(PrimaryKey; Number)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
    //MarkSelection: Codeunit MarkSelection;



    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}