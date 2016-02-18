Data = xlsread('/Users/seetha/Desktop/Bleach_Correction/Values_7dpf2.xlsx', 1);

trace = Data(:,5);
trace = trace(~isnan(trace));

background_frame1 = mean(trace(1:100));
normalized_y = trace/background_frame1;
plot(normalized_y);

x = linspace(1, length(trace), length(trace));

% plot(trace)
hold on

[yy, xcov] = fit(x', normalized_y, 'exp2');

plot(yy)
hold off