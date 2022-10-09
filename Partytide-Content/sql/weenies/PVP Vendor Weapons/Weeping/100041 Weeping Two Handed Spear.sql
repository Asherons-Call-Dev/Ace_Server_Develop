DELETE FROM `weenie` WHERE `class_Id` = 100041;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100041, 'starterweepingtwohandedspear', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100041,   1,          1) /* ItemType - MeleeWeapon */
     , (100041,   5,        650) /* EncumbranceVal */
     , (100041,   9,   33554432) /* ValidLocations - TwoHanded */
     , (100041,  16,          1) /* ItemUseable - No */
     , (100041,  18,          1) /* UiEffects - Magical */
     , (100041,  19,       1) /* Value */
     , (100041,  33,          1) /* Bonded - Bonded */
     , (100041,  36,       9999) /* ResistMagic */
     , (100041,  44,         47) /* Damage */
     , (100041,  45,          2) /* DamageType - Pierce */
     , (100041,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (100041,  47,          2) /* AttackType - Thrust */
     , (100041,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (100041,  49,          1) /* WeaponTime */
     , (100041,  51,          5) /* CombatUse - TwoHanded */
     , (100041,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100041, 106,        300) /* ItemSpellcraft */
     , (100041, 107,        800) /* ItemCurMana */
     , (100041, 108,        800) /* ItemMaxMana */
     , (100041, 109,         50) /* ItemDifficulty */
     , (100041, 114,          1) /* Attuned - Attuned */
     , (100041, 151,          2) /* HookType - Wall */
     , (100041, 158,          2) /* WieldRequirements - RawSkill */
     , (100041, 159,         41) /* WieldSkillType - TwoHandedCombat */
     , (100041, 160,        325) /* WieldDifficulty */
     , (100041, 166,         31) /* SlayerCreatureType - Human */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100041,  22, True ) /* Inscribable */
     , (100041,  69, False) /* IsSellable */
     , (100041,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100041,   5,  -0.025) /* ManaRate */
     , (100041,  21,       0) /* WeaponLength */
     , (100041,  22,     0.5) /* DamageVariance */
     , (100041,  26,       0) /* MaximumVelocity */
     , (100041,  29,    1.18) /* WeaponDefense */
     , (100041,  62,    1.23) /* WeaponOffense */
     , (100041,  63,       1) /* DamageMod */
     , (100041, 138,     3.4) /* SlayerDamageBonus */
     , (100041, 151,       1) /* IgnoreShield */
     , (100041, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100041,   1, 'Weeping Two Handed Spear') /* Name */
     , (100041,  15, 'A spear infused with the Heart of the Innocent.The weapon appears to be guided by a preternatural force seeking flesh and blood with great tenacity.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100041,   1, 0x02000F18) /* Setup */
     , (100041,   3, 0x20000014) /* SoundTable */
     , (100041,   8, 0x06006B93) /* Icon */
     , (100041,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100041,  5074,      2)  /* Moderate Two Handed Combat Aptitude */;
