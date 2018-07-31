# TerraMirabilis

## Notes

The code below has to be copied into the built-out TerrainStyle.artdef file *after* Modbuddy build within the FEATURE_WULINGYUAN element, TerrainAsset param:

	<Element class="AssetObjects..BLPEntryValue">
		<m_EntryName text="ART_DEF_TERRAIN_ASSET_NWON_HALONGBAY"/>
		<m_XLPClass text="TerrainAsset"/>
		<m_XLPPath text="TerrainAssetSet_Base.xlp"/>
		<m_BLPPackage text="terrain/TerrainAssetSet_Base"/>
		<m_LibraryName text="TerrainAsset"/>
		<m_ParamName text="TerrainAsset"/>
	</Element>			
			
This is because the Ha Long Bay asset is not available in the SDK Assets and so the entry is blanked out by the build.

--

This code needs to replace the action criteria section in the modinfo file after the mod has been built.

    <ActionCriteria>
        <Criteria id="XP1">
            <GameCoreInUse>Expansion1</GameCoreInUse>
        </Criteria>
    </ActionCriteria>

This will work alongside the action criteria that we set against some of the fileactions in ModBuddy to ensure that no expansion-specific effects or requirements are referenced if the user does not have them.
