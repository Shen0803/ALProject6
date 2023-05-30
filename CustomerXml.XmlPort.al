xmlport 50103 "Customer XML"
{
    Caption = 'Export Customers to XML';
    Direction = Export;
    Format = Xml;
    schema
    {
        textelement(Customers)
        {
            tableelement(Customer; Customer)
            {
                fieldattribute(Number; Customer."No.")
                {
                    
                }
                fieldattribute(LanguageCode; Customer."Language Code")
                {

                }
                fieldelement(Name; Customer.name)
                {

                }
                fieldelement(PhoneNumber; Customer."Phone No.")
                {

                }
                textelement(Address)
                {
                    fieldelement(Address; Customer.Address)
                    {

                    }
                    fieldelement(PostCode; Customer."Post Code")
                    {

                    }
                    fieldelement(City; Customer.City)
                    {

                    }
                }
            }
        }
    }
}