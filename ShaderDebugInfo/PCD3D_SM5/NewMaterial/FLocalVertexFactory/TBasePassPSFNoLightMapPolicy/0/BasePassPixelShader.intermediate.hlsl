cbuffer View
{
    row_major float4x4 View_View_RelativeWorldToClip : packoffset(c4);
    row_major float4x4 View_View_ViewToClip : packoffset(c28);
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewTilePosition : packoffset(c60);
    float3 View_View_MatrixTilePosition : packoffset(c61);
    float3 View_View_ViewForward : packoffset(c62);
    float4 View_View_InvDeviceZToWorldZTransform : packoffset(c67);
    float4 View_View_ScreenPositionScaleBias : packoffset(c68);
    float3 View_View_RelativePreViewTranslation : packoffset(c72);
    float4 View_View_ViewRectMin : packoffset(c124);
    float4 View_View_ViewSizeAndInvSize : packoffset(c125);
    float4 View_View_LightProbeSizeRatioAndInvSizeRatio : packoffset(c126);
    float4 View_View_BufferSizeAndInvSize : packoffset(c127);
    int View_View_NumSceneColorMSAASamples : packoffset(c130);
    float View_View_PreExposure : packoffset(c130.y);
    float4 View_View_DiffuseOverrideParameter : packoffset(c131);
    float4 View_View_SpecularOverrideParameter : packoffset(c132);
    float4 View_View_NormalOverrideParameter : packoffset(c133);
    float2 View_View_RoughnessOverrideParameter : packoffset(c134);
    float View_View_OutOfBoundsMask : packoffset(c135);
    float View_View_UnlitViewmodeMask : packoffset(c140);
    float3 View_View_PrecomputedIndirectSpecularColorScale : packoffset(c155);
    float View_View_RenderingReflectionCaptureMask : packoffset(c178.w);
    float View_View_ReflectionCubemapMaxMip : packoffset(c190.z);
    float View_View_ShowDecalsMask : packoffset(c190.w);
    float View_View_IndirectCapsuleSelfShadowingIntensity : packoffset(c191.y);
    float3 View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight : packoffset(c192);
    float3 View_View_VolumetricFogInvGridSize : packoffset(c223);
    float3 View_View_VolumetricFogGridZParams : packoffset(c224);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c226);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c227);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c228);
    float View_View_VolumetricLightmapBrickSize : packoffset(c228.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c229);
    float View_View_MinRoughness : packoffset(c238.z);
};

ByteAddressBuffer View_PrimitiveSceneData;
cbuffer InstancedView
{
    row_major float4x4 InstancedView_InstancedView_RelativeWorldToClip : packoffset(c4);
    row_major float4x4 InstancedView_InstancedView_ViewToClip : packoffset(c28);
    row_major float4x4 InstancedView_InstancedView_SVPositionToTranslatedWorld : packoffset(c44);
    float3 InstancedView_InstancedView_ViewTilePosition : packoffset(c60);
    float3 InstancedView_InstancedView_MatrixTilePosition : packoffset(c61);
    float3 InstancedView_InstancedView_ViewForward : packoffset(c62);
    float4 InstancedView_InstancedView_ScreenPositionScaleBias : packoffset(c68);
    float3 InstancedView_InstancedView_RelativePreViewTranslation : packoffset(c72);
    float4 InstancedView_InstancedView_ViewRectMin : packoffset(c124);
    float4 InstancedView_InstancedView_ViewSizeAndInvSize : packoffset(c125);
    float4 InstancedView_InstancedView_NormalOverrideParameter : packoffset(c133);
    float2 InstancedView_InstancedView_RoughnessOverrideParameter : packoffset(c134);
};

cbuffer ReflectionCapture
{
    float4 ReflectionCapture_ReflectionCapture_CaptureProperties[341] : packoffset(c682);
};

