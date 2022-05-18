//All the tween functions

/// @description  EaseInBack(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInBack
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInBack(argument0, argument1, argument2, argument3) { 
	var _s = 1.70158;

	argument0 /= argument3;
	return argument2 * argument0 * argument0 * ((_s + 1) * argument0 - _s) + argument1;
}

/// @description  EaseInBounce(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInBounce
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInBounce(argument0, argument1, argument2, argument3) { 
	return argument2 - EaseOutBounce(argument3 - argument0, 0, argument2, argument3) + argument1
}

/// @description  EaseInOutQuart(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInOutQuart
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInOutQuart(argument0, argument1, argument2, argument3) { 

	argument0 /= argument3 * 0.5;

	if (argument0 < 1) 
	{
	    return argument2 * 0.5 * power(argument0, 4) + argument1;
	}

	return argument2 * -0.5 * (power(argument0 - 2, 4) - 2) + argument1;

}

/// @description  EaseInCirc(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInCirc
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInCirc(argument0, argument1, argument2, argument3) { 
	argument0 /= argument3;
	return argument2 * (1 - sqrt(1 - argument0 * argument0)) + argument1;
}

/// @description  EaseInCubic(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInCubic
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInCubic(argument0, argument1, argument2, argument3) { 
	return argument2 * power(argument0/argument3, 3) + argument1;
}


/// @description  EaseInElastic(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInElastic
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInElastic(argument0, argument1, argument2, argument3) { 
var _s = 1.70158;
	var _p = 0;
	var _a = argument2;

	if (argument0 == 0 || _a == 0) 
	{
	    return argument1; 
	}

	argument0 /= argument3;

	if (argument0 == 1) 
	{
	    return argument1+argument2; 
	}

	if (_p == 0) 
	{
	    _p = argument3*0.3;
	}

	if (_a < abs(argument2)) 
	{ 
	    _a = argument2; 
	    _s = _p*0.25; 
	}
	else
	{
	    _s = _p / (2 * pi) * arcsin (argument2 / _a);
	}

	return -(_a * power(2,10 * (--argument0)) * sin((argument0 * argument3 - _s) * (2 * pi) / _p)) + argument1;

}

/// @description  EaseInExpo(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInExpo
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInExpo(argument0, argument1, argument2, argument3) { 
	return argument2 * power(2, 10 * (argument0 / argument3 - 1)) + argument1;
}

/// @description  EaseInOutBack(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInOutBack
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInOutBack(argument0, argument1, argument2, argument3) { 

	var _s = 1.70158;

	argument0 = argument0/argument3*2

	if (argument0 < 1)
	{
	    _s *= 1.525;
	    return argument2 * 0.5 * (argument0 * argument0 * ((_s + 1) * argument0 - _s)) + argument1;
	}

	argument0 -= 2;
	_s *= 1.525

	return argument2 * 0.5 * (argument0 * argument0 * ((_s + 1) * argument0 + _s) + 2) + argument1;
}

/// @description  EaseInOutBounce(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInOutBounce
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInOutBounce(argument0, argument1, argument2, argument3) { 

	if (argument0 < argument3*0.5) 
	{
	    return (EaseInBounce(argument0*2, 0, argument2, argument3)*0.5 + argument1);
	}

	return (EaseOutBounce(argument0*2 - argument3, 0, argument2, argument3)*0.5 + argument2*0.5 + argument1);

}

/// @description  EaseInOutCirc(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInOutCirc
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInOutCirc(argument0, argument1, argument2, argument3) { 

	argument0 /= argument3 * 0.5;

	if (argument0 < 1)
	{
	    return argument2 * 0.5 * (1 - sqrt(1 - argument0 * argument0)) + argument1;
	}

	argument0 -= 2;
	return argument2 * 0.5 * (sqrt(1 - argument0 * argument0) + 1) + argument1;
}

/// @description  EaseInOutCubic(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInOutCubic
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInOutCubic(argument0, argument1, argument2, argument3) { 

	argument0 /= argument3 * 0.5;

	if (argument0 < 1)
	{
	   return argument2 * 0.5 * power(argument0, 3) + argument1;
	}

	return argument2 * 0.5 * (power(argument0 - 2, 3) + 2) + argument1;

}

/// @description  EaseInOutElastic(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInOutElastic
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInOutElastic(argument0, argument1, argument2, argument3) { 

	var _s = 1.70158;
	var _p = 0;
	var _a = argument2;

	if (argument0 == 0 || _a == 0)
	{
	    return argument1;
	}

	argument0 /= argument3*0.5;

	if (argument0 == 2)
	{
	    return argument1+argument2; 
	}

	if (_p == 0)
	{
	    _p = argument3 * (0.3 * 1.5);
	}

	if (_a < abs(argument2)) 
	{ 
	    _a = argument2; 
	    _s = _p * 0.25; 
	}
	else
	{
	    _s = _p / (2 * pi) * arcsin (argument2 / _a);
	}

	if (argument0 < 1)
	{
	    return -0.5 * (_a * power(2, 10 * (--argument0)) * sin((argument0 * argument3 - _s) * (2 * pi) / _p)) + argument1;
	}

	return _a * power(2, -10 * (--argument0)) * sin((argument0 * argument3 - _s) * (2 * pi) / _p) * 0.5 + argument2 + argument1;

}

/// @description  EaseInOutExpo(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInOutExpo
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInOutExpo(argument0, argument1, argument2, argument3) { 

	argument0 /= argument3 * 0.5;

	if (argument0 < 1) 
	{
	    return argument2 * 0.5 * power(2, 10 * --argument0) + argument1;
	}

	return argument2 * 0.5 * (-power(2, -10 * --argument0) + 2) + argument1;

}

