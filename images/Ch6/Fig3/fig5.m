class_std = load('class_MSiHR_norm_def.mat');
class_extT = load('class_MSiHR_norm_extT.mat');
class_extE = load('class_MSiHR_norm_extE.mat');
class_extA = load('class_MSiHR_norm_extA.mat');


% class_norm = load('class_MSiHLV_norm_extA.mat');

sens = cell(4,1);
spec = cell(4,1);
hull = cell(4,1);
accM = cell(4,1);
accMind = cell(4,1);
name = cell(4,1);

sens{1,1} = class_std.RF.sens;
spec{1,1} = class_std.RF.spec;
hull{1,1} = class_std.RF.hull;
accM{1,1} = class_std.RF.accM;
accMind{1,1} = find(class_std.RF.acc == class_std.RF.accM,1);
name{1,1} = 'RF default';

sens{2,1} = class_extT.RF.sens;
spec{2,1} = class_extT.RF.spec;
hull{2,1} = class_extT.RF.hull;
accM{2,1} = class_extT.RF.accM;
accMind{2,1} = find(class_extT.RF.acc == class_extT.RF.accM,1);
name{2,1} = 'RF ext-T';

sens{3,1} = class_extE.RF.sens;
spec{3,1} = class_extE.RF.spec;
hull{3,1} = class_extE.RF.hull;
accM{3,1} = class_extE.RF.accM;
accMind{3,1} = find(class_extE.RF.acc == class_extE.RF.accM,1);
name{3,1} = 'RF ext-E';

sens{4,1} = class_extA.RF.sens;
spec{4,1} = class_extA.RF.spec;
hull{4,1} = class_extA.RF.hull;
accM{4,1} = class_extA.RF.accM;
accMind{4,1} = find(class_extA.RF.acc == class_extA.RF.accM,1);
name{4,1} = 'RF ext-A';

RocPlot3(sens, spec, hull,accM, accMind, name, 'RF ROC curves: MSiHR','RF_ROC_MSiHR') 