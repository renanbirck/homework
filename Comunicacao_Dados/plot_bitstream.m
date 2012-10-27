function plot_bitstream(bitstream, title)

    lenpulso = 10; % tempo por bit
    lenbits = length(bitstream);
    vetor_plot = zeros([1,lenbits*lenpulso]);
    
    for i = 1:lenbits
        for j = 1:lenpulso
    
            vetor_plot(lenpulso*i-(lenpulso-j)) = bitstream(i);
        end
    end
    
    createfigure(1:length(vetor_plot),vetor_plot,title)
    
    % adicionar os valores dos pontos
    
    for i = 1:lenbits
        text((i * 10) - 9.5,1.18,int2str(bitstream(i)),'FontName','Droid Sans')
    end
       
        
    
end

function createfigure(X1, Y1, title)
%CREATEFIGURE(X1,Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

%  Auto-generated by MATLAB on 29-Apr-2012 19:06:23

% Create figure
figure1 = figure();


set(0,'defaultAxesFontName', 'TimesNewRoman')
set(0,'defaultTextFontName', 'TimesNewRoman')

if min(Y1) == 0
    ylims = [-0.1 1.3];
else
    ylims = [-1.3 1.3];
end

% Create axes
axes1 = axes('Parent',figure1,'XTick',linspace(0,length(X1),1+(length(X1)/10)),'YLim',ylims);
% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 169]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[-0.1 1.1]);
box(axes1,'on');
grid(axes1,'on');
hold(axes1,'all');


% Create plot
plot(X1,Y1,'LineWidth',2);
set(gca,'title',text('String',title))
% Create xlabel

xlabel('a');
end