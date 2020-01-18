#!/usr/bin/env bash
#SBATCH -A C3SE2019-1-18
#SBATCH -C "MEM512|MEM1024" 
#SBATCH -N 1 
#SBATCH -n 20
#SBATCH -o domain.log
#SBATCH -t 2-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=leyu@chalmers.se

module load GCCcore/8.3.0
module load Perl/5.30.0
module load Anaconda3/2019.07

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_similis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_similis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_boidinii_JCM9604.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_boidinii_JCM9604.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lachancea_lanzarotensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lachancea_lanzarotensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034605_spencermartinsiella_europaea_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034605_spencermartinsiella_europaea_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/saccharomyces_uvarum.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/saccharomyces_uvarum.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035040_ambrosiozyma_maleeae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035040_ambrosiozyma_maleeae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041693_debaryomyces_nepalensis_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041693_debaryomyces_nepalensis_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035691_candida_salmanticensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035691_candida_salmanticensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035690_candida_vartiovaarae_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035690_candida_vartiovaarae_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB154_kazachstania_transvaalensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB154_kazachstania_transvaalensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034904_ogataea_nonfermentans_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034904_ogataea_nonfermentans_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034886_ogataea_trehalophila_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034886_ogataea_trehalophila_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/spathaspora_hagerdaliae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/spathaspora_hagerdaliae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/priceomyces_haplophilus.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/priceomyces_haplophilus.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034957_hanseniaspora_osmophila_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034957_hanseniaspora_osmophila_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/saccharomyces_eubayanus.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/saccharomyces_eubayanus.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/brettanomyces_anomalus.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/brettanomyces_anomalus.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034611_saturnispora_mendoncae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034611_saturnispora_mendoncae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_sorboxylosa.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_sorboxylosa.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/ogataea_parapolymorpha.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/ogataea_parapolymorpha.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_auris.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_auris.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/zygosaccharomyces_bailii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/zygosaccharomyces_bailii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/nadsonia_fulvescens_var_elongata.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/nadsonia_fulvescens_var_elongata.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035271_wickerhamomyces_bovis_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035271_wickerhamomyces_bovis_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035640_yamadazyma_philogaea_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035640_yamadazyma_philogaea_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_mauinuiana.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_mauinuiana.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034709_kluyveromyces_aestuarii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034709_kluyveromyces_aestuarii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/kazachstania_naganishii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/kazachstania_naganishii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/cyberlindnera_fabianii_JCM3601.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/cyberlindnera_fabianii_JCM3601.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/saccharomyces_kudriavzevii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/saccharomyces_kudriavzevii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034710_kluyveromyces_dobzhanskii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034710_kluyveromyces_dobzhanskii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034624_pichia_nakasei_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034624_pichia_nakasei_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034597_candida_stellimalicola_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034597_candida_stellimalicola_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034897_ogataea_glucozyma_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034897_ogataea_glucozyma_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034973_danielozyma_ontarioensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034973_danielozyma_ontarioensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000026124_ogataea_henricii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000026124_ogataea_henricii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034866_zygosaccharomyces_bisporus_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034866_zygosaccharomyces_bisporus_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035686_cyberlindnera_saturnus_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035686_cyberlindnera_saturnus_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_shivogae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_shivogae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/naumovozyma_castellii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/naumovozyma_castellii.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/ascoidea_rubescens.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/ascoidea_rubescens.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035033_candida_cretensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035033_candida_cretensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035658_starmera_amethionina_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035658_starmera_amethionina_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035325_cyberlindnera_petersonii_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035325_cyberlindnera_petersonii_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034648_candida_restingae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034648_candida_restingae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/tetrapisispora_blattae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/tetrapisispora_blattae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/starmerella_bombicola_JCM9596.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/starmerella_bombicola_JCM9596.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035282_trigonopsis_vinaria_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035282_trigonopsis_vinaria_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035244_candida_incommunis_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035244_candida_incommunis_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/clavispora_lusitaniae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/clavispora_lusitaniae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_intermedia.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_intermedia.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lachancea_fantastica.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lachancea_fantastica.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034669_blastobotrys_raffinofermentans_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034669_blastobotrys_raffinofermentans_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/kuraishia_capsulata.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/kuraishia_capsulata.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/wickerhamomyces_ciferrii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/wickerhamomyces_ciferrii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_kamakouana.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_kamakouana.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035662_meyerozyma_caribbica_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035662_meyerozyma_caribbica_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_matae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_matae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034947_ambrosiozyma_philentoma_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034947_ambrosiozyma_philentoma_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035651_torulaspora_microellipsoides_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035651_torulaspora_microellipsoides_160519.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034902_ogataea_minuta_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034902_ogataea_minuta_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_bicuspidata.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_bicuspidata.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034885_ogataea_zsoltii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034885_ogataea_zsoltii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035670_phaffomyces_opuntiae_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035670_phaffomyces_opuntiae_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_parapsilosis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_parapsilosis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034760_lipomyces_kononenkoae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034760_lipomyces_kononenkoae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_apicola.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_apicola.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035652_torulaspora_maleeae_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035652_torulaspora_maleeae_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034893_ogataea_philodendra_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034893_ogataea_philodendra_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034952_citeromyces_siamensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034952_citeromyces_siamensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035679_candida_rhagii_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035679_candida_rhagii_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/debaryomyces_hansenii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/debaryomyces_hansenii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_homilentoma.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_homilentoma.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035286_candida_azyma_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035286_candida_azyma_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/hanseniaspora_valbyensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/hanseniaspora_valbyensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lachancea_thermotolerans.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lachancea_thermotolerans.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034892_ogataea_pilisensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034892_ogataea_pilisensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035296_priceomyces_carsonii_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035296_priceomyces_carsonii_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000026152_torulaspora_franciscae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000026152_torulaspora_franciscae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yarrowia_deformans.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yarrowia_deformans.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035243_zygoascus_meyerae_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035243_zygoascus_meyerae_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034761_lipomyces_lipofer_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034761_lipomyces_lipofer_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/spathaspora_passalidarum.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/spathaspora_passalidarum.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035695_hanseniaspora_pseudoguilliermondii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035695_hanseniaspora_pseudoguilliermondii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034607_saccharomycopsis_capsularis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034607_saccharomycopsis_capsularis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yarrowia_keelungensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yarrowia_keelungensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/nakaseomyces_castellii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/nakaseomyces_castellii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035045_barnettozyma_hawaiiensis_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035045_barnettozyma_hawaiiensis_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034903_ogataea_naganishii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034903_ogataea_naganishii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035037_candida_montana_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035037_candida_montana_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_kipukae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_kipukae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034918_nakazawaea_holstii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034918_nakazawaea_holstii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034612_saturnispora_saitoi_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034612_saturnispora_saitoi_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB143_kazachstania_siamensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB143_kazachstania_siamensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035629_yueomyces_sinensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035629_yueomyces_sinensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035681_candida_gotoi_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035681_candida_gotoi_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035018_candida_canberraensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035018_candida_canberraensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035252_yamadazyma_nakazawae_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035252_yamadazyma_nakazawae_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/dekkera_bruxellensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/dekkera_bruxellensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_borealis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_borealis.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/ascoidea_asiatica.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/ascoidea_asiatica.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034627_pichia_heedii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034627_pichia_heedii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lachancea_quebecensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lachancea_quebecensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/wickerhamia_fluorescens.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/wickerhamia_fluorescens.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034978_cyberlindnera_mrakii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034978_cyberlindnera_mrakii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/torulaspora_delbrueckii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/torulaspora_delbrueckii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000026145_ambrosiozyma_vanderkliftii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000026145_ambrosiozyma_vanderkliftii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034622_pichia_occidentalis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034622_pichia_occidentalis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_orthopsilosis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_orthopsilosis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035674_kregervanrija_delftensis_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035674_kregervanrija_delftensis_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/ambrosiozyma_kashinagacola.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/ambrosiozyma_kashinagacola.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/saccharomyces_arboricola.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/saccharomyces_arboricola.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035665_middelhovenomyces_tepae_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035665_middelhovenomyces_tepae_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035641_yamadazyma_scolyti_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035641_yamadazyma_scolyti_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/tetrapisispora_phaffii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/tetrapisispora_phaffii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034654_aciculoconidium_aculeatum_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034654_aciculoconidium_aculeatum_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034615_saturnispora_zaruensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034615_saturnispora_zaruensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034986_candida_oregonensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034986_candida_oregonensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/millerozyma_acaciae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/millerozyma_acaciae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034883_peterozyma_xylosa_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034883_peterozyma_xylosa_160519.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034950_citeromyces_hawaiiensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034950_citeromyces_hawaiiensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000026142_citeromyces_matritensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000026142_citeromyces_matritensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034660_diddensiella_caesifluorescens_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034660_diddensiella_caesifluorescens_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB148_kazachstania_intestinalis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB148_kazachstania_intestinalis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035645_yarrowia_divulgata_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035645_yarrowia_divulgata_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034661_dipodascus_albidus_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034661_dipodascus_albidus_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034749_lipomyces_mesembrius_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034749_lipomyces_mesembrius_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034674_blastobotrys_muscicola_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034674_blastobotrys_muscicola_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/saccharomyces_mikatae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/saccharomyces_mikatae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034758_lipomyces_japonicus_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034758_lipomyces_japonicus_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/wickerhamomyces_anomalus.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/wickerhamomyces_anomalus.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_continentalis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_continentalis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035268_wickerhamomyces_hampshirensis_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035268_wickerhamomyces_hampshirensis_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034979_cyberlindnera_misumaiensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034979_cyberlindnera_misumaiensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035675_kregervanrija_fluxuum_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035675_kregervanrija_fluxuum_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035696_hanseniaspora_singularis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035696_hanseniaspora_singularis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041855_candida_ascalaphidarum_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041855_candida_ascalaphidarum_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034610_saturnispora_hagleri_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034610_saturnispora_hagleri_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lachancea_waltii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lachancea_waltii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/eremothecium_sinecaudum.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/eremothecium_sinecaudum.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035699_cyberlindnera_maclurae_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035699_cyberlindnera_maclurae_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/sugiyamaella_lignohabitans.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/sugiyamaella_lignohabitans.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_versatilis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_versatilis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034748_lipomyces_oligophaga_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034748_lipomyces_oligophaga_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_hamakuensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_hamakuensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/geotrichum_candidum.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/geotrichum_candidum.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/komagataella_pastoris.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/komagataella_pastoris.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/zygosaccharomyces_rouxii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/zygosaccharomyces_rouxii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034757_lipomyces_doorenjongii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034757_lipomyces_doorenjongii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034932_kuraishia_ogatae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034932_kuraishia_ogatae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/tortispora_caseinolytica.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/tortispora_caseinolytica.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034670_blastobotrys_proliferans_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034670_blastobotrys_proliferans_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/eremothecium_cymbalariae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/eremothecium_cymbalariae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yarrowia_lipolytica.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yarrowia_lipolytica.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034643_candida_schatavii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034643_candida_schatavii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035677_kodamaea_ohmeri_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035677_kodamaea_ohmeri_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_arabinofermentans.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_arabinofermentans.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/saprochaete_clavata.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/saprochaete_clavata.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035707_candida_heveicola_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035707_candida_heveicola_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB164_kazachstania_aerobia_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB164_kazachstania_aerobia_160519.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lachancea_meyersii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lachancea_meyersii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lipomyces_starkeyi.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lipomyces_starkeyi.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB155_kazachstania_spencerorum_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB155_kazachstania_spencerorum_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034623_pichia_norvegensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034623_pichia_norvegensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/kazachstania_africana.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/kazachstania_africana.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035667_kurtzmaniella_cleridarum_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035667_kurtzmaniella_cleridarum_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/pichia_membranifaciens.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/pichia_membranifaciens.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041713_debaryomyces_maramus_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041713_debaryomyces_maramus_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lachancea_nothofagi.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lachancea_nothofagi.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_hawaiiensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_hawaiiensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034877_tetrapisispora_namnaonensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034877_tetrapisispora_namnaonensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041824_debaryomyces_subglobosus_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041824_debaryomyces_subglobosus_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035041_ambrosiozyma_pseudovanderkliftii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035041_ambrosiozyma_pseudovanderkliftii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_lockheadii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_lockheadii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB158_kazachstania_viticola_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB158_kazachstania_viticola_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035318_hyphopichia_heimii_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035318_hyphopichia_heimii_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_tenuis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_tenuis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lachancea_kluyveri.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lachancea_kluyveri.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034865_zygosaccharomyces_kombuchaensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034865_zygosaccharomyces_kombuchaensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034890_ogataea_ramenticola_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034890_ogataea_ramenticola_160519.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_glabrata.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_glabrata.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/nakazawaea_peltata.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/nakazawaea_peltata.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lachancea_cidri.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lachancea_cidri.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035047_barnettozyma_pratensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035047_barnettozyma_pratensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/pachysolen_tannophilus.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/pachysolen_tannophilus.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035673_candida_orba_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035673_candida_orba_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034625_pichia_kudriavzevii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034625_pichia_kudriavzevii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_proteae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_proteae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041822_dipodascus_geniculatus_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041822_dipodascus_geniculatus_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_ipomoeae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_ipomoeae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035671_phaffomyces_antillensis_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035671_phaffomyces_antillensis_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035301_pichia_terricola_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035301_pichia_terricola_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035261_candida_ponderosae_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035261_candida_ponderosae_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034631_martiniozyma_abiesophila_161215.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034631_martiniozyma_abiesophila_161215.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041743_candida_hawaiiana_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041743_candida_hawaiiana_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034963_hanseniaspora_clermontiae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034963_hanseniaspora_clermontiae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034933_kuraishia_molischiana_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034933_kuraishia_molischiana_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035639_wickerhamomyces_canadensis_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035639_wickerhamomyces_canadensis_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/ogataea_polymorpha.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/ogataea_polymorpha.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041840_candida_wancherniae_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041840_candida_wancherniae_160928.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/nakaseomyces_bacillisporus.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/nakaseomyces_bacillisporus.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034606_priceomyces_medius_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034606_priceomyces_medius_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034891_ogataea_pini_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034891_ogataea_pini_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_succiphila.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_succiphila.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035046_barnettozyma_populi_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035046_barnettozyma_populi_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_tanzawaensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_tanzawaensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034939_komagataella_pseudopastoris_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034939_komagataella_pseudopastoris_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000026256_zygotorulaspora_mrakii_161215.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000026256_zygotorulaspora_mrakii_161215.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041829_debaryomyces_fabryi_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041829_debaryomyces_fabryi_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035659_saturnispora_dispora_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035659_saturnispora_dispora_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034742_lipomyces_suomiensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034742_lipomyces_suomiensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034614_saturnispora_silvae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034614_saturnispora_silvae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034887_ogataea_trehaloabstinens_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034887_ogataea_trehaloabstinens_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035688_cyberlindnera_xylosilytica_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035688_cyberlindnera_xylosilytica_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035684_kloeckera_hatyaiensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035684_kloeckera_hatyaiensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035302_candida_fragi_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035302_candida_fragi_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_santaceciliae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_santaceciliae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035279_tortispora_starmeri_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035279_tortispora_starmeri_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/hyphopichia_burtonii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/hyphopichia_burtonii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041833_candida_tammaniensis_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041833_candida_tammaniensis_160928.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034636_ogataea_nitratoaversa_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034636_ogataea_nitratoaversa_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035643_yarrowia_bubula_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035643_yarrowia_bubula_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/babjeviella_inositovora.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/babjeviella_inositovora.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034646_wickerhamiella_cacticola_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034646_wickerhamiella_cacticola_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/saccharomycopsis_malanga.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/saccharomycopsis_malanga.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035703_cyberlindnera_americana_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035703_cyberlindnera_americana_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/eremothecium_coryli.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/eremothecium_coryli.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_dekortum.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_dekortum.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034999_cephaloascus_fragrans_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034999_cephaloascus_fragrans_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_carpophila.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_carpophila.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034671_blastobotrys_peoriensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034671_blastobotrys_peoriensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB166_kazachstania_yakushimaensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB166_kazachstania_yakushimaensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034998_cephaloascus_albidus_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034998_cephaloascus_albidus_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034632_candida_athensensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034632_candida_athensensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035335_candida_blattae_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035335_candida_blattae_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035689_candida_mycetangii_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035689_candida_mycetangii_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035048_barnettozyma_salicaria_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035048_barnettozyma_salicaria_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/eremothecium_gossypii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/eremothecium_gossypii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035654_tortispora_ganteri_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035654_tortispora_ganteri_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034673_blastobotrys_nivea_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034673_blastobotrys_nivea_160519.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035011_candida_pyralidae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035011_candida_pyralidae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034967_candida_freyschussii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034967_candida_freyschussii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/naumovozyma_dairenensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/naumovozyma_dairenensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/nakaseomyces_nivariensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/nakaseomyces_nivariensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lachancea_fermentati.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lachancea_fermentati.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB159_kazachstania_solicola_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB159_kazachstania_solicola_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034946_ambrosiozyma_oregonensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034946_ambrosiozyma_oregonensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034881_torulaspora_pretoriensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034881_torulaspora_pretoriensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034988_candida_fructus_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034988_candida_fructus_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/nakaseomyces_delphensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/nakaseomyces_delphensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035650_trigonopsis_variabilis_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035650_trigonopsis_variabilis_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034665_kodamaea_laetipori_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034665_kodamaea_laetipori_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/kluyveromyces_marxianus.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/kluyveromyces_marxianus.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/hanseniaspora_uvarum.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/hanseniaspora_uvarum.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/spathaspora_gorwiae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/spathaspora_gorwiae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/ambrosiozyma_monospora.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/ambrosiozyma_monospora.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/wickerhamiella_domercqiae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/wickerhamiella_domercqiae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034876_tetrapisispora_iriomotensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034876_tetrapisispora_iriomotensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041678_debaryomyces_prosopidis_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041678_debaryomyces_prosopidis_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/scheffersomyces_stipitis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/scheffersomyces_stipitis.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034594_starmera_quercuum_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034594_starmera_quercuum_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/ashbya_aceri.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/ashbya_aceri.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_infanticola.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_infanticola.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041863_candida_gorgasii_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041863_candida_gorgasii_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB153_kazachstania_rosinii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB153_kazachstania_rosinii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034862_zygotorulaspora_florentina_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034862_zygotorulaspora_florentina_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000026274_komagataella_populi_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000026274_komagataella_populi_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB136_kazachstania_bromeliacearum_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB136_kazachstania_bromeliacearum_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB147_kazachstania_taianensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB147_kazachstania_taianensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/nakaseomyces_bracarensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/nakaseomyces_bracarensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/sporopachydermia_quercuum.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/sporopachydermia_quercuum.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB132_kazachstania_martiniae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB132_kazachstania_martiniae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/vanderwaltozyma_polyspora.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/vanderwaltozyma_polyspora.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_tropicalis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_tropicalis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_arizonensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_arizonensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035031_candida_kruisii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035031_candida_kruisii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB134_kazachstania_turicensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB134_kazachstania_turicensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035022_candida_emberorum_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035022_candida_emberorum_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000026197_brettanomyces_custersianus_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000026197_brettanomyces_custersianus_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035633_candida_hispaniensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035633_candida_hispaniensis_160519.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034899_ogataea_kodamae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034899_ogataea_kodamae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034974_deakozyma_indianensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034974_deakozyma_indianensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035297_priceomyces_castillae_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035297_priceomyces_castillae_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034604_sporopachydermia_lactativora_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034604_sporopachydermia_lactativora_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_matae_maris.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_matae_maris.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000026137_ambrosiozyma_ambrosiae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000026137_ambrosiozyma_ambrosiae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034901_ogataea_methylivora_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034901_ogataea_methylivora_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041818_magnusiomyces_tetrasperma_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041818_magnusiomyces_tetrasperma_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034629_pichia_exigua_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034629_pichia_exigua_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035032_candida_gatunensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035032_candida_gatunensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lodderomyces_elongisporus.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lodderomyces_elongisporus.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034655_botryozyma_nematodophila_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034655_botryozyma_nematodophila_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_drakensbergensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_drakensbergensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_dubliniensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_dubliniensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000041862_candida_golubevii_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000041862_candida_golubevii_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/spathaspora_girioi.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/spathaspora_girioi.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034990_candida_corydali_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034990_candida_corydali_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035687_cyberlindnera_suaveolens_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035687_cyberlindnera_suaveolens_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/scheffersomyces_lignosus.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/scheffersomyces_lignosus.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034667_blastobotrys_serpentis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034667_blastobotrys_serpentis_160519.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB160_kazachstania_kunashirensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB160_kazachstania_kunashirensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035274_wickerhamomyces_alni_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035274_wickerhamomyces_alni_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/ogataea_methanolica.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/ogataea_methanolica.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/meyerozyma_guilliermondii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/meyerozyma_guilliermondii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lachancea_mirantina.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lachancea_mirantina.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHAB133_kazachstania_unispora_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHAB133_kazachstania_unispora_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_hibisci.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_hibisci.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_bowlesiae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_bowlesiae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/cyberlindnera_jadinii.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/cyberlindnera_jadinii.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/kluyveromyces_lactis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/kluyveromyces_lactis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034637_ogataea_populiabae_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034637_ogataea_populiabae_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/alloascoidea_hylecoeti.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/alloascoidea_hylecoeti.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034884_peterozyma_toletana_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034884_peterozyma_toletana_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/hanseniaspora_vinae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/hanseniaspora_vinae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_cerradonensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_cerradonensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034675_blastobotrys_mokoenaii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034675_blastobotrys_mokoenaii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/candida_sojae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/candida_sojae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034754_lipomyces_arxii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034754_lipomyces_arxii_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/lachancea_dasiensis.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/lachancea_dasiensis.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034875_tetrapisispora_fleetii_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034875_tetrapisispora_fleetii_160519.txt &

wait

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034681_blastobotrys_americana_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034681_blastobotrys_americana_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/spathaspora_arborariae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/spathaspora_arborariae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/metschnikowia_aberdeeniae.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/metschnikowia_aberdeeniae.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/saccharomyces_paradoxus.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/saccharomyces_paradoxus.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034613_saturnispora_serradocipensis_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034613_saturnispora_serradocipensis_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000034635_nadsonia_fulvescens_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000034635_nadsonia_fulvescens_160519.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035242_zygoascus_ofunaensis_160928.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035242_zygoascus_ofunaensis_160928.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035672_phaffomyces_thermotolerans_160613.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035672_phaffomyces_thermotolerans_160613.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/arxula_adeninivorans.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/arxula_adeninivorans.txt &

perl pfam_scan.pl -fasta ../../0_332yeast_genomes/332_genome_annotations/pep/yHMPu5000035044_barnettozyma_californica_160519.max.pep -dir ../../Pfam/ -cpu 1 >> ./output/yHMPu5000035044_barnettozyma_californica_160519.txt &

wait
