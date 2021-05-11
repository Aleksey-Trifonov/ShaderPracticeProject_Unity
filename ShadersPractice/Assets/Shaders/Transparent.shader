Shader "Custom/Transparent"
{
    Properties
    {
        _MainTex("Texture", 2D) = "black" {}
    }
        SubShader
    {
        Tags { "Queue" = "Transparent" }
        Blend SrcAlpha OneMinusSrcAlpha
        Cull off
        Pass{
            SetTexture [_MainTex] {combine texture}
        }
    }
}
