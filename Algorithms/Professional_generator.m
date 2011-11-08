Arquivo=fopen('/Treinamento/Professional_training_cases.dat','w');

for c1=1:2
    for c2=1:2
        for c3=1:2
            for c4=1:2
                for c5=1:2
                    for c6=1:2
                        for c7=1:2
                            fprintf(Arquivo,'%d   %d   %d   %d   %d   %d   %d\n',c1,c2,c3,c4,c5,c6,c7);
                        end
                    end
                end
            end
        end
    end
end

nft2=-1;
v_nft2=-1;

nft3=-1;
v_nft3=-1;

vft2=-1;
v_vft2=-1;

vft3=-1;
v_nft3=-1;

v_sf=-1;
v_f1=-1;
v_f2=-1;

for loop=1:10000
    nft2=rand(1);
    if(nft2>=0.5)
        v_nft2=2;
    else
        v_nft2=1;
    end
    
    nft3=rand(1);
    if(nft3>=0.5)
        v_nft3=2;
    else
        v_nft3=1;
    end
    
    vft2=rand(1);
    if(vft2>=0.5)
        v_vft2=2;
    else
        v_nft2=1;
    end
    
    vft3=rand(1);
    if(vft3>=0.5)
        v_vft3=2;
    else
        v_vft3=1;
    end
    
    if((nft2>=0.5)&&(nft3>=0.5)&&(vft2>=0.5)&&(vft3>=0.5))
        v_sf=2;
        v_f1=1;
        v_f2=1;
    end
    
    if((nft2<0.5)&&(nft3<0.5)&&(vft2<0.5)&&(vft3<0.5))
        v_sf=1;
        v_f1=2;
        v_f2=1;
    end
    
    if((nft2>=0.5)&&(nft3<0.5)&&(vft2>=0.5)&&(vft3>=0.5))
        v_sf=1;
        v_f1=1;
        v_f2=2;
    end
    
    if((v_nft2==1|v_nft2==2)&&(v_nft3==1|v_nft3==2)&&(v_vft2==1|v_vft2==2)&&(v_vft3==1|v_vft3==2)&&(v_sf==1|v_sf==2)&&(v_f1==1|v_f1==2)&&(v_f2==1|v_f2==2))
        fprintf(Arquivo,'%d   %d   %d   %d   %d   %d   %d\n',v_nft2,v_nft3,v_vft2,v_vft3,v_sf,v_f1,v_f2);
    end
end

fclose(Arquivo);