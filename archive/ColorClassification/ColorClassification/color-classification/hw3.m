
[X,y]=extract_features('images.txt','m_images.txt');

SMVModel = fitcecoc(X, y);

%test part
[X_t , y_t]=extract_features('timages.txt','tm_images.txt');

predictedLabels = predict(SMVModel, X_t);

correct_number = 0;
dimension = size(predictedLabels,1);
for i=1:dimension
    if predictedLabels(i) == test_label(i)
        correct_number = correct_number + 1;
    end
end
display(correct_number);
result = correct_number/dimension;
display('Accuracy:');
display(result);
