def crystal_system():
    Crystal_system_dict  = {
        1:"Triclinic",    # 1-2
        2:"Monoclinic",   # 3-15
        3:"Orthorhombic", # 16-74
        4:"Tetragonal",   # 75-142
        5:"Trigonal",     # 143-167
        6:"Hexagonal",    # 168-194
        7:"Cubic"         # 195-230
    }
    Crystal_system = [0]

    for idx in range(230):
        spg_num = idx+1
        if spg_num<=2:
            cry_sys=1
        elif spg_num<=15:
            cry_sys=2
        elif spg_num<=74:
            cry_sys=3
        elif spg_num<=142:
            cry_sys=4
        elif spg_num<=167:
            cry_sys=5
        elif spg_num<=194:
            cry_sys=6
        elif spg_num<=230:
            cry_sys=7
        Crystal_system.append(cry_sys)
    return Crystal_system, Crystal_system_dict