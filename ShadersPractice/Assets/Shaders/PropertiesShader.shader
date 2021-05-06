Shader "Custom/PropertiesShader"
{
    Properties{
        _myTex("Texture", 2D) = "white" {}
        _myEmis("Emission", 2D) = "black" {}
        _myRange("Example Range", Range(0,5)) = 1
        //_myTex("Example Texture", 2D) = "white" {}
        _myCube("Example Cube", CUBE) = "" {}
        _myFloat("Example Float", Float) = 0.5
        _myVector("Example Vector", Vector) = (0.5,1,1,1)
    }
        SubShader{

          CGPROGRAM
            #pragma surface surf Lambert

            fixed4 _myColor;
            sampler2D _myEmis;
            half _myRange;
            sampler2D _myTex;
            samplerCUBE _myCube;
            float _myFloat;
            float4 _myVector;

            struct Input {
                float2 uv_myTex;
                float2 uv_myEmis;
            };

            void surf(Input IN, inout SurfaceOutput o) {
                o.Albedo = (tex2D(_myTex, IN.uv_myTex)).rgb;
                o.Emission = (tex2D(_myEmis, IN.uv_myEmis)).rgb;
            }

          ENDCG
        }
            Fallback "Diffuse"
}
