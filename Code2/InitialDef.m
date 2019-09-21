classdef InitialDef
    properties
        fname
        nlayers
        channels
        ndata
        Y0
        C
        K
        b
        W
        mu
    end
    methods
        function Id=InitialDef(fname,nlayers,channels,ndata)
            if ~exist(fname,'file')
                error('The input file %s does not exist.\nPlease generate data by gen_and_save_data.m',fname);
            end
            load(fname,'Y0','C','K','b','W','mu');
            nlayers_max = length(K);
            if nlayers > nlayers_max
                error('Not enough data in file: nlayers_max=%d',nlayers_max);
            end
            channels_max = length(W);
            if channels > channels_max
               error('Not enough data in file: channels_max=%d',channels_max);
            end
            Id.fname=fname;
            ndata_max = size(Y0,1);
            if ndata>ndata_max
                error('Not enough data points in file: ndata_max=%d',ndata_max);
            end
                
            Id.Y0 = Y0(1:ndata,:);
            Id.C = C;
            for k=1:nlayers
              Id.K{k}=K{k}(1:channels,1:channels);
              Id.b{k}=b{k}(1,1:channels);
            end
            Id.W = W(1:channels,1);
            Id.mu = mu;
            Id.nlayers = nlayers;
            Id.channels = channels;
        end
    end
end