e_to_the_x_squared = @(x) exp(x^2);
e_x = linspace(0.6, 1, 5);
e_y = arrayfun(e_to_the_x_squared, e_x);
e_t = linspace(0.6, 1, 1000);

one_over_polynomial = @(x) 1 / (1 + 12 * x ^ 2);
one_x = linspace(-1, 1, 15);
one_y = arrayfun(one_over_polynomial, one_x);
one_t = linspace(-1, 1, 1000);

raw_data_x = [1994 1995 1996 1997 1998 1999 2000 2001 2002 2003]';
raw_data_y = [67.052 68.008 69.803 72.024 73.400 72.063 74.669 74.487 74.065 76.777]';
raw_t = linspace(1994, 2004, 1000);

% Interpolate e^x^2 with each of the 6 methods

F_e_vand = vandermonde(e_x, e_y);
t_e_vand = arrayfun(F_e_vand, e_t);

F_e_lagrange = lagrange(e_x, e_y);
t_e_lagrange = arrayfun(F_e_lagrange, e_t);

F_e_newton = newton(e_x, e_y);
t_e_newton = arrayfun(F_e_newton, e_t);

F_e_natural = natural(e_x, e_y);
t_e_natural = arrayfun(F_e_natural, e_t);

F_e_complete = complete(e_x, e_y);
t_e_complete = arrayfun(F_e_complete, e_t);

F_e_not_a_knot = not_a_knot(e_x, e_y);
t_e_not_a_knot = arrayfun(F_e_not_a_knot, e_t);

% Interpolate 1 / (12 + x^2) with each of the 6 methods

F_one_vand = vandermonde(one_x, one_y);
t_one_vand = arrayfun(F_one_vand, one_t);

F_one_lagrange = lagrange(one_x, one_y);
t_one_lagrange = arrayfun(F_one_lagrange, one_t);

F_one_newton = newton(one_x, one_y);
t_one_newton = arrayfun(F_one_newton, one_t);

F_one_natural = natural(one_x, one_y);
t_one_natural = arrayfun(F_one_natural, one_t);

F_one_complete = complete(one_x, one_y);
t_one_complete = arrayfun(F_one_complete, one_t);

F_one_not_a_knot = not_a_knot(one_x, one_y);
t_one_not_a_knot = arrayfun(F_one_not_a_knot, one_t);

% Interpolate the raw yearly data with each of the 6 methods

F_raw_vand = vandermonde(raw_data_x, raw_data_y);
t_raw_vand = arrayfun(F_raw_vand, raw_data_t);

F_raw_lagrange = lagrange(raw_data_x, raw_data_y);
t_raw_lagrange = arrayfun(F_raw_lagrange, raw_data_t);

F_raw_newton = newton(raw_data_x, raw_data_y);
t_raw_newton = arrayfun(F_raw_newton, raw_data_t);

F_raw_natural = natural(raw_data_x, raw_data_y);
t_raw_natural = arrayfun(F_raw_natural, raw_data_t);

F_raw_complete = complete(raw_data_x, raw_data_y);
t_raw_complete = arrayfun(F_raw_complete, raw_data_t);

F_raw_not_a_knot = not_a_knot(raw_data_x, raw_data_y);
t_raw_not_a_knot = arrayfun(F_raw_not_a_knot, raw_data_t);

% Generate plots with (xi, yi), (ti, p(ti)) to show interpolation
