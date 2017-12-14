package com.ecommerce.utils;

public class Utility {
	
	public boolean numberOrNot(String input)
	{
	    try
	    {
	        Integer.parseInt(input);
	    }
	    catch(NumberFormatException ex)
	    {
	        return false;
	    }
	    return true;
	}
	
}
