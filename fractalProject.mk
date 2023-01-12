##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=fractalProject
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=C:/Users/7J9474897/Desktop/C++/basicExceptions
ProjectPath            :=C:/Users/7J9474897/Desktop/C++/fractalProject/fractalProject
IntermediateDirectory  :=$(ConfigurationName)
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=7J9474897
Date                   :=06/10/2022
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/mingw64/bin/g++.exe
SharedObjectLinkerName :=C:/mingw64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=$(IntermediateDirectory)
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).exe
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="fractalProject.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/mingw64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := C:/mingw64/bin/ar.exe rcu
CXX      := C:/mingw64/bin/g++.exe
CC       := C:/mingw64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -std=c11 -std=c++11 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/mingw64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/Fractal.cpp$(ObjectSuffix) $(IntermediateDirectory)/Mandelbrot.cpp$(ObjectSuffix) $(IntermediateDirectory)/Bitmap.cpp$(ObjectSuffix) $(IntermediateDirectory)/ZoomList.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "$(ConfigurationName)"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "$(ConfigurationName)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/Fractal.cpp$(ObjectSuffix): Fractal.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Fractal.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Fractal.cpp$(DependSuffix) -MM Fractal.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/7J9474897/Desktop/C++/fractalProject/fractalProject/Fractal.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Fractal.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Fractal.cpp$(PreprocessSuffix): Fractal.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Fractal.cpp$(PreprocessSuffix) Fractal.cpp

$(IntermediateDirectory)/Mandelbrot.cpp$(ObjectSuffix): Mandelbrot.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Mandelbrot.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Mandelbrot.cpp$(DependSuffix) -MM Mandelbrot.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/7J9474897/Desktop/C++/fractalProject/fractalProject/Mandelbrot.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Mandelbrot.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Mandelbrot.cpp$(PreprocessSuffix): Mandelbrot.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Mandelbrot.cpp$(PreprocessSuffix) Mandelbrot.cpp

$(IntermediateDirectory)/Bitmap.cpp$(ObjectSuffix): Bitmap.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Bitmap.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Bitmap.cpp$(DependSuffix) -MM Bitmap.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/7J9474897/Desktop/C++/fractalProject/fractalProject/Bitmap.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Bitmap.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Bitmap.cpp$(PreprocessSuffix): Bitmap.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Bitmap.cpp$(PreprocessSuffix) Bitmap.cpp

$(IntermediateDirectory)/ZoomList.cpp$(ObjectSuffix): ZoomList.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ZoomList.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/ZoomList.cpp$(DependSuffix) -MM ZoomList.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/7J9474897/Desktop/C++/fractalProject/fractalProject/ZoomList.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ZoomList.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ZoomList.cpp$(PreprocessSuffix): ZoomList.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ZoomList.cpp$(PreprocessSuffix) ZoomList.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(ConfigurationName)/


