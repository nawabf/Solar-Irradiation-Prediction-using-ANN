clc;
fileName = 'Final solar.xlsx'; 
sheetName = 'Bahawalpur' ;
% Reading INPUTS 
L=xlsread(fileName, sheetName , 'C2:C2191');    % Latitude
Lon=xlsread(fileName, sheetName , 'D2:D2191');    % Longitude
Alt=xlsread(fileName, sheetName , 'E2:E2191');    % Elevation
M=xlsread(fileName, sheetName , 'F2:F2191');    % Month
D=xlsread(fileName, sheetName , 'G2:G2191');    % Day of year
T_max=xlsread(fileName, sheetName , 'H2:H2191');    % Max Temperature
T_min=xlsread(fileName, sheetName , 'I2:I2191');    % Min Temperature
Prec=xlsread(fileName, sheetName , 'J2:J2191');    % Precipitation
RH=xlsread(fileName, sheetName , 'K2:K2191');    % Relative Humidity
AH=xlsread(fileName, sheetName , 'L2:L2191');    % Absolute Humididty
KT=xlsread(fileName, sheetName , 'M2:M2191');    % Clearness Index
G_Sat=xlsread(fileName, sheetName , 'N2:N2191');    % Satelite GHI
%Reading Targets
G=xlsread(fileName, sheetName , 'O2:O2191');    % GHI
% Reading Test SET DATA
L_T=xlsread(fileName, sheetName , 'C2192:C2556');    % Latitude
Lon_T=xlsread(fileName, sheetName , 'D2192:D2556');    % Longitude
Alt_T=xlsread(fileName, sheetName , 'E2192:E2556');    % Elevation
M_T=xlsread(fileName, sheetName , 'F2192:F2556');    % Month
D_T=xlsread(fileName, sheetName , 'G2192:G2556');    % Day of year
Tmax_T=xlsread(fileName, sheetName , 'H2192:H2556');    % Max Temperature
Tmin_T=xlsread(fileName, sheetName , 'I2192:I2556');    % Min Temperature
Prec_T=xlsread(fileName, sheetName , 'J2192:J2556');    % Precipitation
RH_T=xlsread(fileName, sheetName , 'K2192:K2556');    % Relative Humidity
AH_T=xlsread(fileName, sheetName , 'L2192:L2556');    % Absolute Humidity
KT_T=xlsread(fileName, sheetName , 'M2192:M2556');    % Clearness Index
G_Sat_T=xlsread(fileName, sheetName , 'N2192:N2556');    % Satelite GHI
%Test SET Targets
G_Test=xlsread(fileName, sheetName , 'O2192:O2556');    % GHI