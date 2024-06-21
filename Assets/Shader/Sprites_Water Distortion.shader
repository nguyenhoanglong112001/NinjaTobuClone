Shader "Sprites/Water Distortion" {
	Properties {
		[PerRendererData] _Color ("Tint", Vector) = (1,1,1,1)
		[NoScaleOffset] _DistortionTexture ("Distortion Texture", 2D) = "white" {}
		_RefractionX ("X Refraction", Range(-0.1, 0.1)) = 0.01
		_RefractionY ("Y Refraction", Range(-0.1, 0.1)) = 0.01
		_DistortionScrollX ("X Scroll Speed", Range(-0.1, 0.1)) = -0.1
		_DistortionScrollY ("Y Scroll Speed", Range(-0.1, 0.1)) = 0.1
		_DistortionScaleX ("X Scale", Float) = 1
		_DistortionScaleY ("Y Scale", Float) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = _Color.rgb;
			o.Alpha = _Color.a;
		}
		ENDCG
	}
}