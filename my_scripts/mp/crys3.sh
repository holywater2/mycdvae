conda activate cdvae2
CF=orthorhombic
CFN=3
CUDA_VISIBLE_DEVICES=3 python ../../cdvae/run.py data=mp_20_$CF model=vae model.predict_property=True expname=$CF_no_dof
CUDA_VISIBLE_DEVICES=3 python ../../scripts/evaluate.py --model_path /home/holywater2/24ICLR/cdvae/hydra/singlerun/2023-08-09/$CF --tasks recon gen opt
CUDA_VISIBLE_DEVICES=3 python ../../scripts/compute_metrics.py --root_path /home/holywater2/24ICLR/cdvae/hydra/singlerun/2023-08-09/$CF --tasks recon gen opt


# 1:"triclinic",    # 1-2       (a,b,c,x,y,z)       6
# 2:"monoclinic",   # 3-15      (a,b,c,90,z,90)     4
# 3:"orthorhombic", # 16-74     (a,b,c,90,90,90)    3
# 4:"tetragonal",   # 75-142    (a,a,c,90,90,90)    2
# 5:"trigonal",     # 143-167   (a,a,a,x,x,x)       2
# 6:"hexagonal",    # 168-194   (a,a,b,90,90,120)   2
# 7:"cubic"         # 195-230   (a,a,a,90,90,90)    1

cd my_scripts