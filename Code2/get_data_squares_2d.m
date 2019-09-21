function [features, labels] = get_data_squares_2d(n_samples) 

    if nargin < 1
        n_samples = 200;
    end
    
    a = 0.7;
    features = 2 * a * rand([2, n_samples]) - a;
    
    labels = features(1,:) .* features(2,:) > 0;
        
    features = features + .1 * randn(size(features));
    
    if nargout < 1
        figure()
        show_dots(features, 0.4 * labels);
        colormap(redblue(200));
        colorbar;
        caxis([-1, 1]);
    end
   