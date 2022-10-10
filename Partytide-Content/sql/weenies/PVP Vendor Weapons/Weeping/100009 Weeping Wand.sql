DELETE FROM `weenie` WHERE `class_Id` = 100009;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100009, 'starterweepingwand', 35, '2022-08-18 00:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100009,   1,      32768) /* ItemType - Caster */
     , (100009,   5,        150) /* EncumbranceVal */
     , (100009,   8,         10) /* Mass */
     , (100009,   9,   16777216) /* ValidLocations - Held */
     , (100009,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (100009,  18,          1) /* UiEffects - Magical */
     , (100009,  19,       1) /* Value */
     , (100009,  33,          1) /* Bonded - Bonded */
     , (100009,  36,       9999) /* ResistMagic */
     , (100009,  46,        512) /* DefaultCombatStyle - Magic */
     , (100009,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100009,  94,         16) /* TargetType - Creature */
     , (100009, 106,        325) /* ItemSpellcraft */
     , (100009, 107,        800) /* ItemCurMana */
     , (100009, 108,        800) /* ItemMaxMana */
     , (100009, 109,         50) /* ItemDifficulty */
     , (100009, 114,          1) /* Attuned - Attuned */
     , (100009, 117,         60) /* ItemManaCost */
     , (100009, 150,        103) /* HookPlacement - Hook */
     , (100009, 151,          2) /* HookType - Wall */
     , (100009, 158,          2) /* WieldRequirements - RawSkill */
     , (100009, 159,         33) /* WieldSkillType - LifeMagic */
     , (100009, 160,        300) /* WieldDifficulty */
     , (100009, 166,         31) /* SlayerCreatureType - Human */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100009,  22, True ) /* Inscribable */
     , (100009,  69, False) /* IsSellable */
     , (100009,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100009,   5,  -0.025) /* ManaRate */
     , (100009,  29,       1) /* WeaponDefense */
     , (100009,  39,       1) /* DefaultScale */
     , (100009, 138,     1.4) /* SlayerDamageBonus */
     , (100009, 144,    0.02) /* ManaConversionMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100009,   1, 'Weeping Wand') /* Name */
     , (100009,  15, 'A wand infused with the Heart of the Innocent.The wand appears to be guided by a preternatural force seeking flesh and blood with great tenacity.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100009,   1, 0x02000F1C) /* Setup */
     , (100009,   3, 0x20000014) /* SoundTable */
     , (100009,   8, 0x06002AD9) /* Icon */
     , (100009,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100009,  27, 0x400000E1) /* UseUserAnimation - UseMagicWand */
     , (100009,  28,       2970) /* Spell - Hunter's Lash */
     , (100009,  36, 0x0E000016) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100009,   616,      2)  /* Life Magic Mastery Other VI */
     , (100009,   640,      2)  /* War Magic Mastery Other VI */
     , (100009,  1426,      2)  /* Focus Self VI */
     , (100009,  1450,      2)  /* Willpower Self VI */
     , (100009,  2691,      2)  /* Moderate Mana Conversion Prowess */;
