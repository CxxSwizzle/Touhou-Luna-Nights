/*************************************
TOUHOU LUNA NIGHTS AUTO SPLTTER
ver 1.0

Usable in Speedruns

PROGRAMMER: REM

************************************/

state("touhou_luna_nights")
{
    //addresses go here
    double gameStart : 0xD84AFC, 0x4,0x2C,0x10,0x2E8, 0x0;
    /*
    2 - main menu, 3 - file select, 4 - death
    5 - stage 1, 6 - stage 2, 7 - stage 3
    8 - stage 4, 9 - stage 5, 10 - stage 6
    13 - credits 1
    */

    
    int level: 0xD99898;
    int frameRate: 0xD998D4;
    int IGT: 0xCF1604;

    double gold: 0xD84AFC, 0x0,0x2C, 0x10, 0x1A4, 0x0;
    double health : 0x00D84AFC, 0x00,0x2C,0x10,0x2B8, 0x0;
    double roomX: 0xD84AFC, 0xC, 0x134, 0x2C, 0x10, 0x3CC, 0x0;
    double roomY: 0xD84AFC, 0x8, 0x2C, 0x10, 0x18, 0x0;
    float posX: 0xD8E454, 0x0, 0x38, 0xC, 0x44, 0x8, 0xA0;
    float posY: 0xD8E454, 0x0, 0x38, 0xC, 0x44, 0x8, 0xA4;
    //upgrades
    double totalSkills: 0xD7D930, 0x2C, 0x10, 0x348, 0xC0;
    double timeUpgrades:  0xD7D930, 0x2C, 0x10, 0x348,0x0;
    double abilityUpgrades: 0xD7D930, 0x2C, 0x10, 0x114,0x160;
    double knifeUpgrades: 0xD7D930, 0x2C, 0x10, 0x348,0x10;
    double mpUpgrades: 0xD7D930, 0x2C, 0x10, 0x348,0x60;
    double hpUpgrades: 0xD7D930, 0x2C, 0x10, 0x348,0x70;
    double inDialogue: 0xD99870, 0xD4, 0x2C, 0x20, 0x2C, 0x10, 0x684, 0x0;
    double inCutscene: 0xD99870, 0xD4, 0x2C, 0x20, 0x2C, 0x10, 0x1EC, 0x0;
    double velocity: 0xD84AFC, 0xC, 0x134, 0x134, 0x2C, 0x10, 0x168, 0x0;
    string4 cutsceneDialogue: 0xD99870, 0x80, 0x2C, 0x10, 0x18C, 0x0, 0x0, 0x0;
    
    //towers
    double towerYellowHP: 0xCF14CC, 0xCE0, 0xC, 0x2C, 0x10,0x114,0x0;
    double towerPinkHP: 0xCF14CC, 0x7A8, 0xC, 0x2C, 0x10,0x114,0x0;
    double towerRedHP: 0xCF14CC, 0x168, 0xC, 0x2C, 0x10,0x114,0x0;
    double towerTealHP: 0xCF14CC, 0x160, 0xC, 0x2C, 0x10,0x114,0x0;
    double towerSaphireHP: 0xCF14CC, 0x9F8, 0xC, 0x2C, 0x10,0x114,0x0;
    double towerDiamondHP: 0xCF14CC, 0xA00, 0xC, 0x2C, 0x10,0x114,0x0;
    double towerEmeraldHP: 0xCF14CC, 0xA08, 0xC, 0x2C, 0x10,0x114,0x0;

    //pickup pointers

    double stage1pickups: 0xDA4AA4, 0x200, 0x2C, 0x10, 0xAE0, 0x0;
    double stage2pickups: 0xDA4AA4, 0x194, 0x2C, 0x10, 0xAE0, 0x0;
    double stage3pickups: 0xDA4AA4, 0x174, 0x2C, 0x10, 0xAE0, 0x0;
    double stage4pickups: 0xDA4AA4, 0x164, 0x2C, 0x10, 0xAE0, 0x0;
    double stage5pickups: 0xDA4AA4, 0x12C, 0x2C, 0x10, 0xAE0, 0x0;
    double stage6pickups: 0xDA4AA4, 0x1FC, 0x2C, 0x10, 0xAE0, 0x0;

    /* important strings
        #s06 - Start Meiling fight
        #t08 - Meiling defeated
        #s10 - End of fight dialogue after Meiling fight

        #s19 - Start Marisa fight
        #t21 - Marisa defeated
        #s23 - End of fight dialogue after Marisa fight

        #s24 - Start of Patche fight
        #t26 - Patche defeated
        #s28 - End of fight dialogue after Patche fight

        #s33 - Start of Remilia fight
        #t36 - Remilia defeated
        #s37 - First snap
        #s39 - End of fight dialogue after Remilia fight

        #s41 - Start Nitori fight
        #t44 - Nitori defeated

        #s47/#s48 - Start Flandre fight (depends on how many gems given, but only one of them plays, maybe check for both?)

        #t51 - Flandre defeated
        #s53 - End of fight dialogue after Flandre fight (Final snap, end of Any%)

        #s61 - Start of Reimu (Ground) fight
        #t63 - Reimu (Ground) defeated

        #s64 - Start of Reimu (Air) fight
        #t65 - Reimu (Air) defeated
        #s71 - End of fight dialogue after Reimu fight (End of EX%)

        #s75 - Start of Cirno fight
        #t77 - Cirno defeated
        #s78 - End of fight dialogue after Cirno fight

    */

}
startup
{


    

    settings.Add("Read_Me", false, "READ ME");
    settings.Add("Split_Stage", false,"Stages");
    settings.Add("Boss_Kill", true, "Boss Kill");
    settings.Add("Boss_Entry", true,"Boss Entry");
    settings.Add("Skips", true, "Skips");
    settings.Add("Abilities", true,"Abilities");
    settings.Add("Upgrades", true, "Upgrades");
    settings.Add("Skills", true, "Skills");
    settings.Add("Towers", false, "Towers");
    settings.Add("Dunks", false, "Dunk");
    settings.Add("Keys", false, "Keys");
    settings.SetToolTip("Keys", "Check to split on KEY pickups");
    settings.SetToolTip("Dunks", "Check to split on a new dunk");
    settings.SetToolTip("Towers", "Check to split on Jewel Tower destruction");
    settings.SetToolTip("Skills", "Check to split on new skills");
    settings.SetToolTip("Upgrades", "Check to split on stat upgrades");
    settings.SetToolTip("Abilities", "Check to split on progression items");
    settings.SetToolTip("Skips", "Check to split Purple/Yellow skip");
    settings.SetToolTip("Split_Stage", "Check to split between Stages, WARNING will split on EVERY stage transition");
    settings.SetToolTip("Boss_Kill", "Check to split on Boss Kill Dialogue");
    settings.SetToolTip("Boss_Entry", "Check to split on when entering a boss room");
    settings.SetToolTip("Read_Me", "ASL will only work preset run names: Any%, Any% No Major Skips, EX%, EX% No Major Skips, RBO, Dunk%, 100%");
}
    
