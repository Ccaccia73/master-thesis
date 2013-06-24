class_std = load('class_MSiHLV_std_extA.mat');
class_norm = load('class_MSiHLV_norm_extA.mat');

sens = cell(4,1);
spec = cell(4,1);
hull = cell(4,1);
accM = cell(4,1);
accMind = cell(4,1);
name = cell(4,1);

sens{1,1} = class_std.SVMprob.sens;
spec{1,1} = class_std.SVMprob.spec;
hull{1,1} = class_std.SVMprob.hull;
accM{1,1} = class_std.SVMprob.accM;
accMind{1,1} = find(class_std.SVMprob.acc == class_std.SVMprob.accM,1);
name{1,1} = 'SVM std';

sens{2,1} = class_norm.SVMprob.sens;
spec{2,1} = class_norm.SVMprob.spec;
hull{2,1} = class_norm.SVMprob.hull;
accM{2,1} = class_norm.SVMprob.accM;
accMind{2,1} = find(class_norm.SVMprob.acc == class_norm.SVMprob.accM,1);
name{2,1} = 'SVM norm';

sens{3,1} = class_std.RF.sens;
spec{3,1} = class_std.RF.spec;
hull{3,1} = class_std.RF.hull;
accM{3,1} = class_std.RF.accM;
accMind{3,1} = find(class_std.RF.acc == class_std.RF.accM,1);
name{3,1} = 'RF std';

sens{4,1} = class_norm.RF.sens;
spec{4,1} = class_norm.RF.spec;
hull{4,1} = class_norm.RF.hull;
accM{4,1} = class_norm.RF.accM;
accMind{4,1} = find(class_norm.RF.acc == class_norm.RF.accM,1);
name{4,1} = 'RF norm';

RocPlot2(sens, spec, hull,accM, accMind, name, 'RF ROC curve: MSiHLV','RF_ROC_MSiHLV')
