using UnityEngine;
using System.Collections;
using UnityEditor;
using UnityEngine.SceneManagement;

namespace CoolProject
{
    public static class Builder
    {
        public static void BuildProject()
        {
            
            var myScenes = new [] {"Assets/Scenes/SampleScene.unity"};

            EditorUserBuildSettings.SetPlatformSettings ("Standalone", "CreateSolution", "true");

            var options = new BuildPlayerOptions
            {
                scenes = myScenes,
                target = BuildTarget.StandaloneLinux64, 
                locationPathName = "MyBuild",
        
            };

            BuildPipeline.BuildPlayer(options);
        }
    }
}