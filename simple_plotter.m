load('psy234_expData.mat');

%compute mean and sem p(hit)

all_phit = binMean(:,:,4);
bin_average = squeeze(mean(all_phit));

bin_sem = std(all_phit)./sqrt(size(all_phit,1));

figure;
ax = gca; 

errorbar(binLimits(:,2),bin_average,bin_sem,'-o','Capsize',0,'MarkerFaceColor', 'w','MarkerSize',14);
xlim([0 200]);
xticks([0:20:200]);
ax.FontSize = 14;
xlabel('Time (s)','FontSize',14);
ylabel('p(hit)','FontSize',14);

%plot individual data with means
hold on;
plot(binLimits(:,2),all_phit, '.');