cbuffer OpaqueBasePass
{
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : packoffset(c0);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight : packoffset(c0.z);
    int3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize : packoffset(c1);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift : packoffset(c2);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams : packoffset(c3);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection : packoffset(c4);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor : packoffset(c5);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask : packoffset(c6);
    float2 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD : packoffset(c6.z);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag : packoffset(c36);
    uint OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights : packoffset(c41);
    uint OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight : packoffset(c41.z);
    int3 OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize : packoffset(c42);
    uint OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift : packoffset(c43);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams : packoffset(c44);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection : packoffset(c45);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor : packoffset(c46);
    uint OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask : packoffset(c47);
    float2 OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD : packoffset(c47.z);
    float OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog : packoffset(c116.w);
    int OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask : packoffset(c132);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[2] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
SamplerState View_SharedBilinearClampedSampler;
Buffer<float4> OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer;
Buffer<uint4> OpaqueBasePass_Shared_Forward_NumCulledLightsGrid;
Buffer<uint4> OpaqueBasePass_Shared_Forward_CulledLightDataGrid;
Buffer<float4> OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer;
Buffer<uint4> OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid;
Buffer<uint4> OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid;
TextureCubeArray<float4> OpaqueBasePass_Shared_Reflection_ReflectionCubemap;
SamplerState OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler;
Texture3D<float4> OpaqueBasePass_Shared_Fog_IntegratedLightScattering;
Texture3D<float4> OpaqueBasePass_Shared_FogISR_IntegratedLightScattering;
Texture2D<float4> OpaqueBasePass_DBufferATexture;
Texture2D<float4> OpaqueBasePass_DBufferBTexture;
Texture2D<float4> OpaqueBasePass_DBufferCTexture;
SamplerState OpaqueBasePass_DBufferATextureSampler;
Texture2D<float4> OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture;
Texture2D<float4> OpaqueBasePass_IndirectOcclusionTexture;
Texture2D<float4> OpaqueBasePass_ResolvedSceneDepthTexture;

static float4 gl_FragCoord;
static float4 in_var_TEXCOORD10_centroid;
static float4 in_var_TEXCOORD11_centroid;
static uint in_var_PACKED_EYE_INDEX;
static uint in_var_PRIMITIVE_ID;
static float4 in_var_TEXCOORD7;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float4 in_var_TEXCOORD10_centroid : TEXCOORD10_centroid;
    float4 in_var_TEXCOORD11_centroid : TEXCOORD11_centroid;
    nointerpolation uint in_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
};

static float _192 = 0.0f;
static float _195 = 0.0f;

uint2 spvTextureSize(Texture2D<float4> Tex, uint Level, out uint Param)
{
    uint2 ret;
    Tex.GetDimensions(Level, ret.x, ret.y, Param);
    return ret;
}