/// @description  EaseInOutQuad(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInOutQuad
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInOutQuad(argument0, argument1, argument2, argument3) { 

	argument0 /= argument3 * 0.5;

	if (argument0 < 1)
	{
	    return argument2 * 0.5 * argument0 * argument0 + argument1;
	}

	return argument2 * -0.5 * (--argument0 * (argument0 - 2) - 1) + argument1;
}

/// @description  EaseInOutQuint(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInOutQuint
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInOutQuint(argument0, argument1, argument2, argument3) { 

argument0 /= argument3 * 0.5;

if (argument0 < 1)
{
    return argument2 * 0.5 * power(argument0, 5) + argument1;
}

return argument2 * 0.5 * (power(argument0 - 2, 5) + 2) + argument1;
}

/// EaseInOutSine(inputvalue,outputmin,outputmax,inputmax)

function EaseInOutSine(argument0, argument1, argument2, argument3) { 

	return argument2 * 0.5 * (1 - cos(pi * argument0 / argument3)) + argument1;

}

/// @description  EaseInQuad(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInQuad
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInQuad(argument0, argument1, argument2, argument3) { 

	argument0 /= argument3;
	return argument2 * argument0 * argument0 + argument1;

}

/// @description  EaseInQuart(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInQuart
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInQuart(argument0, argument1, argument2, argument3) { 

	return argument2 * power(argument0 / argument3, 4) + argument1;

}

/// @description  EaseInQuint(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInQuint
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInQuint(argument0, argument1, argument2, argument3) { 

	return argument2 * power(argument0 / argument3, 5) + argument1;

}

/// @description  EaseInSine(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseInSine
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseInSine(argument0, argument1, argument2, argument3) { 

	return argument2 * (1 - cos(argument0 / argument3 * (pi / 2))) + argument1;

}

/// @description  EaseLinear(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseLinear
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseLinear(argument0, argument1, argument2, argument3) { 

	return argument2 * argument0 / argument3 + argument1;

}

/// @description  EaseOutBack(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseOutBack
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseOutBack(argument0, argument1, argument2, argument3) { 

	var _s = 1.70158;

	argument0 = argument0/argument3 - 1;
	return argument2 * (argument0 * argument0 * ((_s + 1) * argument0 + _s) + 1) + argument1;

}

/// @description  EaseOutBounce(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseOutBounce
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseOutBounce(argument0, argument1, argument2, argument3) { 

	argument0 /= argument3;

	if (argument0 < 1/2.75)
	{
	    return argument2 * 7.5625 * argument0 * argument0 + argument1;
	}
	else
	if (argument0 < 2/2.75)
	{
	    argument0 -= 1.5/2.75;
	    return argument2 * (7.5625 * argument0 * argument0 + 0.75) + argument1;
	}
	else
	if (argument0 < 2.5/2.75)
	{
	    argument0 -= 2.25/2.75;
	    return argument2 * (7.5625 * argument0 * argument0 + 0.9375) + argument1;
	}
	else
	{
	    argument0 -= 2.625/2.75;
	    return argument2 * (7.5625 * argument0 * argument0 + 0.984375) + argument1;
	}

}

/// @description  EaseOutCirc(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseOutCirc
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseOutCirc(argument0, argument1, argument2, argument3) { 

	argument0 = argument0 / argument3 - 1;
	return argument2 * sqrt(1 - argument0 * argument0) + argument1;

}

/// @description  EaseOutCubic(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseOutCubic
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseOutCubic(argument0, argument1, argument2, argument3) { 

	return argument2 * (power(argument0/argument3 - 1, 3) + 1) + argument1;

}

/// @description  EaseOutElastic(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseOutElastic
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseOutElastic(argument0, argument1, argument2, argument3) { 

	var _s = 1.70158;
	var _p = 0;
	var _a = argument2;

	if (argument0 == 0 || _a == 0)
	{
	    return argument1;
	}

	argument0 /= argument3;

	if (argument0 == 1)
	{
	    return argument1 + argument2;
	}

	if (_p == 0)
	{
	    _p = argument3 * 0.3;
	}

	if (_a < abs(argument2)) 
	{ 
	    _a = argument2;
	    _s = _p * 0.25; 
	}
	else 
	{
	    _s = _p / (2 * pi) * arcsin (argument2 / _a);
	}

	return _a * power(2, -10 * argument0) * sin((argument0 * argument3 - _s) * (2 * pi) / _p ) + argument2 + argument1;

}

/// @description  EaseOutExpo(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseOutExpo
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseOutExpo(argument0, argument1, argument2, argument3) { 

	return argument2 * (-power(2, -10 * argument0 / argument3) + 1) + argument1;

}

/// @description  EaseOutQuad(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseOutQuad
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseOutQuad(argument0, argument1, argument2, argument3) { 

	argument0 /= argument3;
	return -argument2 * argument0 * (argument0 - 2) + argument1;

}

/// @description  EaseOutQuart(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseOutQuart
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseOutQuart(argument0, argument1, argument2, argument3) { 

	return -argument2 * (power(argument0 / argument3 - 1, 4) - 1) + argument1;

}

/// @description  EaseOutQuint(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseOutQuint
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseOutQuint(argument0, argument1, argument2, argument3) { 

	return argument2 * (power(argument0 / argument3 - 1, 5) + 1) + argument1;

}

/// @description  EaseOutSine(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseOutSine
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax

function EaseOutSine(argument0, argument1, argument2, argument3) { 

	return argument2 * sin(argument0 / argument3 * (pi / 2)) + argument1;

}