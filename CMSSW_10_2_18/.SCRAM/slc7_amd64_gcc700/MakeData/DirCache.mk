ifeq ($(strip $(RecoMuonMuonIdentificationPlugins)),)
RecoMuonMuonIdentificationPlugins := self/src/RecoMuon/MuonIdentification/plugins
PLUGINS:=yes
RecoMuonMuonIdentificationPlugins_files := $(patsubst src/RecoMuon/MuonIdentification/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoMuon/MuonIdentification/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoMuon/MuonIdentification/plugins/$(file). Please fix src/RecoMuon/MuonIdentification/plugins/BuildFile.))))
RecoMuonMuonIdentificationPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMuon/MuonIdentification/plugins/BuildFile
RecoMuonMuonIdentificationPlugins_LOC_USE := self  DataFormats/Common DataFormats/MuonDetId DataFormats/MuonReco DataFormats/RecoCandidate DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CommonDetUnit Geometry/Records Geometry/CaloTopology PhysicsTools/IsolationAlgos PhysicsTools/SelectorUtils RecoMuon/MuonIdentification RecoMuon/TrackingTools TrackingTools/Records TrackingTools/TrackAssociator TrackingTools/TransientTrackingRecHit boost_regex CommonTools/Utils DataFormats/ParticleFlowCandidate
RecoMuonMuonIdentificationPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoMuonMuonIdentificationPlugins,RecoMuonMuonIdentificationPlugins,$(SCRAMSTORENAME_LIB),src/RecoMuon/MuonIdentification/plugins))
RecoMuonMuonIdentificationPlugins_PACKAGE := self/src/RecoMuon/MuonIdentification/plugins
ALL_PRODS += RecoMuonMuonIdentificationPlugins
RecoMuon/MuonIdentification_forbigobj+=RecoMuonMuonIdentificationPlugins
RecoMuonMuonIdentificationPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoMuonMuonIdentificationPlugins,src/RecoMuon/MuonIdentification/plugins,src_RecoMuon_MuonIdentification_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
RecoMuonMuonIdentificationPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoMuonMuonIdentificationPlugins,src/RecoMuon/MuonIdentification/plugins))
endif
ifeq ($(strip $(RecoMuonMuonIdentificationPlugins_cuts)),)
RecoMuonMuonIdentificationPlugins_cuts := self/src/RecoMuon/MuonIdentification/plugins
PLUGINS:=yes
RecoMuonMuonIdentificationPlugins_cuts_files := $(patsubst src/RecoMuon/MuonIdentification/plugins/%,%,$(foreach file,cuts/*.cc,$(eval xfile:=$(wildcard src/RecoMuon/MuonIdentification/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoMuon/MuonIdentification/plugins/$(file). Please fix src/RecoMuon/MuonIdentification/plugins/BuildFile.))))
RecoMuonMuonIdentificationPlugins_cuts_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMuon/MuonIdentification/plugins/BuildFile
RecoMuonMuonIdentificationPlugins_cuts_LOC_USE := self  DataFormats/Common DataFormats/MuonDetId DataFormats/MuonReco DataFormats/RecoCandidate DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CommonDetUnit Geometry/Records Geometry/CaloTopology PhysicsTools/IsolationAlgos RecoMuon/MuonIdentification RecoMuon/TrackingTools TrackingTools/Records TrackingTools/TrackAssociator TrackingTools/TransientTrackingRecHit boost_regex CommonTools/Utils DataFormats/ParticleFlowCandidate PhysicsTools/SelectorUtils
RecoMuonMuonIdentificationPlugins_cuts_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoMuonMuonIdentificationPlugins_cuts,RecoMuonMuonIdentificationPlugins_cuts,$(SCRAMSTORENAME_LIB),src/RecoMuon/MuonIdentification/plugins))
RecoMuonMuonIdentificationPlugins_cuts_PACKAGE := self/src/RecoMuon/MuonIdentification/plugins
ALL_PRODS += RecoMuonMuonIdentificationPlugins_cuts
RecoMuon/MuonIdentification_forbigobj+=RecoMuonMuonIdentificationPlugins_cuts
RecoMuonMuonIdentificationPlugins_cuts_INIT_FUNC        += $$(eval $$(call Library,RecoMuonMuonIdentificationPlugins_cuts,src/RecoMuon/MuonIdentification/plugins,src_RecoMuon_MuonIdentification_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
RecoMuonMuonIdentificationPlugins_cuts_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoMuonMuonIdentificationPlugins_cuts,src/RecoMuon/MuonIdentification/plugins))
endif
ALL_COMMONRULES += src_RecoMuon_MuonIdentification_plugins
src_RecoMuon_MuonIdentification_plugins_parent := RecoMuon/MuonIdentification
src_RecoMuon_MuonIdentification_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoMuon_MuonIdentification_plugins,src/RecoMuon/MuonIdentification/plugins,PLUGINS))
ifeq ($(strip $(RecoMuon/MuonIdentification)),)
ALL_COMMONRULES += src_RecoMuon_MuonIdentification_src
src_RecoMuon_MuonIdentification_src_parent := RecoMuon/MuonIdentification
src_RecoMuon_MuonIdentification_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoMuon_MuonIdentification_src,src/RecoMuon/MuonIdentification/src,LIBRARY))
RecoMuonMuonIdentification := self/RecoMuon/MuonIdentification
RecoMuon/MuonIdentification := RecoMuonMuonIdentification
RecoMuonMuonIdentification_files := $(patsubst src/RecoMuon/MuonIdentification/src/%,%,$(wildcard $(foreach dir,src/RecoMuon/MuonIdentification/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoMuonMuonIdentification_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMuon/MuonIdentification/BuildFile
RecoMuonMuonIdentification_LOC_USE := self  DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/Math DataFormats/TrajectoryState DataFormats/VertexReco FWCore/ServiceRegistry RecoMuon/Navigation RecoMuon/TransientTrackingRecHit RecoMuon/MuonIsolation RecoTracker/TkDetLayers RecoTracker/TkMSParametrization RecoTracker/TransientTrackingRecHit TrackingTools/DetLayers TrackingTools/GeomPropagators TrackingTools/PatternTools TrackingTools/Records TrackingTools/TrackFitters TrackingTools/TrackRefitter TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit Geometry/DTGeometry DataFormats/DetId DataFormats/MuonDetId DataFormats/MuonReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities Geometry/CommonDetUnit Geometry/CSCGeometry Geometry/GEMGeometry Geometry/Records SimTracker/Records SimMuon/MCTruth SimTracker/TrackAssociation roothistmatrix RecoMuon/TrackingTools DataFormats/CSCRecHit RecoLocalCalo/HcalRecAlgos PhysicsTools/SelectorUtils
RecoMuonMuonIdentification_LCGDICTS  := x 
RecoMuonMuonIdentification_PRE_INIT_FUNC += $$(eval $$(call LCGDict,RecoMuonMuonIdentification,src/RecoMuon/MuonIdentification/src/classes.h,src/RecoMuon/MuonIdentification/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
RecoMuonMuonIdentification_EX_LIB   := RecoMuonMuonIdentification
RecoMuonMuonIdentification_EX_USE   := $(foreach d,$(RecoMuonMuonIdentification_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMuonMuonIdentification_PACKAGE := self/src/RecoMuon/MuonIdentification/src
ALL_PRODS += RecoMuonMuonIdentification
RecoMuonMuonIdentification_CLASS := LIBRARY
RecoMuon/MuonIdentification_forbigobj+=RecoMuonMuonIdentification
RecoMuonMuonIdentification_INIT_FUNC        += $$(eval $$(call Library,RecoMuonMuonIdentification,src/RecoMuon/MuonIdentification/src,src_RecoMuon_MuonIdentification_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(DataFormats/MuonReco)),)
ALL_COMMONRULES += src_DataFormats_MuonReco_src
src_DataFormats_MuonReco_src_parent := DataFormats/MuonReco
src_DataFormats_MuonReco_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_MuonReco_src,src/DataFormats/MuonReco/src,LIBRARY))
DataFormatsMuonReco := self/DataFormats/MuonReco
DataFormats/MuonReco := DataFormatsMuonReco
DataFormatsMuonReco_files := $(patsubst src/DataFormats/MuonReco/src/%,%,$(wildcard $(foreach dir,src/DataFormats/MuonReco/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsMuonReco_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/MuonReco/BuildFile
DataFormatsMuonReco_LOC_USE := self  DataFormats/Common DataFormats/RecoCandidate DataFormats/TrackReco DataFormats/DTRecHit DataFormats/CSCRecHit DataFormats/GEMRecHit DataFormats/VertexReco rootmath
DataFormatsMuonReco_LCGDICTS  := x 
DataFormatsMuonReco_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsMuonReco,src/DataFormats/MuonReco/src/classes.h,src/DataFormats/MuonReco/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
DataFormatsMuonReco_EX_LIB   := DataFormatsMuonReco
DataFormatsMuonReco_EX_USE   := $(foreach d,$(DataFormatsMuonReco_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsMuonReco_PACKAGE := self/src/DataFormats/MuonReco/src
ALL_PRODS += DataFormatsMuonReco
DataFormatsMuonReco_CLASS := LIBRARY
DataFormats/MuonReco_forbigobj+=DataFormatsMuonReco
DataFormatsMuonReco_INIT_FUNC        += $$(eval $$(call Library,DataFormatsMuonReco,src/DataFormats/MuonReco/src,src_DataFormats_MuonReco_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(DataFormats/RecoCandidate)),)
ALL_COMMONRULES += src_DataFormats_RecoCandidate_src
src_DataFormats_RecoCandidate_src_parent := DataFormats/RecoCandidate
src_DataFormats_RecoCandidate_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_RecoCandidate_src,src/DataFormats/RecoCandidate/src,LIBRARY))
DataFormatsRecoCandidate := self/DataFormats/RecoCandidate
DataFormats/RecoCandidate := DataFormatsRecoCandidate
DataFormatsRecoCandidate_files := $(patsubst src/DataFormats/RecoCandidate/src/%,%,$(wildcard $(foreach dir,src/DataFormats/RecoCandidate/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsRecoCandidate_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/RecoCandidate/BuildFile
DataFormatsRecoCandidate_LOC_USE := self  DataFormats/CaloRecHit DataFormats/Candidate DataFormats/Common DataFormats/TrackReco DataFormats/CaloTowers DataFormats/EgammaReco clhep SimDataFormats/GeneratorProducts
DataFormatsRecoCandidate_LCGDICTS  := x 
DataFormatsRecoCandidate_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsRecoCandidate,src/DataFormats/RecoCandidate/src/classes.h,src/DataFormats/RecoCandidate/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
DataFormatsRecoCandidate_EX_LIB   := DataFormatsRecoCandidate
DataFormatsRecoCandidate_EX_USE   := $(foreach d,$(DataFormatsRecoCandidate_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsRecoCandidate_PACKAGE := self/src/DataFormats/RecoCandidate/src
ALL_PRODS += DataFormatsRecoCandidate
DataFormatsRecoCandidate_CLASS := LIBRARY
DataFormats/RecoCandidate_forbigobj+=DataFormatsRecoCandidate
DataFormatsRecoCandidate_INIT_FUNC        += $$(eval $$(call Library,DataFormatsRecoCandidate,src/DataFormats/RecoCandidate/src,src_DataFormats_RecoCandidate_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(AnalysisAnalyzerAuto)),)
AnalysisAnalyzerAuto := self/src/Analysis/Analyzer/plugins
PLUGINS:=yes
AnalysisAnalyzerAuto_files := $(patsubst src/Analysis/Analyzer/plugins/%,%,$(wildcard $(foreach dir,src/Analysis/Analyzer/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AnalysisAnalyzerAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/Analysis/Analyzer/plugins/BuildFile
AnalysisAnalyzerAuto_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/TrackReco DataFormats/MuonReco
AnalysisAnalyzerAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AnalysisAnalyzerAuto,AnalysisAnalyzerAuto,$(SCRAMSTORENAME_LIB),src/Analysis/Analyzer/plugins))
AnalysisAnalyzerAuto_PACKAGE := self/src/Analysis/Analyzer/plugins
ALL_PRODS += AnalysisAnalyzerAuto
Analysis/Analyzer_forbigobj+=AnalysisAnalyzerAuto
AnalysisAnalyzerAuto_INIT_FUNC        += $$(eval $$(call Library,AnalysisAnalyzerAuto,src/Analysis/Analyzer/plugins,src_Analysis_Analyzer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
AnalysisAnalyzerAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,AnalysisAnalyzerAuto,src/Analysis/Analyzer/plugins))
endif
ALL_COMMONRULES += src_Analysis_Analyzer_plugins
src_Analysis_Analyzer_plugins_parent := Analysis/Analyzer
src_Analysis_Analyzer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Analysis_Analyzer_plugins,src/Analysis/Analyzer/plugins,PLUGINS))
ifeq ($(strip $(DataFormats/TrackReco)),)
ALL_COMMONRULES += src_DataFormats_TrackReco_src
src_DataFormats_TrackReco_src_parent := DataFormats/TrackReco
src_DataFormats_TrackReco_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_TrackReco_src,src/DataFormats/TrackReco/src,LIBRARY))
DataFormatsTrackReco := self/DataFormats/TrackReco
DataFormats/TrackReco := DataFormatsTrackReco
DataFormatsTrackReco_files := $(patsubst src/DataFormats/TrackReco/src/%,%,$(wildcard $(foreach dir,src/DataFormats/TrackReco/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsTrackReco_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/TrackReco/BuildFile
DataFormatsTrackReco_LOC_USE := self  DataFormats/Common DataFormats/TrajectoryState DataFormats/TrackCandidate DataFormats/MuonDetId DataFormats/BeamSpot DataFormats/SiPixelDetId DataFormats/SiStripDetId DataFormats/TrackingRecHit DataFormats/TrackerCommon FWCore/Utilities clhepheader rootmath
DataFormatsTrackReco_LCGDICTS  := x 
DataFormatsTrackReco_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsTrackReco,src/DataFormats/TrackReco/src/classes.h,src/DataFormats/TrackReco/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
DataFormatsTrackReco_EX_LIB   := DataFormatsTrackReco
DataFormatsTrackReco_EX_USE   := $(foreach d,$(DataFormatsTrackReco_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTrackReco_PACKAGE := self/src/DataFormats/TrackReco/src
ALL_PRODS += DataFormatsTrackReco
DataFormatsTrackReco_CLASS := LIBRARY
DataFormats/TrackReco_forbigobj+=DataFormatsTrackReco
DataFormatsTrackReco_INIT_FUNC        += $$(eval $$(call Library,DataFormatsTrackReco,src/DataFormats/TrackReco/src,src_DataFormats_TrackReco_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoMuon/GlobalMuonProducer)),)
ALL_COMMONRULES += src_RecoMuon_GlobalMuonProducer_src
src_RecoMuon_GlobalMuonProducer_src_parent := RecoMuon/GlobalMuonProducer
src_RecoMuon_GlobalMuonProducer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoMuon_GlobalMuonProducer_src,src/RecoMuon/GlobalMuonProducer/src,LIBRARY))
RecoMuonGlobalMuonProducer := self/RecoMuon/GlobalMuonProducer
RecoMuon/GlobalMuonProducer := RecoMuonGlobalMuonProducer
RecoMuonGlobalMuonProducer_files := $(patsubst src/RecoMuon/GlobalMuonProducer/src/%,%,$(wildcard $(foreach dir,src/RecoMuon/GlobalMuonProducer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoMuonGlobalMuonProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMuon/GlobalMuonProducer/BuildFile
RecoMuonGlobalMuonProducer_LOC_USE := self  DataFormats/Common DataFormats/MuonReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager RecoMuon/GlobalTrackFinder RecoMuon/GlobalTrackingTools RecoMuon/TrackingTools TrackingTools/PatternTools
RecoMuonGlobalMuonProducer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoMuonGlobalMuonProducer,RecoMuonGlobalMuonProducer,$(SCRAMSTORENAME_LIB),src/RecoMuon/GlobalMuonProducer/src))
RecoMuonGlobalMuonProducer_PACKAGE := self/src/RecoMuon/GlobalMuonProducer/src
ALL_PRODS += RecoMuonGlobalMuonProducer
RecoMuonGlobalMuonProducer_CLASS := LIBRARY
RecoMuon/GlobalMuonProducer_forbigobj+=RecoMuonGlobalMuonProducer
RecoMuonGlobalMuonProducer_INIT_FUNC        += $$(eval $$(call Library,RecoMuonGlobalMuonProducer,src/RecoMuon/GlobalMuonProducer/src,src_RecoMuon_GlobalMuonProducer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