uint spvPackHalf2x16(float2 value)
{
    uint2 Packed = f32tof16(value);
    return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value)
{
    return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main()
{
    bool _230 = false;
    float _227 = 1.0f / gl_FragCoord.w;
    float4x4 _286 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _287 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _288 = 0.0f.xxx;
    float4 _289 = 0.0f.xxxx;
    float4 _290 = 0.0f.xxxx;
    float4 _291 = 0.0f.xxxx;
    float4 _292 = 0.0f.xxxx;
    float2 _293 = 0.0f.xx;
    float4x4 _294 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _295 = 0.0f.xxx;
    float3 _296 = 0.0f.xxx;
    float3 _297 = 0.0f.xxx;
    do
    {
        _230 = in_var_PACKED_EYE_INDEX == 0u;
        if (_230)
        {
            _286 = View_View_ViewToClip;
            _287 = View_View_SVPositionToTranslatedWorld;
            _288 = View_View_ViewForward;
            _289 = View_View_ScreenPositionScaleBias;
            _290 = View_View_ViewRectMin;
            _291 = View_View_ViewSizeAndInvSize;
            _292 = View_View_NormalOverrideParameter;
            _293 = View_View_RoughnessOverrideParameter;
            _294 = View_View_RelativeWorldToClip;
            _295 = -View_View_MatrixTilePosition;
            _296 = -View_View_ViewTilePosition;
            _297 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _286 = InstancedView_InstancedView_ViewToClip;
            _287 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _288 = InstancedView_InstancedView_ViewForward;
            _289 = InstancedView_InstancedView_ScreenPositionScaleBias;
            _290 = InstancedView_InstancedView_ViewRectMin;
            _291 = InstancedView_InstancedView_ViewSizeAndInvSize;
            _292 = InstancedView_InstancedView_NormalOverrideParameter;
            _293 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _294 = InstancedView_InstancedView_RelativeWorldToClip;
            _295 = -InstancedView_InstancedView_MatrixTilePosition;
            _296 = -InstancedView_InstancedView_ViewTilePosition;
            _297 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float2 _306 = gl_FragCoord.xy - _290.xy;
    float4 _314 = float4(((_306 * _291.zw) - 0.5f.xx) * float2(2.0f, -2.0f), _195, 1.0f) * _227;
    float4 _319 = mul(float4(gl_FragCoord.xyz, 1.0f), _287);
    float3 _323 = _319.xyz / _319.w.xxx;
    float3 _324 = -_296;
    float3 _325 = _323 - _297;
    float3 _334 = 0.0f.xxx;
    if (_286[3].w >= 1.0f)
    {
        _334 = -_288;
    }
    else
    {
        _334 = normalize(-_323);
    }
    float3 _342 = normalize(mul(normalize((float3(0.0f, 0.0f, 1.0f) * _292.w) + _292.xyz), float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz))) * 1.0f;
    float _353 = (0.5f * _293.y) + _293.x;
    uint _354 = in_var_PRIMITIVE_ID * 40u;
    float _400 = 0.0f;
    float _401 = 0.0f;
    float _402 = 0.0f;
    float3 _403 = 0.0f.xxx;
    float3 _404 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_354 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _370 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _374 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _370, 0.0f);
        float4 _377 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _370, 0.0f);
        float4 _380 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _370, 0.0f);
        float _390 = _380.w;
        _400 = (_353 * _390) + _380.z;
        _401 = (0.5f * _390) + _380.y;
        _402 = _380.x;
        _403 = (float3(0.030584059655666351318359375f, 0.011155501939356327056884765625f, 0.0018307981081306934356689453125f) * _374.w) + _374.xyz;
        _404 = normalize((_342 * _377.w) + ((_377.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _400 = _353;
        _401 = 0.5f;
        _402 = 0.0f;
        _403 = float3(0.030584059655666351318359375f, 0.011155501939356327056884765625f, 0.0018307981081306934356689453125f);
        _404 = _342;
    }
    uint _407 = asuint(asfloat(View_PrimitiveSceneData.Load4(_354 * 16 + 0)).x);
    float _416 = _314.w;
    float _467 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_354 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _435 = clamp((((_324 * 2097152.0f) + _325) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _446 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_435.x), int(_435.y), int(_435.z), 0).xyz, 0)));
        _467 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_446.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_435 / _446.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _467 = 1.0f;
    }
    float4 _468 = float4(_467, 1.0f, 1.0f, 1.0f);
    float3 _481 = ((_403 - (_403 * _402)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _488 = (lerp((0.07999999821186065673828125f * _401).xxx, _403, _402.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _491 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _496 = 0.0f.xxx;
    if (_491)
    {
        _496 = _481 + (_488 * 0.449999988079071044921875f);
    }
    else
    {
        _496 = _481;
    }
    bool3 _497 = _491.xxx;
    float3 _498 = float3(_497.x ? 0.0f.xxx.x : _488.x, _497.y ? 0.0f.xxx.y : _488.y, _497.z ? 0.0f.xxx.z : _488.z);
    float2 _505 = ((_314.xy / _416.xx) * _289.xy) + _289.wz;
    float2 _624 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _516 = int2(trunc(_505 * View_View_BufferSizeAndInvSize.xy));
        int _517 = _516.x;
        int _518 = _516.y;
        float4 _522 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_517, _518, 0).xy, 0));
        float _523 = _522.x;
        float2 _623 = 0.0f.xx;
        if ((abs((((_523 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_523 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _416) / _416) > 0.00999999977648258209228515625f)
        {
            float2 _547 = _505 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _551 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_517 - 1, _518, 0).xy, 0));
            float _552 = _551.x;
            float _560 = abs((((_552 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_552 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _416);
            bool _561 = _560 < 100000000.0f;
            bool2 _562 = _561.xx;
            float2 _563 = float2(_562.x ? _547.x : _505.x, _562.y ? _547.y : _505.y);
            float _564 = _561 ? _560 : 100000000.0f;
            float2 _567 = _505 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _571 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_517, _518 + 1, 0).xy, 0));
            float _572 = _571.x;
            float _580 = abs((((_572 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_572 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _416);
            bool _581 = _580 < _564;
            bool2 _582 = _581.xx;
            float2 _583 = float2(_582.x ? _567.x : _563.x, _582.y ? _567.y : _563.y);
            float _584 = _581 ? _580 : _564;
            float2 _586 = _505 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _590 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_517 + 1, _518, 0).xy, 0));
            float _591 = _590.x;
            float _599 = abs((((_591 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_591 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _416);
            bool _600 = _599 < _584;
            bool2 _601 = _600.xx;
            float2 _602 = float2(_601.x ? _586.x : _583.x, _601.y ? _586.y : _583.y);
            float2 _606 = _505 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _610 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_517, _518 - 1, 0).xy, 0));
            float _611 = _610.x;
            bool2 _621 = (abs((((_611 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_611 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _416) < (_600 ? _599 : _584)).xx;
            _623 = float2(_621.x ? _606.x : _602.x, _621.y ? _606.y : _602.y);
        }
        else
        {
            _623 = _505;
        }
        _624 = _623;
    }
    else
    {
        _624 = _505;
    }
    uint _630_dummy_parameter;
    uint2 _630 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _630_dummy_parameter);
    uint _669 = 0u;
    float3 _670 = 0.0f.xxx;
    int3 _671 = int3(0, 0, 0);
    [branch]
    if (_230)
    {
        _669 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift;
        _670 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams;
        _671 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _669 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _670 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams;
        _671 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _687 = uint2(_306 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_669.xx & uint2(31u, 31u));
    int3 _697 = int3(0, 0, 0);
    [branch]
    if (_230)
    {
        _697 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _697 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _705 = (((min(uint(max(0.0f, log2((_227 * _670.x) + _670.y) * _670.z)), uint(_671.z - 1)) * uint(_697.y)) + _687.y) * uint(_697.x)) + _687.x;
    float4 _723 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _723 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_624 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _723 = 1.0f.xxxx;
    }
    float4 _724 = _723 * _723;
    uint _727 = asuint(asfloat(View_PrimitiveSceneData.Load4(_354 * 16 + 0)).x);
    uint _740 = (uint((_727 & 1024u) != 0u) | (uint((_727 & 2048u) != 0u) << 1u)) | (uint((_727 & 4096u) != 0u) << 2u);
    uint _764 = 0u;
    uint _765 = 0u;
    float2 _766 = 0.0f.xx;
    float3 _767 = 0.0f.xxx;
    float3 _768 = 0.0f.xxx;
    [branch]
    if (_230)
    {
        _764 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight;
        _765 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _766 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _767 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor;
        _768 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection;
    }
    else
    {
        _764 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight;
        _765 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _766 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _767 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor;
        _768 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection;
    }
    float4 _908 = 0.0f.xxxx;
    float4 _909 = 0.0f.xxxx;
    [branch]
    if (_764 != 0u)
    {
        float4 _787 = float4(float((_765 & 1u) != 0u), float((_765 & 2u) != 0u), float((_765 & 4u) != 0u), float((_765 & 8u) != 0u));
        uint _788 = _765 >> 4u;
        float _802 = dot(float4(float((_788 & 1u) != 0u), float((_788 & 2u) != 0u), float((_788 & 4u) != 0u), float((_788 & 8u) != 0u)), _724);
        bool _804 = _766.y < 0.0f;
        float _805 = _804 ? 1.0f : _802;
        float _822 = 0.0f;
        float _823 = 0.0f;
        [branch]
        if (uint((_765 & 255u) != 0u) != 0u)
        {
            float _816 = clamp((_416 * _766.x) + _766.y, 0.0f, 1.0f);
            float _818 = lerp(_804 ? _802 : 1.0f, lerp(1.0f, dot(_468, _787), dot(_787, 1.0f.xxxx)), _816 * _816);
            _822 = min(_818, _805) * _805;
            _823 = _818 * _805;
        }
        else
        {
            _822 = 1.0f;
            _823 = 1.0f;
        }
        float3 _892 = 0.0f.xxx;
        float3 _893 = 0.0f.xxx;
        [branch]
        if ((_823 + _822) > 0.0f)
        {
            float _830 = max(_400, View_View_MinRoughness);
            float3 _833 = _768 * rsqrt(dot(_768, _768));
            float _834 = dot(_404, _833);
            float _835 = clamp(_834, 0.0f, 1.0f);
            float _836 = dot(_404, _334);
            float _837 = dot(_334, _833);
            float _840 = rsqrt(2.0f + (2.0f * _837));
            float _843 = clamp((_834 + _836) * _840, 0.0f, 1.0f);
            float _849 = clamp(abs(_836) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float3 _851 = 1.0f.xxx * _835;
            float _853 = _830 * _830;
            float _854 = _853 * _853;
            float _858 = (((_843 * _854) - _843) * _843) + 1.0f;
            float _862 = sqrt(_854);
            float _863 = 1.0f - _862;
            float _872 = 1.0f - clamp(_840 + (_840 * _837), 0.0f, 1.0f);
            float _873 = _872 * _872;
            float _875 = (_873 * _873) * _872;
            float3 _889 = (_767 * 1.0f) * _823;
            _892 = ((_496 * 0.3183098733425140380859375f) * _851) * _889;
            _893 = ((_851 * (((clamp(50.0f * _498.y, 0.0f, 1.0f) * _875).xxx + (_498 * (1.0f - _875))) * ((_854 / ((3.1415927410125732421875f * _858) * _858)) * (0.5f / ((_835 * ((_849 * _863) + _862)) + (_849 * ((_835 * _863) + _862))))))) * 1.0f) * _889;
        }
        else
        {
            _892 = 0.0f.xxx;
            _893 = 0.0f.xxx;
        }
        float4 _897 = float4(_892, 0.0f);
        float4 _901 = float4(_893, 0.0f);
        bool4 _905 = (((_765 >> 8u) & _740) != 0u).xxxx;
        _908 = float4(_905.x ? _897.x : 0.0f.xxxx.x, _905.y ? _897.y : 0.0f.xxxx.y, _905.z ? _897.z : 0.0f.xxxx.z, _905.w ? _897.w : 0.0f.xxxx.w);
        _909 = float4(_905.x ? _901.x : 0.0f.xxxx.x, _905.y ? _901.y : 0.0f.xxxx.y, _905.z ? _901.z : 0.0f.xxxx.z, _905.w ? _901.w : 0.0f.xxxx.w);
    }
    else
    {
        _908 = 0.0f.xxxx;
        _909 = 0.0f.xxxx;
    }
    uint _933 = 0u;
    uint _934 = 0u;
    [branch]
    if (_230)
    {
        uint _923 = _705 * 2u;
        _933 = min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_923).x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
        _934 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_923 + 1u).x;
    }
    else
    {
        uint _913 = _705 * 2u;
        _933 = min(OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_913).x, OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights);
        _934 = OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_913 + 1u).x;
    }
    uint _940 = min(_933, (_230 ? OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _942 = 0.0f.xxxx;
    float4 _945 = 0.0f.xxxx;
    _942 = _908;
    _945 = _909;
    float4 _943 = 0.0f.xxxx;
    float4 _946 = 0.0f.xxxx;
    [loop]
    for (uint _947 = 0u; _947 < _940; _942 = _943, _945 = _946, _947++)
    {
        uint _952 = _934 + _947;
        float4 _984 = 0.0f.xxxx;
        float4 _985 = 0.0f.xxxx;
        float4 _986 = 0.0f.xxxx;
        float4 _987 = 0.0f.xxxx;
        float4 _988 = 0.0f.xxxx;
        [branch]
        if (_230)
        {
            uint _973 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid.Load(_952).x * 6u;
            _984 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_973);
            _985 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_973 + 1u);
            _986 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_973 + 3u);
            _987 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_973 + 2u);
            _988 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_973 + 4u);
        }
        else
        {
            uint _959 = OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_952).x * 6u;
            _984 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_959);
            _985 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_959 + 1u);
            _986 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_959 + 3u);
            _987 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_959 + 2u);
            _988 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_959 + 4u);
        }
        float2 _997 = spvUnpackHalf2x16(asuint(_986.w));
        float _998 = _997.x;
        bool _1001 = _985.w == 0.0f;
        uint _1005 = asuint(_987.w);
        float4 _1021 = float4(float((_1005 & 1u) != 0u), float((_1005 & 2u) != 0u), float((_1005 & 4u) != 0u), float((_1005 & 8u) != 0u));
        uint _1022 = _1005 >> 4u;
        float3 _1037 = _984.xyz - _323;
        float _1038 = dot(_1037, _1037);
        float _1055 = 0.0f;
        if (_1001)
        {
            float _1050 = _1038 * (_984.w * _984.w);
            float _1053 = clamp(1.0f - (_1050 * _1050), 0.0f, 1.0f);
            _1055 = _1053 * _1053;
        }
        else
        {
            float3 _1044 = _1037 * _984.w;
            _1055 = pow(1.0f - clamp(dot(_1044, _1044), 0.0f, 1.0f), _985.w);
        }
        float _1065 = 0.0f;
        if (_986.x > (-2.0f))
        {
            float _1062 = clamp((dot(_1037 * rsqrt(_1038), _987.xyz) - _986.x) * _986.y, 0.0f, 1.0f);
            _1065 = _1055 * (_1062 * _1062);
        }
        else
        {
            _1065 = _1055;
        }
        float3 _1385 = 0.0f.xxx;
        float3 _1386 = 0.0f.xxx;
        [branch]
        if (_1065 > 0.0f)
        {
            float _1076 = 0.0f;
            [branch]
            if (uint((_1005 & 255u) != 0u) != 0u)
            {
                _1076 = dot(float4(float((_1022 & 1u) != 0u), float((_1022 & 2u) != 0u), float((_1022 & 4u) != 0u), float((_1022 & 8u) != 0u)), _724) * lerp(1.0f, dot(_468, _1021), dot(_1021, 1.0f.xxxx));
            }
            else
            {
                _1076 = 1.0f;
            }
            float3 _1383 = 0.0f.xxx;
            float3 _1384 = 0.0f.xxx;
            [branch]
            if ((_1076 + _1076) > 0.0f)
            {
                float3 _1082 = _988.xyz * (0.5f * _998);
                float3 _1083 = _1037 - _1082;
                float3 _1084 = _1037 + _1082;
                float _1087 = max(_400, View_View_MinRoughness);
                bool _1088 = _998 > 0.0f;
                float _1115 = 0.0f;
                float _1116 = 0.0f;
                float _1117 = 0.0f;
                [branch]
                if (_1088)
                {
                    float _1100 = rsqrt(dot(_1083, _1083));
                    float _1101 = rsqrt(dot(_1084, _1084));
                    float _1102 = _1100 * _1101;
                    float _1104 = dot(_1083, _1084) * _1102;
                    _1115 = _1104;
                    _1116 = 0.5f * ((dot(_404, _1083) * _1100) + (dot(_404, _1084) * _1101));
                    _1117 = _1102 / (((_1104 * 0.5f) + 0.5f) + _1102);
                }
                else
                {
                    float _1092 = dot(_1083, _1083);
                    _1115 = 1.0f;
                    _1116 = dot(_404, _1083 * rsqrt(_1092));
                    _1117 = 1.0f / (_1092 + 1.0f);
                }
                float _1135 = 0.0f;
                if (_986.z > 0.0f)
                {
                    float _1124 = sqrt(clamp((_986.z * _986.z) * _1117, 0.0f, 1.0f));
                    float _1134 = 0.0f;
                    if (_1116 < _1124)
                    {
                        float _1130 = _1124 + max(_1116, -_1124);
                        _1134 = (_1130 * _1130) / (4.0f * _1124);
                    }
                    else
                    {
                        _1134 = _1116;
                    }
                    _1135 = _1134;
                }
                else
                {
                    _1135 = _1116;
                }
                float _1136 = clamp(_1135, 0.0f, 1.0f);
                float3 _1154 = 0.0f.xxx;
                if (_1088)
                {
                    float3 _1141 = reflect(-_334, _404);
                    float3 _1142 = _1084 - _1083;
                    float _1144 = dot(_1141, _1142);
                    _1154 = _1083 + (_1142 * clamp(dot(_1083, (_1141 * _1144) - _1142) / ((_998 * _998) - (_1144 * _1144)), 0.0f, 1.0f));
                }
                else
                {
                    _1154 = _1083;
                }
                float _1156 = rsqrt(dot(_1154, _1154));
                float3 _1157 = _1154 * _1156;
                float _1158 = max(_1087, View_View_MinRoughness);
                float _1163 = clamp((_986.z * _1156) * (1.0f - (_1158 * _1158)), 0.0f, 1.0f);
                float _1165 = clamp(_988.w * _1156, 0.0f, 1.0f);
                float _1173 = dot(_404, _1157);
                float _1174 = dot(_404, _334);
                float _1175 = dot(_334, _1157);
                float _1178 = rsqrt(2.0f + (2.0f * _1175));
                bool _1185 = _1163 > 0.0f;
                float _1280 = 0.0f;
                float _1281 = 0.0f;
                if (_1185)
                {
                    float _1190 = sqrt(1.0f - (_1163 * _1163));
                    float _1192 = (2.0f * _1173) * _1174;
                    float _1193 = _1192 - _1175;
                    float _1278 = 0.0f;
                    float _1279 = 0.0f;
                    if (_1193 >= _1190)
                    {
                        _1278 = 1.0f;
                        _1279 = abs(_1174);
                    }
                    else
                    {
                        float _1201 = _1163 * rsqrt(1.0f - (_1193 * _1193));
                        float _1204 = _1201 * (_1174 - (_1193 * _1173));
                        float _1210 = _1201 * ((((2.0f * _1174) * _1174) - 1.0f) - (_1193 * _1175));
                        float _1221 = _1201 * sqrt(clamp((((1.0f - (_1173 * _1173)) - (_1174 * _1174)) - (_1175 * _1175)) + (_1192 * _1175), 0.0f, 1.0f));
                        float _1223 = (_1221 * 2.0f) * _1174;
                        float _1224 = _1173 * _1190;
                        float _1225 = _1224 + _1174;
                        float _1226 = _1225 + _1204;
                        float _1227 = _1175 * _1190;
                        float _1229 = (_1227 + 1.0f) + _1210;
                        float _1230 = _1221 * _1229;
                        float _1231 = _1226 * _1229;
                        float _1232 = _1223 * _1226;
                        float _1237 = _1231 * (((-0.5f) * _1230) + ((0.25f * _1223) * _1226));
                        float _1251 = ((_1230 * _1230) + (_1232 * (_1232 - (2.0f * _1230)))) + (_1226 * ((_1225 * (_1229 * _1229)) + (_1231 * (((-0.5f) * (_1229 + _1227)) - 0.5f))));
                        float _1256 = (2.0f * _1237) / ((_1251 * _1251) + (_1237 * _1237));
                        float _1257 = _1256 * _1251;
                        float _1259 = 1.0f - (_1256 * _1237);
                        float _1267 = _1227 + ((_1259 * _1210) + (_1257 * _1223));
                        float _1270 = rsqrt(2.0f + (2.0f * _1267));
                        _1278 = clamp(((_1224 + ((_1259 * _1204) + (_1257 * _1221))) + _1174) * _1270, 0.0f, 1.0f);
                        _1279 = clamp(_1270 + (_1270 * _1267), 0.0f, 1.0f);
                    }
                    _1280 = _1278;
                    _1281 = _1279;
                }
                else
                {
                    _1280 = clamp((_1173 + _1174) * _1178, 0.0f, 1.0f);
                    _1281 = clamp(_1178 + (_1178 * _1175), 0.0f, 1.0f);
                }
                float _1284 = clamp(abs(_1174) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1287 = 1.0f.xxx * ((_1001 ? _1117 : 1.0f) * _1136);
                float3 _1377 = 0.0f.xxx;
                if (((0u | (asuint(clamp(1.0f - (max(_998, _986.z) * 0.0500000007450580596923828125f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1377 = 0.0f.xxx;
                }
                else
                {
                    float _1294 = _1087 * _1087;
                    float _1295 = _1294 * _1294;
                    float _1305 = 0.0f;
                    if (_1165 > 0.0f)
                    {
                        _1305 = clamp(_1295 + ((_1165 * _1165) / ((_1281 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1305 = _1295;
                    }
                    float _1320 = 0.0f;
                    float _1321 = 0.0f;
                    if (_1185)
                    {
                        float _1318 = _1305 + (((0.25f * _1163) * ((3.0f * asfloat(532487669 + (asint(_1305) >> 1))) + _1163)) / (_1281 + 0.001000000047497451305389404296875f));
                        _1320 = _1305 / _1318;
                        _1321 = _1318;
                    }
                    else
                    {
                        _1320 = 1.0f;
                        _1321 = _1305;
                    }
                    float _1343 = 0.0f;
                    if (_1115 < 1.0f)
                    {
                        float _1328 = sqrt((1.00010001659393310546875f - _1115) / (1.0f + _1115));
                        _1343 = _1320 * sqrt(_1321 / (_1321 + (((0.25f * _1328) * ((3.0f * asfloat(532487669 + (asint(_1321) >> 1))) + _1328)) / (_1281 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _1343 = _1320;
                    }
                    float _1347 = (((_1280 * _1305) - _1280) * _1280) + 1.0f;
                    float _1352 = sqrt(_1305);
                    float _1353 = 1.0f - _1352;
                    float _1362 = 1.0f - _1281;
                    float _1363 = _1362 * _1362;
                    float _1365 = (_1363 * _1363) * _1362;
                    _1377 = _1287 * (((clamp(50.0f * _498.y, 0.0f, 1.0f) * _1365).xxx + (_498 * (1.0f - _1365))) * (((_1305 / ((3.1415927410125732421875f * _1347) * _1347)) * _1343) * (0.5f / ((_1136 * ((_1284 * _1353) + _1352)) + (_1284 * ((_1136 * _1353) + _1352))))));
                }
                float3 _1380 = (_985.xyz * _1065) * _1076;
                _1383 = ((_496 * 0.3183098733425140380859375f) * _1287) * _1380;
                _1384 = (_1377 * 1.0f) * _1380;
            }
            else
            {
                _1383 = 0.0f.xxx;
                _1384 = 0.0f.xxx;
            }
            _1385 = _1383;
            _1386 = _1384;
        }
        else
        {
            _1385 = 0.0f.xxx;
            _1386 = 0.0f.xxx;
        }
        [flatten]
        if (((_1005 >> 8u) & _740) != 0u)
        {
            _943 = _942 + float4(_1385, 0.0f);
            _946 = _945 + float4(_1386, 0.0f);
        }
        else
        {
            _943 = _942;
            _946 = _945;
        }
    }
    bool4 _1405 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1414 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_354 * 16 + 0)).w));
    float4 _1467 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _400) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1468 = _1467.x;
    float2 _1478 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_1468 * _1468, exp2((-9.27999973297119140625f) * clamp(dot(_404, _334), 0.0f, 1.0f))) * _1468) + _1467.y)) + _1467.zw;
    bool _1506 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _1574 = 0.0f.xxxx;
    if (_1506)
    {
        float4 _1524 = mul(((float4(_324, 0.0f) + float4(_295, 0.0f)) * 2097152.0f) + float4(_325, 1.0f), _294);
        float _1525 = _1524.w;
        float3 _1547 = float3(((_1524.xy / _1525.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_1525 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _1562 = 0.0f.xxxx;
        if (_1506)
        {
            float4 _1561 = 0.0f.xxxx;
            if (_230)
            {
                _1561 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1547, 0.0f);
            }
            else
            {
                _1561 = OpaqueBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1547, 0.0f);
            }
            _1562 = _1561;
        }
        else
        {
            _1562 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _1574 = float4(_1562.xyz + (in_var_TEXCOORD7.xyz * _1562.w), _1562.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _1574 = in_var_TEXCOORD7;
    }
    float3 _1581 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[1].yzw, Material_Material_PreshaderBuffer[1].x.xxx), 0.0f.xxx);
    float3 _1638 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _1612 = abs(((_324 - asfloat(View_PrimitiveSceneData.Load4((_354 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_325 - asfloat(View_PrimitiveSceneData.Load4((_354 + 19u) * 16 + 0)).xyz));
        float3 _1613 = float3(asfloat(View_PrimitiveSceneData.Load4((_354 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_354 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_354 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _1637 = 0.0f.xxx;
        if (any(bool3(_1612.x > _1613.x, _1612.y > _1613.y, _1612.z > _1613.z)))
        {
            float3 _1633 = frac(frac(((_324.x + _324.y) + _324.z) * 2420.113525390625f) + (((_325.x + _325.y) + _325.z) * 0.001154000055976212024688720703125f)).xxx;
            _1637 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1633.x > 0.5f.xxx.x, _1633.y > 0.5f.xxx.y, _1633.z > 0.5f.xxx.z)));
        }
        else
        {
            _1637 = _1581;
        }
        _1638 = _1637;
    }
    else
    {
        _1638 = _1581;
    }
    float4 _1648 = float4(((lerp((float4(_1405.x ? 0.0f.xxxx.x : _942.x, _1405.y ? 0.0f.xxxx.y : _942.y, _1405.z ? 0.0f.xxxx.z : _942.z, _1405.w ? 0.0f.xxxx.w : _942.w).xyz + float4(_1405.x ? 0.0f.xxxx.x : _945.x, _1405.y ? 0.0f.xxxx.y : _945.y, _1405.z ? 0.0f.xxxx.z : _945.z, _1405.w ? 0.0f.xxxx.w : _945.w).xyz) + (((((float4(OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_404 * (2.0f * dot(_334, _404))) - _334, ReflectionCapture_ReflectionCapture_CaptureProperties[_1414].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_400, 0.001000000047497451305389404296875f))))).xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_1414].x, _192).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * lerp(1.0f, min(0.0f, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_400 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz * ((_498 * _1478.x) + (clamp(50.0f * _498.y, 0.0f, 1.0f) * _1478.y).xxx)) * lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_624 * float2(float(_630.x), float(_630.y)))), 0).xy, 0)).x, ((uint(((2.0f * float((_407 & 128u) != 0u)) + float((_407 & 256u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f)) * max(1.0f.xxx, ((((((_498 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_498 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_498 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)), _496 + (_498 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _1638) * _1574.w) + _1574.xyz, 0.0f);
    _1648.w = 0.0f;
    out_var_SV_Target0 = _1648 * View_View_PreExposure;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD10_centroid = stage_input.in_var_TEXCOORD10_centroid;
    in_var_TEXCOORD11_centroid = stage_input.in_var_TEXCOORD11_centroid;
    in_var_PACKED_EYE_INDEX = stage_input.in_var_PACKED_EYE_INDEX;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
