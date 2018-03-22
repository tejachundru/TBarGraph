# TBarGraph


The Is a Custom Class Which Subclass Of View, These Charts Can Generate the bar Graph In the Given View , 

You Can Give Custom Color To each Of the bar In by array Corresponding To the Values

If the Color Is Missing, It Goes For Default Color, Even if That Is Missing It Gives A blue colour.



Usage : 

Make Your view, through Interface Bulider or Programatically

------>   Change Class Of the View to "TBarGraph" <----------

That is Custom Which You take ...

Now
Values to Bar can Given As in 

If "yourView" is The View YOU ARE OPERATING THEN

GIve the Array of Value as
 
 ------> Required
 //For Values
 
        yourView.valuesArray = [45.65,95.23,45.85,86.56,45.62]



------> Optionals

// For Colors

        yourView.barColors = [UIColor.black,UIColor.green,UIColor.brown]
        

// For A default bar Color , In Case If You Need a Single Color Only

----> Default Color is applied To Bar , If  you miss Color In [barColors] array <-------


        yourView.defaultBarColor = UIColor.green
    
// For Color Of The Value Label That  is Displayed can be Given as

            yourView.barLabelColor = UIColor.black
    

The Bar Graph Can Seen Be During The Run Time , In Simulator Or Device
        







