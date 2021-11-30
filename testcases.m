%% Test cases in MATPOWER

%%  Load MATPOWER case
% 9-bus case
mpc = loadcase('case9');
% mpc = loadcase('case39');

%% Supplimentary 
% Make B matrices for DC PF
[Bbus, Bf, Pbusinj, Pfinj] = makeBdc(mpc);

% Make Y-bus matrices 
[Ybus, Yf, Yt] = makeYbus(mpc);


%% Run test cases
% Run AC PF
resultACPF = runpf(mpc);

% Run DC PF
resultDCPF = rundcpf(mpc);

% Run AC OPF
resultACOPF = runopf(mpc);

% Run DC OPF
resultDCOPF = rundcopf(mpc);