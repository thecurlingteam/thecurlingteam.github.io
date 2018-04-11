%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This code calculates the modes of a symmetric slab waveguide
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% variables:
%   n1: cladding index
%   n2: core index
%   lr: wavlength (in vacuum, in micrometers)
%   d: vector with film thicknesses
%   pol: polarization state (1: TE, 2:TM)
%
% All length units are in micrometers (um),
% as well as wave vector units (1/um instead of 1/m
% for k0, kx, kz)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global V

% waveguide parameters
% required parameters: n1, n2, a, lr
% be careful: n1 and n2 are swapped
n1=1.5;		% top region (the cover) refractive index
n2=1.6;		% core refractive index
a=3;		% half the waveguide core thickness, in um
lr=15;		% wavelength, in um
k0=2*pi/lr;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Equations:
%
%Dispersion equations
%   h=sqrt((n2*k0)^2-beta^2)
%   q=sqrt(beta^2-(n1*k0)^2)
%combine these 2 equations
%    h^2+q^2 = (n2^2-n1^2)*k0^2
%
%Mode equations
%   h*tan(h*a) = q (symmetric TE modes)
%   -h*cot(h*a)= q (antisymmetric TE modes)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% multiply both sides of the equations by a
% call x=ha, y=qa
%
% h*tan(h*d/2) = q  becomes x*tan(x)=y2
% (this y must be different than other ys, because each y
% represents a different curve and so a different function. This
% y is called y2)
% -h*cot(h*d/2) = q  becomes -x*cot(x)=y3
%
%   h^2+q^2 = (n2^2-n1^2)*k0^2 becomes x^2+y1^2 = a^2*k0^2*(n2^2-n1^2) = V
%

% normalized frequency
V=a*2*pi/lr*sqrt(n2^2-n1^2)

% break x up into 2 pi intervals
intervals=ceil(1.01*V)

%(1) plot the three equations
%   Dispersion equation
%   Symmetric modes
%   Antisymmetric modes

figure('Name','Dispersion equations','pos',[350 25 750 750])
clf
hold 'on'
if intervals==1
    x=linspace(0, 1.5*V,1001);
    x=sort([x,V]);
    I=find(x<=V);
    % find the indexes of all the elements of x which are <= V
    y1=sqrt(V^2-x.^2);
    y2=x.*tan(x);     %symmetric
    y3=-x.*cot(x);    %antisymetric
    % argument of functions, variable in expressions
    % as well as plot() parameters must be considered
    plot(x(I),y1(I),'b')
    plot(x,y2,'r')
    plot(x,y3,'g')
    grid
    axis image
    axis([0, max(x), 0, max(x)])
    grid minor
    hold 'off'

else
    
    for lp=1:intervals
        %only plot in pi/2 intervals to eliminate positive/negative changes
        x=linspace(pi/2*(lp-1),pi/2*lp,1001);
        x=x(2:end);
        I=find(x<V);
        y1=sqrt(V^2-x.^2);	%dispersion
        y2=x.*tan(x);       %symmetric
        y3=-x.*cot(x);      %antisymetric
        plot(x(I),y1(I),'b')
        plot(x,y2,'r')
        plot(x,y3,'g')
        % be careful to the default plot zoom: the function -x*cot(x) has
        % pi/2 = 1.57 as first root, but the x axis intersection may appear
        % slightly shifted. Zoom in for a better view.
    end
    grid
    axis image
    axis([0, pi/2*intervals, 0, pi/2*intervals])
    grid minor
    hold 'off'
end

%(2) Calculate the symmetric modes
%number of symmetric modes
%tan(hd/2)=0
%   zero crossings every pi
%   hd every 2*pi up to V
n_sym= floor(V/(pi));
% number of available symmetric modes
x_sym=[];
for lp_sym=0:n_sym
    tmp=fminbnd('sym_modes_2',lp_sym*pi,lp_sym*pi+pi/2)
    x_sym=[x_sym,tmp]
    % concatenate tmp to the x_sym array
end

%(3) Calculate the anti-symmetric modes
%number of antisymmetric modes
%cot(hd/2)=0
%   zero crossings every pi/2
%   x every odd multiple of pi
n_asym= round(V/(pi));

x_asym=[];
if n_asym>0
    for lp_asym=1:n_asym
        tmp=fminbnd('asym_modes_2',pi/2+(lp_asym-1)*pi,pi+(lp_asym-1)*pi)
        x_asym=[x_asym,tmp]
    end
end

ha=sort([x_sym,x_asym]);
beta=sqrt((n2*k0)^2-(ha/a).^2)
neff=beta/k0

%(4) plot the mode fields
figure('Name','Mode fields','pos',[350 25 750 750])
x1=linspace(-a,a,101);
% core portion of x-axis
x2=linspace(a,4*a,101);
% cover portion of x-axis, right of core
x3=linspace(-4*a,-a,101);
% cover portion of x-axis, left of core

nn=0;

while nn<length(beta)
    nn=nn+1;
    subplot(length(beta),1,nn)
    
    if rem(nn,2)==0 
    'odd'
    subplot(length(beta),1,nn)
        h=sqrt((n2*k0)^2-beta(nn).^2);
        q=sqrt(beta(nn).^2-(n1*k0)^2);
        % be careful: here, n1 is about the cover, n2 about the core
        C=sin(h*a)*exp(q*a);
        E1=sin(h*x1);
        % portion of plot inside the core
        E2=C*exp(-q*x2);
        % portion of plot right of the core. Note that the multiplication
        % of C and exp(-q*x2) gives the complete, correct expression:
        % sin(h*a)*exp(-q*(x2 - a))
        E3=-C*exp(q*x3);
        % portion of plot left of the core. x3 is already made up by
        % negative values of x
        plot(x1,E1)
        hold 'on'
        plot(x2,E2)
        plot(x3,E3)
        plot([-a -a], [-1 1],'k')
        plot([a a], [-1 1],'k')
        hold 'off'
 
    else    %even mode
        'even'
        h=sqrt((n2*k0)^2-beta(nn).^2);
        q=sqrt(beta(nn).^2-(n1*k0)^2);
        C=cos(h*a)*exp(q*a);
        E1=cos(h*x1);
        E2=C*exp(-q*x2);
        E3=C*exp(q*x3);
        plot(x1,E1)
        hold 'on'
        plot(x2,E2)
        plot(x3,E3)
        plot([-a -a], [-1 1],'k')
        plot([a a], [-1 1],'k')
        hold 'off'
    end
    grid minor
end

neff