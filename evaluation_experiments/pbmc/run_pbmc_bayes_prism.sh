
# it is assumed that this script is run 
# in the same folder it resides in
work_dir=${PWD}
r_script="Rscript ${work_dir}/../../bayesprism/bayes_prism_pbmc_test.R "
num_samp=100
ncores=20

in_dir=${work_dir}/../../data/single_cell_data/cybersort_pbmc/
out_dir=${work_dir}/../../results/single_cell_data/bp_pbmc/


file_id_train=pbmc3k_6
file_id_test=pbmc3k_6
run_id="pbmc3k_6"
lsf_file=${out_dir}/${file_id_train}_${file_id_test}_final.lsf
bsub -R "rusage[mem=48GB]" -W 24:00 -n 20 -q "normal" -o ${lsf_file} -J ${run_id} ${r_script} ${in_dir} ${out_dir} ${file_id_train} ${file_id_test} ${num_samp} ${ncores}


file_id_train=pbmc6k_0
file_id_test=pbmc_rep2_10xV2_0
run_id="pbmc_rep2_10xV2_0"
lsf_file=${out_dir}/${file_id_train}_${file_id_test}_final.lsf
bsub -R "rusage[mem=48GB]" -W 24:00 -n 20 -q "normal" -o ${lsf_file} -J ${run_id} ${r_script} ${in_dir} ${out_dir} ${file_id_train} ${file_id_test} ${num_samp} ${ncores}


file_id_train=pbmc6k_0
file_id_test=pbmc6k_0
run_id="pbmc6k_0"
lsf_file=${out_dir}/${file_id_train}_${file_id_test}_final.lsf
bsub -R "rusage[mem=48GB]" -W 24:00 -n 20 -q "normal" -o ${lsf_file} -J ${run_id} ${r_script} ${in_dir} ${out_dir} ${file_id_train} ${file_id_test} ${num_samp} ${ncores}


file_id_train=pbmc_rep2_10xV2_sm2_cells_0
file_id_test=pbmc_rep1_sm2_0
run_id="sm_c_tech"
lsf_file=${out_dir}/${file_id_train}_${file_id_test}_final.lsf
bsub -R "rusage[mem=48GB]" -W 24:00 -n 20 -q "normal" -o ${lsf_file} -J ${run_id} ${r_script} ${in_dir} ${out_dir} ${file_id_train} ${file_id_test} ${num_samp} ${ncores}



file_id_train="pbmc_rep2_10xV2_sm2_cells_0"
file_id_test="pbmc_rep1_10xV2a_sm2_cells_0"
run_id="sm_c_bio"
lsf_file=${out_dir}/${file_id_train}_${file_id_test}_final.lsf
bsub -R "rusage[mem=32GB]" -W 24:00 -n 20 -q "normal" -o ${lsf_file} -J ${run_id} ${r_script} ${in_dir} ${out_dir} ${file_id_train} ${file_id_test} ${num_samp} ${ncores}


file_id_train=pbmc_rep2_10xV2_sm2_cells_0
file_id_test=pbmc_rep2_10xV2_sm2_cells_0
run_id="sm_c_same"
lsf_file=${out_dir}/${file_id_train}_${file_id_test}_final.lsf
bsub -R "rusage[mem=16GB]" -W 24:00 -n 10 -q "normal" -o ${lsf_file} -J ${run_id} ${r_script} ${in_dir} ${out_dir} ${file_id_train} ${file_id_test} ${num_samp} ${ncores}




# it is assumed that this script is run 
# in the same folder it resides in
work_dir=${PWD}
r_script="Rscript ${work_dir}/../../bayesprism/bayes_prism_pbmc_test_multi.R "
num_samp=8100
ncores=20

in_dir=${work_dir}/../../data/single_cell_data/cybersort_pbmc/
out_dir=${work_dir}/../../results/single_cell_data/bp_pbmc/


file_id_train=pbmc3k_6
file_id_test=pbmc3k_6
run_id="perturb3"
lsf_file=${out_dir}/${file_id_train}_${file_id_test}_final.lsf
bsub -R "rusage[mem=48GB]" -W 48:00 -n 20 -q "normal" -o ${lsf_file} -J ${run_id} ${r_script} ${in_dir} ${out_dir} ${file_id_train} ${file_id_test} ${num_samp} ${ncores}

