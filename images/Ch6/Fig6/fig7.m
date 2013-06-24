class_iVHL = load('class_iVHL_norm_extA.mat');
class_MSHL = load('class_MSHL_norm_extA.mat');
class_MSiVHR = load('class_MSiVHR_norm_extA.mat');
class_SHL = load('class_SHL_norm_extA.mat');


% class_norm = load('class_MSiHLV_norm_extA.mat');

sens = cell(4,1);
spec = cell(4,1);
hull = cell(4,1);
accM = cell(4,1);
accMind = cell(4,1);
name = cell(4,1);

sens{1,1} = class_iVHL.RF.sens;
spec{1,1} = class_iVHL.RF.spec;
hull{1,1} = class_iVHL.RF.hull;
accM{1,1} = class_iVHL.RF.accM;
accMind{1,1} = find(class_iVHL.RF.acc == class_iVHL.RF.accM,1);
name{1,1} = 'RF iVHL';

sens{2,1} = class_MSHL.RF.sens;
spec{2,1} = class_MSHL.RF.spec;
hull{2,1} = class_MSHL.RF.hull;
accM{2,1} = class_MSHL.RF.accM;
accMind{2,1} = find(class_MSHL.RF.acc == class_MSHL.RF.accM,1);
name{2,1} = 'RF MSHL';

sens{3,1} = class_MSiVHR.RF.sens;
spec{3,1} = class_MSiVHR.RF.spec;
hull{3,1} = class_MSiVHR.RF.hull;
accM{3,1} = class_MSiVHR.RF.accM;
accMind{3,1} = find(class_MSiVHR.RF.acc == class_MSiVHR.RF.accM,1);
name{3,1} = 'RF MSiVHR';

sens{4,1} = class_SHL.RF.sens;
spec{4,1} = class_SHL.RF.spec;
hull{4,1} = class_SHL.RF.hull;
accM{4,1} = class_SHL.RF.accM;
accMind{4,1} = find(class_SHL.RF.acc == class_SHL.RF.accM,1);
name{4,1} = 'RF SHL';

RocPlot6(sens, spec, hull,accM, accMind, name, 'Best RF ROC curves','RF_ROC_best') 