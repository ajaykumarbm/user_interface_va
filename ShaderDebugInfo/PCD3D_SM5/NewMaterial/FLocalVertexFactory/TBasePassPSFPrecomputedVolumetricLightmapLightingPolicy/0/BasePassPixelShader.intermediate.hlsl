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
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c154);
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
    float4 ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[341] : packoffset(c1023);
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
Texture3D<float4> View_VolumetricLightmapBrickAmbientVector;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients0;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients1;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients2;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients3;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients4;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients5;
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

static float _218 = 0.0f;
static float4 _219 = 0.0f.xxxx;
static float _223 = 0.0f;
static float4 _224 = 0.0f.xxxx;

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
    bool _260 = false;
    float _257 = 1.0f / gl_FragCoord.w;
    float4x4 _316 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float4x4 _317 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _318 = 0.0f.xxx;
    float4 _319 = 0.0f.xxxx;
    float4 _320 = 0.0f.xxxx;
    float4 _321 = 0.0f.xxxx;
    float4 _322 = 0.0f.xxxx;
    float2 _323 = 0.0f.xx;
    float4x4 _324 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _325 = 0.0f.xxx;
    float3 _326 = 0.0f.xxx;
    float3 _327 = 0.0f.xxx;
    do
    {
        _260 = in_var_PACKED_EYE_INDEX == 0u;
        if (_260)
        {
            _316 = View_View_ViewToClip;
            _317 = View_View_SVPositionToTranslatedWorld;
            _318 = View_View_ViewForward;
            _319 = View_View_ScreenPositionScaleBias;
            _320 = View_View_ViewRectMin;
            _321 = View_View_ViewSizeAndInvSize;
            _322 = View_View_NormalOverrideParameter;
            _323 = View_View_RoughnessOverrideParameter;
            _324 = View_View_RelativeWorldToClip;
            _325 = -View_View_MatrixTilePosition;
            _326 = -View_View_ViewTilePosition;
            _327 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _316 = InstancedView_InstancedView_ViewToClip;
            _317 = InstancedView_InstancedView_SVPositionToTranslatedWorld;
            _318 = InstancedView_InstancedView_ViewForward;
            _319 = InstancedView_InstancedView_ScreenPositionScaleBias;
            _320 = InstancedView_InstancedView_ViewRectMin;
            _321 = InstancedView_InstancedView_ViewSizeAndInvSize;
            _322 = InstancedView_InstancedView_NormalOverrideParameter;
            _323 = InstancedView_InstancedView_RoughnessOverrideParameter;
            _324 = InstancedView_InstancedView_RelativeWorldToClip;
            _325 = -InstancedView_InstancedView_MatrixTilePosition;
            _326 = -InstancedView_InstancedView_ViewTilePosition;
            _327 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    float2 _336 = gl_FragCoord.xy - _320.xy;
    float4 _344 = float4(((_336 * _321.zw) - 0.5f.xx) * float2(2.0f, -2.0f), _223, 1.0f) * _257;
    float4 _349 = mul(float4(gl_FragCoord.xyz, 1.0f), _317);
    float3 _353 = _349.xyz / _349.w.xxx;
    float3 _354 = -_326;
    float3 _355 = _353 - _327;
    float3 _364 = 0.0f.xxx;
    if (_316[3].w >= 1.0f)
    {
        _364 = -_318;
    }
    else
    {
        _364 = normalize(-_353);
    }
    float3 _372 = normalize(mul(normalize((float3(0.0f, 0.0f, 1.0f) * _322.w) + _322.xyz), float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz))) * 1.0f;
    float _383 = (0.5f * _323.y) + _323.x;
    uint _384 = in_var_PRIMITIVE_ID * 40u;
    float _430 = 0.0f;
    float _431 = 0.0f;
    float _432 = 0.0f;
    float3 _433 = 0.0f.xxx;
    float3 _434 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_384 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _400 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _404 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _400, 0.0f);
        float4 _407 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _400, 0.0f);
        float4 _410 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _400, 0.0f);
        float _420 = _410.w;
        _430 = (_383 * _420) + _410.z;
        _431 = (0.5f * _420) + _410.y;
        _432 = _410.x;
        _433 = (float3(0.030584059655666351318359375f, 0.011155501939356327056884765625f, 0.0018307981081306934356689453125f) * _404.w) + _404.xyz;
        _434 = normalize((_372 * _407.w) + ((_407.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _430 = _383;
        _431 = 0.5f;
        _432 = 0.0f;
        _433 = float3(0.030584059655666351318359375f, 0.011155501939356327056884765625f, 0.0018307981081306934356689453125f);
        _434 = _372;
    }
    float3 _446 = clamp((((_354 * 2097152.0f) + _355) * View_View_VolumetricLightmapWorldToUVScale) + View_View_VolumetricLightmapWorldToUVAdd, 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
    float4 _457 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_446.x), int(_446.y), int(_446.z), 0).xyz, 0)));
    float3 _472 = (((_457.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_446 / _457.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize;
    uint _475 = asuint(asfloat(View_PrimitiveSceneData.Load4(_384 * 16 + 0)).x);
    float _484 = _344.w;
    float _497 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_384 * 16 + 0)).x) & 4u) != 0u)
    {
        _497 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _472, 0.0f).x;
    }
    else
    {
        _497 = 1.0f;
    }
    float4 _498 = float4(_497, 1.0f, 1.0f, 1.0f);
    float3 _511 = ((_433 - (_433 * _432)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _518 = (lerp((0.07999999821186065673828125f * _431).xxx, _433, _432.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _521 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _526 = 0.0f.xxx;
    if (_521)
    {
        _526 = _511 + (_518 * 0.449999988079071044921875f);
    }
    else
    {
        _526 = _511;
    }
    bool3 _527 = _521.xxx;
    float3 _528 = float3(_527.x ? 0.0f.xxx.x : _518.x, _527.y ? 0.0f.xxx.y : _518.y, _527.z ? 0.0f.xxx.z : _518.z);
    float4 _532 = View_VolumetricLightmapBrickAmbientVector.SampleLevel(View_SharedBilinearClampedSampler, _472, 0.0f);
    float _548 = _532.x;
    float4 _550 = (((View_VolumetricLightmapBrickSHCoefficients0.SampleLevel(View_SharedBilinearClampedSampler, _472, 0.0f) * 2.0f) - 1.0f.xxxx) * _548) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _551 = _532.y;
    float4 _553 = (((View_VolumetricLightmapBrickSHCoefficients2.SampleLevel(View_SharedBilinearClampedSampler, _472, 0.0f) * 2.0f) - 1.0f.xxxx) * _551) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _554 = _532.z;
    float4 _556 = (((View_VolumetricLightmapBrickSHCoefficients4.SampleLevel(View_SharedBilinearClampedSampler, _472, 0.0f) * 2.0f) - 1.0f.xxxx) * _554) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float4 _573 = (((View_VolumetricLightmapBrickSHCoefficients1.SampleLevel(View_SharedBilinearClampedSampler, _472, 0.0f) * 2.0f) - 1.0f.xxxx) * _548) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _575 = (((View_VolumetricLightmapBrickSHCoefficients3.SampleLevel(View_SharedBilinearClampedSampler, _472, 0.0f) * 2.0f) - 1.0f.xxxx) * _551) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _577 = (((View_VolumetricLightmapBrickSHCoefficients5.SampleLevel(View_SharedBilinearClampedSampler, _472, 0.0f) * 2.0f) - 1.0f.xxxx) * _554) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _610 = _224;
    _610.y = (-0.48860299587249755859375f) * _434.y;
    float4 _613 = _610;
    _613.z = 0.48860299587249755859375f * _434.z;
    float4 _616 = _613;
    _616.w = (-0.48860299587249755859375f) * _434.x;
    float3 _617 = _434 * _434;
    float4 _620 = _219;
    _620.x = (1.09254801273345947265625f * _434.x) * _434.y;
    float4 _623 = _620;
    _623.y = ((-1.09254801273345947265625f) * _434.y) * _434.z;
    float4 _628 = _623;
    _628.z = 0.3153919875621795654296875f * ((3.0f * _617.z) - 1.0f);
    float4 _631 = _628;
    _631.w = ((-1.09254801273345947265625f) * _434.x) * _434.z;
    float4 _635 = _616;
    _635.x = 0.886227548122406005859375f;
    float3 _637 = _635.yzw * 2.094395160675048828125f;
    float4 _638 = float4(_635.x, _637.x, _637.y, _637.z);
    float4 _639 = _631 * 0.785398185253143310546875f;
    float _640 = (_617.x - _617.y) * 0.4290426075458526611328125f;
    float3 _646 = 0.0f.xxx;
    _646.x = (dot(float4(_548, _550.xyz), _638) + dot(float4(_550.w, _573.xyz), _639)) + (_573.w * _640);
    float3 _652 = _646;
    _652.y = (dot(float4(_551, _553.xyz), _638) + dot(float4(_553.w, _575.xyz), _639)) + (_575.w * _640);
    float3 _658 = _652;
    _658.z = (dot(float4(_554, _556.xyz), _638) + dot(float4(_556.w, _577.xyz), _639)) + (_577.w * _640);
    float3 _663 = (max(0.0f.xxx, _658) * 0.3183098733425140380859375f.xxx) * View_View_PrecomputedIndirectLightingColorScale;
    float2 _671 = ((_344.xy / _484.xx) * _319.xy) + _319.wz;
    float2 _790 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _682 = int2(trunc(_671 * View_View_BufferSizeAndInvSize.xy));
        int _683 = _682.x;
        int _684 = _682.y;
        float4 _688 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_683, _684, 0).xy, 0));
        float _689 = _688.x;
        float2 _789 = 0.0f.xx;
        if ((abs((((_689 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_689 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _484) / _484) > 0.00999999977648258209228515625f)
        {
            float2 _713 = _671 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _717 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_683 - 1, _684, 0).xy, 0));
            float _718 = _717.x;
            float _726 = abs((((_718 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_718 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _484);
            bool _727 = _726 < 100000000.0f;
            bool2 _728 = _727.xx;
            float2 _729 = float2(_728.x ? _713.x : _671.x, _728.y ? _713.y : _671.y);
            float _730 = _727 ? _726 : 100000000.0f;
            float2 _733 = _671 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _737 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_683, _684 + 1, 0).xy, 0));
            float _738 = _737.x;
            float _746 = abs((((_738 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_738 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _484);
            bool _747 = _746 < _730;
            bool2 _748 = _747.xx;
            float2 _749 = float2(_748.x ? _733.x : _729.x, _748.y ? _733.y : _729.y);
            float _750 = _747 ? _746 : _730;
            float2 _752 = _671 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _756 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_683 + 1, _684, 0).xy, 0));
            float _757 = _756.x;
            float _765 = abs((((_757 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_757 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _484);
            bool _766 = _765 < _750;
            bool2 _767 = _766.xx;
            float2 _768 = float2(_767.x ? _752.x : _749.x, _767.y ? _752.y : _749.y);
            float2 _772 = _671 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _776 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_683, _684 - 1, 0).xy, 0));
            float _777 = _776.x;
            bool2 _787 = (abs((((_777 * View_View_InvDeviceZToWorldZTransform.x) + View_View_InvDeviceZToWorldZTransform.y) + (1.0f / ((_777 * View_View_InvDeviceZToWorldZTransform.z) - View_View_InvDeviceZToWorldZTransform.w))) - _484) < (_766 ? _765 : _750)).xx;
            _789 = float2(_787.x ? _772.x : _768.x, _787.y ? _772.y : _768.y);
        }
        else
        {
            _789 = _671;
        }
        _790 = _789;
    }
    else
    {
        _790 = _671;
    }
    uint _796_dummy_parameter;
    uint2 _796 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _796_dummy_parameter);
    float _814 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_790 * float2(float(_796.x), float(_796.y)))), 0).xy, 0)).x, ((uint(((2.0f * float((_475 & 128u) != 0u)) + float((_475 & 256u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    uint _851 = 0u;
    float3 _852 = 0.0f.xxx;
    int3 _853 = int3(0, 0, 0);
    [branch]
    if (_260)
    {
        _851 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift;
        _852 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams;
        _853 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _851 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift;
        _852 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_LightGridZParams;
        _853 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint2 _869 = uint2(_336 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (_851.xx & uint2(31u, 31u));
    int3 _879 = int3(0, 0, 0);
    [branch]
    if (_260)
    {
        _879 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize;
    }
    else
    {
        _879 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_CulledGridSize;
    }
    uint _887 = (((min(uint(max(0.0f, log2((_257 * _852.x) + _852.y) * _852.z)), uint(_853.z - 1)) * uint(_879.y)) + _869.y) * uint(_879.x)) + _869.x;
    float4 _905 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _905 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_790 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _905 = 1.0f.xxxx;
    }
    float4 _906 = _905 * _905;
    uint _909 = asuint(asfloat(View_PrimitiveSceneData.Load4(_384 * 16 + 0)).x);
    uint _922 = (uint((_909 & 1024u) != 0u) | (uint((_909 & 2048u) != 0u) << 1u)) | (uint((_909 & 4096u) != 0u) << 2u);
    uint _946 = 0u;
    uint _947 = 0u;
    float2 _948 = 0.0f.xx;
    float3 _949 = 0.0f.xxx;
    float3 _950 = 0.0f.xxx;
    [branch]
    if (_260)
    {
        _946 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight;
        _947 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask;
        _948 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD;
        _949 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor;
        _950 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection;
    }
    else
    {
        _946 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight;
        _947 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask;
        _948 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD;
        _949 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor;
        _950 = OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection;
    }
    float4 _1090 = 0.0f.xxxx;
    float4 _1091 = 0.0f.xxxx;
    [branch]
    if (_946 != 0u)
    {
        float4 _969 = float4(float((_947 & 1u) != 0u), float((_947 & 2u) != 0u), float((_947 & 4u) != 0u), float((_947 & 8u) != 0u));
        uint _970 = _947 >> 4u;
        float _984 = dot(float4(float((_970 & 1u) != 0u), float((_970 & 2u) != 0u), float((_970 & 4u) != 0u), float((_970 & 8u) != 0u)), _906);
        bool _986 = _948.y < 0.0f;
        float _987 = _986 ? 1.0f : _984;
        float _1004 = 0.0f;
        float _1005 = 0.0f;
        [branch]
        if (uint((_947 & 255u) != 0u) != 0u)
        {
            float _998 = clamp((_484 * _948.x) + _948.y, 0.0f, 1.0f);
            float _1000 = lerp(_986 ? _984 : 1.0f, lerp(1.0f, dot(_498, _969), dot(_969, 1.0f.xxxx)), _998 * _998);
            _1004 = min(_1000, _987) * _987;
            _1005 = _1000 * _987;
        }
        else
        {
            _1004 = 1.0f;
            _1005 = 1.0f;
        }
        float3 _1074 = 0.0f.xxx;
        float3 _1075 = 0.0f.xxx;
        [branch]
        if ((_1005 + _1004) > 0.0f)
        {
            float _1012 = max(_430, View_View_MinRoughness);
            float3 _1015 = _950 * rsqrt(dot(_950, _950));
            float _1016 = dot(_434, _1015);
            float _1017 = clamp(_1016, 0.0f, 1.0f);
            float _1018 = dot(_434, _364);
            float _1019 = dot(_364, _1015);
            float _1022 = rsqrt(2.0f + (2.0f * _1019));
            float _1025 = clamp((_1016 + _1018) * _1022, 0.0f, 1.0f);
            float _1031 = clamp(abs(_1018) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
            float3 _1033 = 1.0f.xxx * _1017;
            float _1035 = _1012 * _1012;
            float _1036 = _1035 * _1035;
            float _1040 = (((_1025 * _1036) - _1025) * _1025) + 1.0f;
            float _1044 = sqrt(_1036);
            float _1045 = 1.0f - _1044;
            float _1054 = 1.0f - clamp(_1022 + (_1022 * _1019), 0.0f, 1.0f);
            float _1055 = _1054 * _1054;
            float _1057 = (_1055 * _1055) * _1054;
            float3 _1071 = (_949 * 1.0f) * _1005;
            _1074 = ((_526 * 0.3183098733425140380859375f) * _1033) * _1071;
            _1075 = ((_1033 * (((clamp(50.0f * _528.y, 0.0f, 1.0f) * _1057).xxx + (_528 * (1.0f - _1057))) * ((_1036 / ((3.1415927410125732421875f * _1040) * _1040)) * (0.5f / ((_1017 * ((_1031 * _1045) + _1044)) + (_1031 * ((_1017 * _1045) + _1044))))))) * 1.0f) * _1071;
        }
        else
        {
            _1074 = 0.0f.xxx;
            _1075 = 0.0f.xxx;
        }
        float4 _1079 = float4(_1074, 0.0f);
        float4 _1083 = float4(_1075, 0.0f);
        bool4 _1087 = (((_947 >> 8u) & _922) != 0u).xxxx;
        _1090 = float4(_1087.x ? _1079.x : 0.0f.xxxx.x, _1087.y ? _1079.y : 0.0f.xxxx.y, _1087.z ? _1079.z : 0.0f.xxxx.z, _1087.w ? _1079.w : 0.0f.xxxx.w);
        _1091 = float4(_1087.x ? _1083.x : 0.0f.xxxx.x, _1087.y ? _1083.y : 0.0f.xxxx.y, _1087.z ? _1083.z : 0.0f.xxxx.z, _1087.w ? _1083.w : 0.0f.xxxx.w);
    }
    else
    {
        _1090 = 0.0f.xxxx;
        _1091 = 0.0f.xxxx;
    }
    uint _1115 = 0u;
    uint _1116 = 0u;
    [branch]
    if (_260)
    {
        uint _1105 = _887 * 2u;
        _1115 = min(OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1105).x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights);
        _1116 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid.Load(_1105 + 1u).x;
    }
    else
    {
        uint _1095 = _887 * 2u;
        _1115 = min(OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1095).x, OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights);
        _1116 = OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid.Load(_1095 + 1u).x;
    }
    uint _1122 = min(_1115, (_260 ? OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : OpaqueBasePass_OpaqueBasePass_Shared_ForwardISR_NumLocalLights));
    float4 _1124 = 0.0f.xxxx;
    float4 _1127 = 0.0f.xxxx;
    _1124 = _1090;
    _1127 = _1091;
    float4 _1125 = 0.0f.xxxx;
    float4 _1128 = 0.0f.xxxx;
    [loop]
    for (uint _1129 = 0u; _1129 < _1122; _1124 = _1125, _1127 = _1128, _1129++)
    {
        uint _1134 = _1116 + _1129;
        float4 _1166 = 0.0f.xxxx;
        float4 _1167 = 0.0f.xxxx;
        float4 _1168 = 0.0f.xxxx;
        float4 _1169 = 0.0f.xxxx;
        float4 _1170 = 0.0f.xxxx;
        [branch]
        if (_260)
        {
            uint _1155 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid.Load(_1134).x * 6u;
            _1166 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1155);
            _1167 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1155 + 1u);
            _1168 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1155 + 3u);
            _1169 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1155 + 2u);
            _1170 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer.Load(_1155 + 4u);
        }
        else
        {
            uint _1141 = OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid.Load(_1134).x * 6u;
            _1166 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1141);
            _1167 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1141 + 1u);
            _1168 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1141 + 3u);
            _1169 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1141 + 2u);
            _1170 = OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer.Load(_1141 + 4u);
        }
        float2 _1179 = spvUnpackHalf2x16(asuint(_1168.w));
        float _1180 = _1179.x;
        bool _1183 = _1167.w == 0.0f;
        uint _1187 = asuint(_1169.w);
        float4 _1203 = float4(float((_1187 & 1u) != 0u), float((_1187 & 2u) != 0u), float((_1187 & 4u) != 0u), float((_1187 & 8u) != 0u));
        uint _1204 = _1187 >> 4u;
        float3 _1219 = _1166.xyz - _353;
        float _1220 = dot(_1219, _1219);
        float _1237 = 0.0f;
        if (_1183)
        {
            float _1232 = _1220 * (_1166.w * _1166.w);
            float _1235 = clamp(1.0f - (_1232 * _1232), 0.0f, 1.0f);
            _1237 = _1235 * _1235;
        }
        else
        {
            float3 _1226 = _1219 * _1166.w;
            _1237 = pow(1.0f - clamp(dot(_1226, _1226), 0.0f, 1.0f), _1167.w);
        }
        float _1247 = 0.0f;
        if (_1168.x > (-2.0f))
        {
            float _1244 = clamp((dot(_1219 * rsqrt(_1220), _1169.xyz) - _1168.x) * _1168.y, 0.0f, 1.0f);
            _1247 = _1237 * (_1244 * _1244);
        }
        else
        {
            _1247 = _1237;
        }
        float3 _1567 = 0.0f.xxx;
        float3 _1568 = 0.0f.xxx;
        [branch]
        if (_1247 > 0.0f)
        {
            float _1258 = 0.0f;
            [branch]
            if (uint((_1187 & 255u) != 0u) != 0u)
            {
                _1258 = dot(float4(float((_1204 & 1u) != 0u), float((_1204 & 2u) != 0u), float((_1204 & 4u) != 0u), float((_1204 & 8u) != 0u)), _906) * lerp(1.0f, dot(_498, _1203), dot(_1203, 1.0f.xxxx));
            }
            else
            {
                _1258 = 1.0f;
            }
            float3 _1565 = 0.0f.xxx;
            float3 _1566 = 0.0f.xxx;
            [branch]
            if ((_1258 + _1258) > 0.0f)
            {
                float3 _1264 = _1170.xyz * (0.5f * _1180);
                float3 _1265 = _1219 - _1264;
                float3 _1266 = _1219 + _1264;
                float _1269 = max(_430, View_View_MinRoughness);
                bool _1270 = _1180 > 0.0f;
                float _1297 = 0.0f;
                float _1298 = 0.0f;
                float _1299 = 0.0f;
                [branch]
                if (_1270)
                {
                    float _1282 = rsqrt(dot(_1265, _1265));
                    float _1283 = rsqrt(dot(_1266, _1266));
                    float _1284 = _1282 * _1283;
                    float _1286 = dot(_1265, _1266) * _1284;
                    _1297 = _1286;
                    _1298 = 0.5f * ((dot(_434, _1265) * _1282) + (dot(_434, _1266) * _1283));
                    _1299 = _1284 / (((_1286 * 0.5f) + 0.5f) + _1284);
                }
                else
                {
                    float _1274 = dot(_1265, _1265);
                    _1297 = 1.0f;
                    _1298 = dot(_434, _1265 * rsqrt(_1274));
                    _1299 = 1.0f / (_1274 + 1.0f);
                }
                float _1317 = 0.0f;
                if (_1168.z > 0.0f)
                {
                    float _1306 = sqrt(clamp((_1168.z * _1168.z) * _1299, 0.0f, 1.0f));
                    float _1316 = 0.0f;
                    if (_1298 < _1306)
                    {
                        float _1312 = _1306 + max(_1298, -_1306);
                        _1316 = (_1312 * _1312) / (4.0f * _1306);
                    }
                    else
                    {
                        _1316 = _1298;
                    }
                    _1317 = _1316;
                }
                else
                {
                    _1317 = _1298;
                }
                float _1318 = clamp(_1317, 0.0f, 1.0f);
                float3 _1336 = 0.0f.xxx;
                if (_1270)
                {
                    float3 _1323 = reflect(-_364, _434);
                    float3 _1324 = _1266 - _1265;
                    float _1326 = dot(_1323, _1324);
                    _1336 = _1265 + (_1324 * clamp(dot(_1265, (_1323 * _1326) - _1324) / ((_1180 * _1180) - (_1326 * _1326)), 0.0f, 1.0f));
                }
                else
                {
                    _1336 = _1265;
                }
                float _1338 = rsqrt(dot(_1336, _1336));
                float3 _1339 = _1336 * _1338;
                float _1340 = max(_1269, View_View_MinRoughness);
                float _1345 = clamp((_1168.z * _1338) * (1.0f - (_1340 * _1340)), 0.0f, 1.0f);
                float _1347 = clamp(_1170.w * _1338, 0.0f, 1.0f);
                float _1355 = dot(_434, _1339);
                float _1356 = dot(_434, _364);
                float _1357 = dot(_364, _1339);
                float _1360 = rsqrt(2.0f + (2.0f * _1357));
                bool _1367 = _1345 > 0.0f;
                float _1462 = 0.0f;
                float _1463 = 0.0f;
                if (_1367)
                {
                    float _1372 = sqrt(1.0f - (_1345 * _1345));
                    float _1374 = (2.0f * _1355) * _1356;
                    float _1375 = _1374 - _1357;
                    float _1460 = 0.0f;
                    float _1461 = 0.0f;
                    if (_1375 >= _1372)
                    {
                        _1460 = 1.0f;
                        _1461 = abs(_1356);
                    }
                    else
                    {
                        float _1383 = _1345 * rsqrt(1.0f - (_1375 * _1375));
                        float _1386 = _1383 * (_1356 - (_1375 * _1355));
                        float _1392 = _1383 * ((((2.0f * _1356) * _1356) - 1.0f) - (_1375 * _1357));
                        float _1403 = _1383 * sqrt(clamp((((1.0f - (_1355 * _1355)) - (_1356 * _1356)) - (_1357 * _1357)) + (_1374 * _1357), 0.0f, 1.0f));
                        float _1405 = (_1403 * 2.0f) * _1356;
                        float _1406 = _1355 * _1372;
                        float _1407 = _1406 + _1356;
                        float _1408 = _1407 + _1386;
                        float _1409 = _1357 * _1372;
                        float _1411 = (_1409 + 1.0f) + _1392;
                        float _1412 = _1403 * _1411;
                        float _1413 = _1408 * _1411;
                        float _1414 = _1405 * _1408;
                        float _1419 = _1413 * (((-0.5f) * _1412) + ((0.25f * _1405) * _1408));
                        float _1433 = ((_1412 * _1412) + (_1414 * (_1414 - (2.0f * _1412)))) + (_1408 * ((_1407 * (_1411 * _1411)) + (_1413 * (((-0.5f) * (_1411 + _1409)) - 0.5f))));
                        float _1438 = (2.0f * _1419) / ((_1433 * _1433) + (_1419 * _1419));
                        float _1439 = _1438 * _1433;
                        float _1441 = 1.0f - (_1438 * _1419);
                        float _1449 = _1409 + ((_1441 * _1392) + (_1439 * _1405));
                        float _1452 = rsqrt(2.0f + (2.0f * _1449));
                        _1460 = clamp(((_1406 + ((_1441 * _1386) + (_1439 * _1403))) + _1356) * _1452, 0.0f, 1.0f);
                        _1461 = clamp(_1452 + (_1452 * _1449), 0.0f, 1.0f);
                    }
                    _1462 = _1460;
                    _1463 = _1461;
                }
                else
                {
                    _1462 = clamp((_1355 + _1356) * _1360, 0.0f, 1.0f);
                    _1463 = clamp(_1360 + (_1360 * _1357), 0.0f, 1.0f);
                }
                float _1466 = clamp(abs(_1356) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1469 = 1.0f.xxx * ((_1183 ? _1299 : 1.0f) * _1318);
                float3 _1559 = 0.0f.xxx;
                if (((0u | (asuint(clamp(1.0f - (max(_1180, _1168.z) * 0.0500000007450580596923828125f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1559 = 0.0f.xxx;
                }
                else
                {
                    float _1476 = _1269 * _1269;
                    float _1477 = _1476 * _1476;
                    float _1487 = 0.0f;
                    if (_1347 > 0.0f)
                    {
                        _1487 = clamp(_1477 + ((_1347 * _1347) / ((_1463 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1487 = _1477;
                    }
                    float _1502 = 0.0f;
                    float _1503 = 0.0f;
                    if (_1367)
                    {
                        float _1500 = _1487 + (((0.25f * _1345) * ((3.0f * asfloat(532487669 + (asint(_1487) >> 1))) + _1345)) / (_1463 + 0.001000000047497451305389404296875f));
                        _1502 = _1487 / _1500;
                        _1503 = _1500;
                    }
                    else
                    {
                        _1502 = 1.0f;
                        _1503 = _1487;
                    }
                    float _1525 = 0.0f;
                    if (_1297 < 1.0f)
                    {
                        float _1510 = sqrt((1.00010001659393310546875f - _1297) / (1.0f + _1297));
                        _1525 = _1502 * sqrt(_1503 / (_1503 + (((0.25f * _1510) * ((3.0f * asfloat(532487669 + (asint(_1503) >> 1))) + _1510)) / (_1463 + 0.001000000047497451305389404296875f))));
                    }
                    else
                    {
                        _1525 = _1502;
                    }
                    float _1529 = (((_1462 * _1487) - _1462) * _1462) + 1.0f;
                    float _1534 = sqrt(_1487);
                    float _1535 = 1.0f - _1534;
                    float _1544 = 1.0f - _1463;
                    float _1545 = _1544 * _1544;
                    float _1547 = (_1545 * _1545) * _1544;
                    _1559 = _1469 * (((clamp(50.0f * _528.y, 0.0f, 1.0f) * _1547).xxx + (_528 * (1.0f - _1547))) * (((_1487 / ((3.1415927410125732421875f * _1529) * _1529)) * _1525) * (0.5f / ((_1318 * ((_1466 * _1535) + _1534)) + (_1466 * ((_1318 * _1535) + _1534))))));
                }
                float3 _1562 = (_1167.xyz * _1247) * _1258;
                _1565 = ((_526 * 0.3183098733425140380859375f) * _1469) * _1562;
                _1566 = (_1559 * 1.0f) * _1562;
            }
            else
            {
                _1565 = 0.0f.xxx;
                _1566 = 0.0f.xxx;
            }
            _1567 = _1565;
            _1568 = _1566;
        }
        else
        {
            _1567 = 0.0f.xxx;
            _1568 = 0.0f.xxx;
        }
        [flatten]
        if (((_1187 >> 8u) & _922) != 0u)
        {
            _1125 = _1124 + float4(_1567, 0.0f);
            _1128 = _1127 + float4(_1568, 0.0f);
        }
        else
        {
            _1125 = _1124;
            _1128 = _1127;
        }
    }
    bool4 _1587 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1596 = int(asuint(asfloat(View_PrimitiveSceneData.Load4(_384 * 16 + 0)).w));
    float4 _1656 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _430) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1657 = _1656.x;
    float2 _1667 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_1657 * _1657, exp2((-9.27999973297119140625f) * clamp(dot(_434, _364), 0.0f, 1.0f))) * _1657) + _1656.y)) + _1656.zw;
    bool _1695 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _1761 = 0.0f.xxxx;
    if (_1695)
    {
        float4 _1713 = mul(((float4(_354, 0.0f) + float4(_325, 0.0f)) * 2097152.0f) + float4(_355, 1.0f), _324);
        float _1714 = _1713.w;
        float3 _1736 = float3(((_1713.xy / _1714.xx).xy * float2(0.5f, -0.5f)) + 0.5f.xx, (log2((_1714 * View_View_VolumetricFogGridZParams.x) + View_View_VolumetricFogGridZParams.y) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z);
        float4 _1749 = 0.0f.xxxx;
        if (_1695)
        {
            float4 _1748 = 0.0f.xxxx;
            if (_260)
            {
                _1748 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1736, 0.0f);
            }
            else
            {
                _1748 = OpaqueBasePass_Shared_FogISR_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, _1736, 0.0f);
            }
            _1749 = _1748;
        }
        else
        {
            _1749 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        }
        _1761 = float4(_1749.xyz + (in_var_TEXCOORD7.xyz * _1749.w), _1749.w * in_var_TEXCOORD7.w);
    }
    else
    {
        _1761 = in_var_TEXCOORD7;
    }
    float3 _1768 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[1].yzw, Material_Material_PreshaderBuffer[1].x.xxx), 0.0f.xxx);
    float3 _1825 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _1799 = abs(((_354 - asfloat(View_PrimitiveSceneData.Load4((_384 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_355 - asfloat(View_PrimitiveSceneData.Load4((_384 + 19u) * 16 + 0)).xyz));
        float3 _1800 = float3(asfloat(View_PrimitiveSceneData.Load4((_384 + 18u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_384 + 25u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_384 + 26u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _1824 = 0.0f.xxx;
        if (any(bool3(_1799.x > _1800.x, _1799.y > _1800.y, _1799.z > _1800.z)))
        {
            float3 _1820 = frac(frac(((_354.x + _354.y) + _354.z) * 2420.113525390625f) + (((_355.x + _355.y) + _355.z) * 0.001154000055976212024688720703125f)).xxx;
            _1824 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1820.x > 0.5f.xxx.x, _1820.y > 0.5f.xxx.y, _1820.z > 0.5f.xxx.z)));
        }
        else
        {
            _1824 = _1768;
        }
        _1825 = _1824;
    }
    else
    {
        _1825 = _1768;
    }
    float4 _1836 = float4((((lerp((float4(_1587.x ? 0.0f.xxxx.x : _1124.x, _1587.y ? 0.0f.xxxx.y : _1124.y, _1587.z ? 0.0f.xxxx.z : _1124.z, _1587.w ? 0.0f.xxxx.w : _1124.w).xyz + float4(_1587.x ? 0.0f.xxxx.x : _1127.x, _1587.y ? 0.0f.xxxx.y : _1127.y, _1587.z ? 0.0f.xxxx.z : _1127.z, _1587.w ? 0.0f.xxxx.w : _1127.w).xyz) + (((((float4(OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_434 * (2.0f * dot(_364, _434))) - _364, ReflectionCapture_ReflectionCapture_CaptureProperties[_1596].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_430, 0.001000000047497451305389404296875f))))).xyz * ReflectionCapture_ReflectionCapture_CaptureProperties[_1596].x, _218).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * lerp(1.0f, min((dot(_663, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * _814) / max(ReflectionCapture_ReflectionCapture_CaptureOffsetAndAverageBrightness[_1596].w * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp((_430 * View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x) + View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y, 0.0f, 1.0f)))).xyz * ((_528 * _1667.x) + (clamp(50.0f * _528.y, 0.0f, 1.0f) * _1667.y).xxx)) * _814) * max(1.0f.xxx, ((((((_528 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_528 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_528 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)), _526 + (_528 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + (((_663 * _814) * _526) * max(1.0f.xxx, ((((((_433 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_433 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_433 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f))) + _1825) * _1761.w) + _1761.xyz, 0.0f);
    _1836.w = 0.0f;
    out_var_SV_Target0 = _1836 * View_View_PreExposure;
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
