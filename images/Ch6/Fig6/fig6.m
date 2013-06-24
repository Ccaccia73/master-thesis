class_H = load('class_H_norm_extA.mat');
class_MSiVH = load('class_MSiVH_norm_extA.mat');
class_SiU = load('class_SiU_norm_extA.mat');
class_SiVHU = load('class_SiVHU_norm_extA.mat');


% class_norm = load('class_MSiHLV_norm_extA.mat');

sens = cell(4,1);
spec = cell(4,1);
hull = cell(4,1);
accM = cell(4,1);
accMind = cell(4,1);
name = cell(4,1);

sens{1,1} = class_H.SVMprob.sens;
spec{1,1} = class_H.SVMprob.spec;
hull{1,1} = class_H.SVMprob.hull;
accM{1,1} = class_H.SVMprob.accM;
accMind{1,1} = find(class_H.SVMprob.acc == class_H.SVMprob.accM,1);
name{1,1} = 'SVM H';

sens{2,1} = class_MSiVH.SVMprob.sens;
spec{2,1} = class_MSiVH.SVMprob.spec;
hull{2,1} = class_MSiVH.SVMprob.hull;
accM{2,1} = class_MSiVH.SVMprob.accM;
accMind{2,1} = find(class_MSiVH.SVMprob.acc == class_MSiVH.SVMprob.accM,1);
name{2,1} = 'SVM MSiVH';

sens{3,1} = class_SiU.SVMprob.sens;
spec{3,1} = class_SiU.SVMprob.spec;
hull{3,1} = class_SiU.SVMprob.hull;
accM{3,1} = class_SiU.SVMprob.accM;
accMind{3,1} = find(class_SiU.SVMprob.acc == class_SiU.SVMprob.accM,1);
name{3,1} = 'SVM SiU';

sens{4,1} = class_SiVHU.SVMprob.sens;
spec{4,1} = class_SiVHU.SVMprob.spec;
hull{4,1} = class_SiVHU.SVMprob.hull;
accM{4,1} = class_SiVHU.SVMprob.accM;
accMind{4,1} = find(class_SiVHU.SVMprob.acc == class_SiVHU.SVMprob.accM,1);
name{4,1} = 'SVM SiVHU';

RocPlot6(sens, spec, hull,accM, accMind, name, 'Best SVM ROC curves','SVM_ROC_best') 