MSistd = load('class_MSi_std_extA.mat');
MSinorm = load('class_MSi_norm_extA.mat');

sens = cell(4,1);
spec = cell(4,1);
hull = cell(4,1);
accM = cell(4,1);
accMind = cell(4,1);
name = cell(4,1);

sens{1,1} = MSistd.SVMprob.sens;
spec{1,1} = MSistd.SVMprob.spec;
hull{1,1} = MSistd.SVMprob.hull;
accM{1,1} = MSistd.SVMprob.accM;
accMind{1,1} = find(MSistd.SVMprob.acc == MSistd.SVMprob.accM,1);
name{1,1} = 'SVM std';

sens{2,1} = MSinorm.SVMprob.sens;
spec{2,1} = MSinorm.SVMprob.spec;
hull{2,1} = MSinorm.SVMprob.hull;
accM{2,1} = MSinorm.SVMprob.accM;
accMind{2,1} = find(MSinorm.SVMprob.acc == MSinorm.SVMprob.accM,1);
name{2,1} = 'SVM norm';

sens{3,1} = MSistd.RF.sens;
spec{3,1} = MSistd.RF.spec;
hull{3,1} = MSistd.RF.hull;
accM{3,1} = MSistd.RF.accM;
accMind{3,1} = find(MSistd.RF.acc == MSistd.RF.accM,1);
name{3,1} = 'RF std';

sens{4,1} = MSinorm.RF.sens;
spec{4,1} = MSinorm.RF.spec;
hull{4,1} = MSinorm.RF.hull;
accM{4,1} = MSinorm.RF.accM;
accMind{4,1} = find(MSinorm.RF.acc == MSinorm.RF.accM,1);
name{4,1} = 'RF norm';

RocPlot1(sens, spec, hull,accM, accMind, name, 'SVM ROC curves: MSi','SVM_ROC_MSi')
RocPlot1b(sens, spec, hull,accM, accMind, name, 'RF ROC curves: MSi','RF_ROC_MSi')