using UnityEditor;
    public class LinuxBuilder
    {
        [MenuItem("Build/Build MyLinux")]
        public static void build()
        {
            string[] scenes = { "Assets/Scenes/SampleScene.unity" };
            BuildPipeline.BuildPlayer(scenes, "Build", BuildTarget.StandaloneWindows, BuildOptions.None);
        }
    }