init
{
    /*
    1 = any%
    2 = any% nms
    3 = ex%
    4 = ex% nms
    5 = RBO
    6 = Dunk%
    7 = 100%
    */

    
    //tower id array
    //[0,0,0,0,0,0,0] - INT
    //[1,2,3,4,5,6,7]
    vars.tower_id = new int[7];
    //dunk id array
    vars.dunk_id = new int[45];
    //GET ALL THE ROOM IDS
    

    vars.category = 0;
    vars.new_file = 1;
    vars.knife_splits = 0;
    vars.stopwatch_splits = 0;
    vars.hp_splits = 0;
    vars.mp_splits = 0;
    vars.ability_splits = 0;
    vars.skill_splits = 0;
    vars.can_split = 1;
    vars.last_roomX = 1;
    vars.last_roomY = 1;
    vars.towers_destroyed = 0;
    vars.total_dunks = 0;
    vars.total_keys = 0;
    //boss flags
    vars.in_nitori = 0;
    vars.in_flan = 0;
    vars.in_reimu_ground = 0;
    vars.in_reimu_air = 0;
    vars.in_boss = 0;
    vars.final_split = 0;
    vars.final_dialogue = 0;
    vars.final_dialogue_2 = 0;
    vars.boss_defeated = 0;
    vars.to_credits = 0;
    //skip flags
    vars.purple_skip = 0;
    vars.yellow_skip = 0;
    vars.teal_skip = 0;
    //timer
    vars.total_time = 0;

    if(timer.Run.CategoryName == "Any%")
        vars.category = 1;
    else if(timer.Run.CategoryName == "Any% No Major Skips")
        vars.category = 2;
    else if(timer.Run.CategoryName == "EX%")
        vars.category = 3;
    else if(timer.Run.CategoryName == "EX% No Major Skips")
        vars.category = 4;
    else if(timer.Run.CategoryName == "RBO")
        vars.category = 5;
    else if(timer.Run.CategoryName == "Dunk%")
        vars.category = 6;
    else if(timer.Run.CategoryName == "100%")
        vars.category = 7;
    //print(vars.category.ToString());
}
start 
{

    if(vars.category == 0)
        return false;
    if(current.level != 3)
        return false;
    if(current.gameStart == 1)
    {
        if(settings["Dunks"])
        {
            vars.dunk_id = new int[45] {0, 8,  11, 0, 4,  15, 0, 16, 13, 0, 27, 17, 0, 20, 14, 
                                        0, 21, 11, 0, 29, 16, 0, 30, 11, 0, 36, 11, 0, 25, 8, 
                                        0, 32, 6,  0, 32, 6,  0, 25, 3,  0, 23, 2,  0, 30, 3};
                
        }
        
        return true;
    }
         
}
split
{
    //update parameters so the game doesn't split on a !new save file
    if(vars.new_file == 1 && current.level != old.level && old.level < 5)
    {
        vars.knife_splits = current.knifeUpgrades;
        vars.stopwatch_splits = current.timeUpgrades;
        vars.hp_splits = current.hpUpgrades;
        vars.mp_splits = current.mpUpgrades;
        vars.ability_splits = current.abilityUpgrades;
        vars.skill_splits = current.totalSkills;

        vars.new_file = 0;

        return false;
    }
    
    //if you have splitted, and are still in same cutscene don't split again.
    if(vars.can_split == 0)
        return false;


    //If you're not in a stage don't split
    if(current.level < 5 || current.level > 10)
        return false;
    
    if(vars.to_credits == 1)
        return false;
    /************************
    Special Split Cases
    *************************/
    //if it's the final split do something special
    if(vars.final_split == 1)
    {
        //print("AFTER FLAN");
        //if in the final dialogue
        if(current.inDialogue == 1)
        {
            //TODO MAKE THIS MORE PROTECTED
            //flan fight
            if(String.Equals(current.cutsceneDialogue, "#s53"))
            {
                //print("START DIALOGUE");
                vars.final_dialogue = 1;
                return false;
            }    
            //reimu fight
            if(String.Equals(current.cutsceneDialogue, "#s70"))
            {
                //vars.final_dialogue_2 = 1;
                return false;
            }
            //reimu fight
            if(String.Equals(current.cutsceneDialogue, "#s71"))
            {
                vars.final_dialogue = 1;
                return false;
            }
        }
        //any% or NMS or EX% or EX% NMS
        if(vars.final_dialogue == 1 && (current.inDialogue < old.inDialogue))
        {
            print("SET TIME");

            vars.total_time = current.IGT;
            return false;
        }

        if(vars.final_dialogue_2 == 1 && (current.inCutscene > old.inCutscene))
        {
            print("SET EX TIME");
            vars.total_time = current.IGT;
            return false;
        }
        if(vars.total_time > 0)
        {
            
            //amy% or NMS
            if(vars.category == 1 || vars.category == 2 )
            {
                
                //if the frame is on the snap
                if((current.IGT - vars.total_time)/60.00 >= 2)
                 {
                    //print("SNAP");
                    vars.final_split = 0;
                    vars.final_dialogue = 0;
                    vars.can_split = 0;
                    vars.to_credits = 1;
                    return true;
                }
            }
            //EX% or EX% NMS or 100%
            if(vars.category == 3 || vars.category == 4 || vars.category == 7)
            {
                //don't split for a non any% run
                if(current.level == 9)
                {
                    vars.final_split = 0;
                    vars.final_dialogue = 0;
                    vars.can_split = 0;
                    
                    return false;
                }
                //print("Mech");
                if((current.IGT - vars.total_time)/60.00 >= 2.7)
                {
                    print("Lid Closed");
                    vars.final_split = 0;
                    vars.final_dialogue = 0;
                    vars.can_split = 0;
                    vars.to_credits = 1;
                    return true;  
                }
            }
        }

        return false;
    }

    /************
    TOWER SPLITS
    ************/
    if(settings["Towers"] && vars.towers_destroyed < 7)   
    {
        if(current.level == 5)
        {
            if(vars.tower_id[0] == 0 && current.towerYellowHP <= 0 && old.towerYellowHP > 0 && old.towerYellowHP < 100)
            {
                print("Yellow Tower Destroyed");
                vars.tower_id[0] = 1;
                vars.towers_destroyed++;
                return true;
            }
        }
        if(current.level == 7)
        {
            
            if(vars.tower_id[1] == 0 && current.towerPinkHP <= 0 && old.towerPinkHP > 0 && old.towerPinkHP < 100)
            {
                print(old.towerPinkHP.ToString());
                print("Pink Tower Destroyed");
                vars.tower_id[1] = 1;
                vars.towers_destroyed++;
                return true;
            }
        }
        if(current.level == 9)
        {
            if(vars.tower_id[2] == 0 && current.towerRedHP <= 0 && old.towerRedHP > 0 && old.towerRedHP < 100)
            {
                print(old.towerRedHP.ToString());
                print("Red Tower Destroyed");
                vars.tower_id[2] = 1;
                vars.towers_destroyed++;
                return true;
            }
            if(vars.tower_id[3] == 0 && current.towerTealHP <= 0 && old.towerTealHP > 0 && old.towerTealHP < 100)
            {
                print(old.towerTealHP.ToString());
                print("Teal Tower Destroyed");
                vars.tower_id[3] = 1;
                vars.towers_destroyed++;
                return true;
            }
        }
        if(current.level == 10)
        {
            if(vars.tower_id[4] == 0 && current.towerSaphireHP <= 0 && old.towerSaphireHP > 0 && old.towerSaphireHP < 100)
            {
                print(old.towerSaphireHP.ToString());
                print("Saphire Tower Destroyed");
                vars.tower_id[4] = 1;
                vars.towers_destroyed++;
                return true;
            }
            if(vars.tower_id[5] == 0 && current.towerEmeraldHP <= 0 && old.towerEmeraldHP > 0 && old.towerEmeraldHP < 100)
            {
                print(old.towerEmeraldHP.ToString());
                print("Emerald Tower Destroyed");
                vars.tower_id[5] = 1;
                vars.towers_destroyed++;
                return true;
            }
            if(vars.tower_id[6] == 0 && current.towerDiamondHP <= 0 && old.towerDiamondHP > 0 && old.towerDiamondHP < 100)
            {
                print(old.towerDiamondHP.ToString());
                print("Diamond Tower Destroyed");
                vars.tower_id[6] = 1;
                vars.towers_destroyed++;
                return true;
            }
        }
    }
    /***************
    DUNK SPLITS
    ***************/
	if(settings["Dunks"] && vars.total_dunks < 15)
    {
        //if a dunk was made // we know that it has to be in the right room.
        if(current.gold - old.gold == 10)
        {
            /**
            go through each bin of the current stage
            interate by 3
            0 offset = dunked(bool)
            1 offset = X coord(float)
            2 offset = Y coord(float)
            **/
            for(int i = 0, id = (current.level - 5)*9; i < 3; i++)
            {
                //if already dunked - ignore
                if(vars.dunk_id[id+i*3] == 1)
                    continue;
                //in the current room has not been dunked update
                if(vars.dunk_id[id + 1 + i*3] == current.roomX && vars.dunk_id[id+2 +i*3] == current.roomY)
                {	
                    vars.dunk_id[id + i*3] = 1;
                    vars.total_dunks++;
                    return true;
                }
            }
        }
    }
    /**************
    KEY/PICKUP SPLITS
    **************/
    if(settings["Keys"] && vars.total_keys < 6)
    {
        if(current.level == 5)
        {
            //item value for stage 1 key
           if(current.stage1pickups == 90 && old.stage1pickups == 0)
           {
                vars.total_keys++;
                return true;
           } 
        }
        if(current.level == 6)
        {
            //item value for stage 2 key
           if(current.stage2pickups == 91 &&  old.stage2pickups == 0)
           {
                vars.total_keys++;
                return true;
           } 
        }
        if(current.level == 7)
        {
            //item value for stage 3 key
           if(current.stage3pickups == 92 &&  old.stage3pickups == 0)
           {
                vars.total_keys++;
                return true;
           } 
        }
        if(current.level == 9)
        {
            //item value for stage 5 key 1
           if((current.stage5pickups == 93 || current.stage5pickups == 94) &&  old.stage5pickups == 0)
           {
                vars.total_keys++;
                return true;
           } 
        }
        if(current.level == 9)
        {
            //item value for stage 5 key 2
           if(current.stage5pickups == 94 && old.stage5pickups == 0)
           {
                vars.total_keys++;
                return true;
           } 
        }
        if(current.level == 10)
        {
            //item value for stage 6 key
           if(current.stage6pickups == 95 && old.stage6pickups == 0)
           {
                vars.total_keys++;
                return true;
           } 
        }
    }
    /*************************
    CHARACTER UPGRADE SPLITS
    *************************/
    if(settings["Upgrades"])
    {
        if(vars.stopwatch_splits < current.timeUpgrades)
        {
            //print("STOPWATCH GET");
           
            vars.stopwatch_splits++;
            //check for the first stopwatch
            if(vars.stopwatch_splits == 1)
                return true;
            //only do further splits for 100%
            if(vars.category == 7)
                return true;
            else
                return false;
        }
        //if you pick up a knife upgrade
        if(vars.knife_splits < current.knifeUpgrades)
        {
            //print("KNIFE GET");
           
            vars.knife_splits++;
            return true;
        }
        if(vars.hp_splits < current.hpUpgrades)
        {
            //print("HP GET");

            vars.hp_splits++;
            return true;
        }
        if(vars.mp_splits < current.mpUpgrades)
        {
            //print("MP GET");

            vars.mp_splits++;
            return true;
        }
    }
    /*****************************
    CHARACTER PROGRESSION SPLITS
    *****************************/
    if(settings["Abilities"] && vars.ability_splits < current.abilityUpgrades)
    {
        //print("ABILITY GET");
        
        vars.ability_splits++;
        return true;
    }    
    /************************
    CHARACTER SKILL SPLITS
    ************************/
    if(settings["Skills"] && vars.skill_splits < current.totalSkills)
    {   
        //print("SKILL GET");

        vars.skill_splits++;
        //if it's a shop ticket(ignore it)
        //marisa ticket
        if(current.level == 6 && current.roomX == 22)
            return false;
        //stage 5 ticket
        if(current.level == 9 && current.roomX == 21)
            return false;

        return true;
    }
    /**************
    BOSS SPLITS
    **************/
    if(current.inCutscene == 1)
    {
        if(vars.boss_defeated == 1)
            return false;
        /*****************
        BOSS ENTRY SPLITS
        *****************/
        if(vars.in_boss == 0)
        {
             //meiling fight - start
            if(current.level == 5 && current.roomX == 17)
            {
                //print("MEILING START");

                vars.can_split = 0;
                vars.in_boss = 1;
            }          
            //marisa fight - start
            if(current.level == 6 && current.roomX == 23 && current.roomY == 11)
            {
                //print("MARISA START");

                vars.can_split = 0;
                vars.in_boss = 1;
            }
            //patchy fight - start
            if(current.level == 7 && current.roomX == 37 && current.roomY == 11)
            {
                //print("PATCHY START");

                vars.can_split = 0;
                vars.in_boss = 1;
            }
            //remilia fight - start
            if(current.level == 8 && current.roomX == 24 && current.roomY == 8)
            {
                //print("REMILIA START");

                vars.can_split = 0;
                vars.in_boss = 1;
            }
            //nitori fight - start
            if(current.level == 9 && current.roomX == 21 && current.roomY == 1 && vars.in_boss == 0)
            {
                //print("NITORI ENTRY");

                vars.can_split = 0;
                vars.in_boss = 1;
            }
            if(current.level == 10 && current.roomX ==  11 && current.roomY == 6)
            {
                print("CIRNO ENTRY");
                vars.can_split = 0;
                vars.in_boss = 1;
            }
            if(current.level == 10 && current.roomX == 16  && current.roomY == 1)
            {
                print("Reimu Entry");
                vars.can_split = 0;
                vars.in_boss = 1;
            }
            if(settings["Boss_Entry"] && vars.in_boss == 1)
                return true;
            else
                return false;
        
        }
        /***********************
        BOSS KILL SPLIT
        ***********************/

        if(vars.in_boss == 0)
            return false;

        //meiling - remilia (single stage fights)
        if(current.level >= 5 && current.level < 9 && vars.in_boss == 1)
        {
            //print("1 PHASE BOSS DEFEAT");
            vars.boss_defeated = 1;
            vars.in_boss = 0;
            vars.can_split = 0;
        }  
        //flan fight - end(2 part fight)
        if(current.level == 9 && vars.in_boss == 2)
        {
            //print("FLAN DEFEAT");
            vars.in_boss = 0;
            vars.boss_defeated = 1;
            vars.final_split = 1;
        }     
        //nitori fight - end && flan start
        if(current.level == 9 && vars.in_boss == 1)
        {
            //print("NITORI DEFEAT");
            vars.in_boss++;
            vars.can_split = 0;
        }

        //reimu fight
        if(current.level == 10 && vars.in_boss == 2)
        {
            print("Reimu Air Defeated");
            vars.in_boss = 0;
            vars.boss_defeated = 1;
            vars.final_split = 1;
        }

        //cirno && reimu_ground
        if(current.level == 10 && vars.in_boss == 1)
        {
            if(current.roomY == 6)
            {
                print("Cirno Defeated");
                vars.in_boss = 0;
            }
            else
            {
                print("Reimu Ground Defeated");
                vars.in_boss++;
            }
                
            vars.can_split = 0;
        }

        if(settings["Boss_Kill"] && vars.in_boss != 1)
            return true;   
        else
            return false;
    }
    /**********************
    STAGE TRANSITION SPLITS

    TODO MAKE IT SO YOU DON'T
    SPLIT BETWEEN 1 ROOM AREAS
    create a variable that changes when you switch rooms
    **********************/
    if(settings["Split_Stage"] && current.level != old.level)
    {
        //print("STAGE TRANSITION");

        if(old.roomX == vars.last_roomX && old.roomY == vars.last_roomY)
            return false;
        
        if(old.level >=5 && old.level <= 10)
            return true;
        else
            return false;
    }

    /**********************
    SPECIAL SKIPS
    PURPLE/YELLOW
    **********************/
    
    if(!settings["Skips"])
        return false;
    
    //teal skip(only for any%)
    if(vars.teal_skip != 1 && vars.category == 1 && old.level == 6 && current.level == 9)
    {
        //print("Teal Skip");
        vars.teal_skip = 1;
        return true;
    }

    //purple skip(only for any%)
    
    //if you are in the room with the purple door and running any% and haven't done purple skip
    if(vars.purple_skip != 1 && vars.category == 1 && current.level == 9 && current.roomY == 3 && current.roomX == 28)
    {
        //if the last room was not purple door and beyond purple door
        if(vars.last_roomX == 29 && current.posX <= 6340)
        {
            //print("PURPLE SKIP");
            vars.purple_skip = 1;
            return true;
        }
            
    }
    //yellow skip (rbo, dunk%, ex%, 100%)
    if(vars.yellow_skip != 1 && current.level == 7 && current.roomY == 14 && current.roomX == 28)
    {
        //if the last room was not purple door and beyond purple door
        if(vars.last_roomX == 27 && current.posX >= 1350)
        {
            //print("YELLOW SKIP");
            vars.yellow_skip = 1;
            return true;
        }
            
    }
    return false;
}
onReset
{
    for(int i = 0; i < vars.tower_id.Length; ++i)
    {
        vars.tower_id[i] = 0;
    }
    vars.dunk_id = 0;
    vars.total_time = 0;
    vars.stopwatch_splits = 0;
    vars.ability_splits = 0;
    vars.knife_splits = 0;
    vars.hp_splits = 0;
    vars.mp_splits = 0;
    vars.skill_splits = 0;
    vars.can_split = 1;
    vars.in_nitori = 0;
    vars.in_flan = 0;
    vars.in_reimu_ground = 0;
    vars.in_reimu_air = 0;
    vars.in_boss = 0;
    vars.final_split = 0;
    vars.final_dialogue = 0;
    vars.final_dialogue_2 = 0;
    vars.last_roomX = 1;
    vars.last_roomY = 1;
    vars.purple_skip = 0;
    vars.yellow_skip = 0;
    vars.teal_skip = 0;
    vars.boss_defeated = 0;
    vars.new_file = 1;
    vars.towers_destroyed = 0;
    vars.total_dunks = 0;
    vars.total_keys = 0;
    vars.to_credits = 0;
}
reset
{
    //if in the main menu reset all variables
    if(current.level == 2)
        return true;
}
/*isLoading
{
    if(current.IGT == old.IGT)
        return true;
    else
        return false;
}
gameTime
{
    vars.test = current.IGT - vars.total_time;
    print(vars.test.ToString());
    return TimeSpan.FromSeconds((current.IGT - vars.total_time)/60);
    
}*/
update
{
    if(current.inCutscene < old.inCutscene)
        vars.can_split = 1;

    
    if(current.level != old.level)
    {
        //print("changing levels");
        vars.boss_defeated = 0;
        vars.to_credits = 0;
    }
    else
    {
        if(current.roomX != old.roomX)
        {
            //print("changing rooms X");
            vars.last_roomX = old.roomX;
        }
        if(current.roomY != old.roomY)
        {
            //print("changing rooms Y");
            vars.last_roomY = old.roomY;
        }   
    }

}
