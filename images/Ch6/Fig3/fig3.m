class_std = load('class_MSiHU_norm_def.mat');
class_extT = load('class_MSiHU_norm_extT.mat');
class_extE = load('class_MSiHU_norm_extE.mat');
class_extA = load('class_MSiHU_norm_extA.mat');


% class_norm = load('class_MSiHLV_norm_extA.mat');

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
name{1,1} = 'SVM default';

sens{2,1} = class_extT.SVMprob.sens;
spec{2,1} = class_extT.SVMprob.spec;
hull{2,1} = class_extT.SVMprob.hull;
accM{2,1} = class_extT.SVMprob.accM;
accMind{2,1} = find(class_extT.SVMprob.acc == class_extT.SVMprob.accM,1);
name{2,1} = 'SVM ext-T';

sens{3,1} = class_extE.SVMprob.sens;
spec{3,1} = class_extE.SVMprob.spec;
hull{3,1} = class_extE.SVMprob.hull;
accM{3,1} = class_extE.SVMprob.accM;
accMind{3,1} = find(class_extE.SVMprob.acc == class_extE.SVMprob.accM,1);
name{3,1} = 'SVM ext-E';

sens{4,1} = class_extA.SVMprob.sens;
spec{4,1} = class_extA.SVMprob.spec;
hull{4,1} = class_extA.SVMprob.hull;
accM{4,1} = class_extA.SVMprob.accM;
accMind{4,1} = find(class_extA.SVMprob.acc == class_extA.SVMprob.accM,1);
name{4,1} = 'SVM ext-A';

RocPlot3(sens, spec, hull,accM, accMind, name, 'SVM ROC curves: MSiHU','SVM_ROC_MSiHU') 