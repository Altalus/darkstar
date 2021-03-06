---------------------------------------------
-- Seraph Blade
--
-- Description: Deals light elemental damage. Damage varies with TP.
-- Type: Physical
-- Utsusemi/Blink absorb: 1 Shadow?
-- Range: Melee
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    mob:messageBasic(43, 0, 37);
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1.25;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*4,ELE_LIGHT,dmgmod,TP_DMG_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_LIGHT,MOBPARAM_1_SHADOW);

    skill:setSkillchain(37);

    target:delHP(dmg);
    return dmg;
end;
