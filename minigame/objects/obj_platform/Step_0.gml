var ac_channel_shake = animcurve_get_channel(ac_shake, "y");
var ac_channel_land = animcurve_get_channel(ac_land, "y");

y = y_start + animcurve_channel_evaluate(ac_channel_shake, (shake_time_max-shake_time)/shake_time_max)*shake_distance
			- animcurve_channel_evaluate(ac_channel_land, (land_time_max-land_time)/land_time_max)*land_distance;

if (shake_time > 0) shake_time--;

if (land_time > 0) land_time--;