static const float _132[2] = { -1.0f, 1.0f };
static const float4 _135[2] = { float4(-1.0f, 0.0f, 0.0f, 1.0f), float4(1.0f, 0.0f, 0.0f, 1.0f) };

cbuffer View
{
    row_major float4x4 View_View_TranslatedWorldToClip : packoffset(c0);
    float3 View_View_ViewTilePosition : packoffset(c60);
    float3 View_View_ViewForward : packoffset(c62);
    float3 View_View_RelativeWorldCameraOrigin : packoffset(c69);
    float3 View_View_TranslatedWorldCameraOrigin : packoffset(c70);
    float3 View_View_RelativePreViewTranslation : packoffset(c72);
    float View_View_OneOverPreExposure : packoffset(c130.z);
    float4 View_View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize : packoffset(c175);
    float View_View_SkyAtmosphereAerialPerspectiveStartDepthKm : packoffset(c176);
    float View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution : packoffset(c176.y);
    float View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv : packoffset(c176.z);
    float View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv : packoffset(c177);
    float View_View_SkyAtmosphereApplyCameraAerialPerspectiveVolume : packoffset(c177.y);
    float View_View_RealTimeReflectionCapture : packoffset(c179);
    float View_View_HMDEyePaddingOffset : packoffset(c190.y);
    float View_View_VolumetricFogMaxDistance : packoffset(c225.z);
    uint View_View_InstanceSceneDataSOAStride : packoffset(c277);
};

ByteAddressBuffer View_PrimitiveSceneData;
ByteAddressBuffer View_InstanceSceneData;
cbuffer InstancedView
{
    row_major float4x4 InstancedView_InstancedView_TranslatedWorldToClip : packoffset(c0);
    float3 InstancedView_InstancedView_ViewTilePosition : packoffset(c60);
    float3 InstancedView_InstancedView_TranslatedWorldCameraOrigin : packoffset(c70);
    float3 InstancedView_InstancedView_RelativePreViewTranslation : packoffset(c72);
    float InstancedView_InstancedView_OneOverPreExposure : packoffset(c130.z);
    float4 InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize : packoffset(c175);
    float InstancedView_InstancedView_SkyAtmosphereAerialPerspectiveStartDepthKm : packoffset(c176);
    float InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution : packoffset(c176.y);
    float InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv : packoffset(c176.z);
    float InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv : packoffset(c177);
    float InstancedView_InstancedView_SkyAtmosphereApplyCameraAerialPerspectiveVolume : packoffset(c177.y);
    float InstancedView_InstancedView_RealTimeReflectionCapture : packoffset(c179);
    float InstancedView_InstancedView_HMDEyePaddingOffset : packoffset(c190.y);
    int InstancedView_InstancedView_StereoPassIndex : packoffset(c192.w);
};

cbuffer OpaqueBasePass
{
    float4 OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters : packoffset(c109);
    float4 OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters2 : packoffset(c110);
    float4 OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogColorParameter : packoffset(c111);
    float4 OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters3 : packoffset(c112);
    float4 OpaqueBasePass_OpaqueBasePass_Shared_Fog_InscatteringLightDirection : packoffset(c113);
    float4 OpaqueBasePass_OpaqueBasePass_Shared_Fog_DirectionalInscatteringColor : packoffset(c114);
    float2 OpaqueBasePass_OpaqueBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation : packoffset(c115);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Fog_FogInscatteringTextureParameters : packoffset(c116);
};

ByteAddressBuffer InstanceCulling_InstanceIdsBuffer;
cbuffer LocalVF
{
    int4 LocalVF_LocalVF_VertexFetch_Parameters : packoffset(c0);
};

Texture3D<float4> View_CameraAerialPerspectiveVolume;
SamplerState View_CameraAerialPerspectiveVolumeSampler;
TextureCube<float4> OpaqueBasePass_Shared_Fog_FogInscatteringColorCubemap;
SamplerState OpaqueBasePass_Shared_Fog_FogInscatteringColorSampler;
Buffer<float4> LocalVF_VertexFetch_PackedTangentsBuffer;

static float4 gl_Position;
static float gl_ClipDistance[1];
static int gl_VertexIndex;
static int gl_InstanceIndex;
static float4 in_var_ATTRIBUTE0;
static uint in_var_ATTRIBUTE13;
static float4 out_var_TEXCOORD10_centroid;
static float4 out_var_TEXCOORD11_centroid;
static uint out_var_PACKED_EYE_INDEX;
static uint out_var_PRIMITIVE_ID;
static float4 out_var_TEXCOORD7;

struct SPIRV_Cross_Input
{
    float4 in_var_ATTRIBUTE0 : ATTRIBUTE0;
    uint in_var_ATTRIBUTE13 : ATTRIBUTE13;
    uint gl_VertexIndex : SV_VertexID;
    uint gl_InstanceIndex : SV_InstanceID;
};

struct SPIRV_Cross_Output
{
    float4 out_var_TEXCOORD10_centroid : TEXCOORD10_centroid;
    float4 out_var_TEXCOORD11_centroid : TEXCOORD11_centroid;
    nointerpolation uint out_var_PACKED_EYE_INDEX : PACKED_EYE_INDEX;
    nointerpolation uint out_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float4 out_var_TEXCOORD7 : TEXCOORD7;
    precise float4 gl_Position : SV_Position;
    float gl_ClipDistance0 : SV_ClipDistance0;
};

static float3x3 _148 = float3x3(0.0f.xxx, 0.0f.xxx, 0.0f.xxx);
static float4 _149 = 0.0f.xxxx;
static float2 _150 = 0.0f.xx;

void vert_main()
{
    bool _166 = InstancedView_InstancedView_StereoPassIndex > 0;
    uint _168 = _166 ? (uint(gl_InstanceIndex) & 1u) : 0u;
    float4x4 _229 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _230 = 0.0f.xxx;
    float _231 = 0.0f;
    float4 _232 = 0.0f.xxxx;
    float _233 = 0.0f;
    float _234 = 0.0f;
    float _235 = 0.0f;
    float _236 = 0.0f;
    float _237 = 0.0f;
    float _238 = 0.0f;
    float _239 = 0.0f;
    float3 _240 = 0.0f.xxx;
    float3 _241 = 0.0f.xxx;
    do
    {
        if (_168 == 0u)
        {
            _229 = View_View_TranslatedWorldToClip;
            _230 = View_View_TranslatedWorldCameraOrigin;
            _231 = View_View_OneOverPreExposure;
            _232 = View_View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
            _233 = View_View_SkyAtmosphereAerialPerspectiveStartDepthKm;
            _234 = View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
            _235 = View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
            _236 = View_View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
            _237 = View_View_SkyAtmosphereApplyCameraAerialPerspectiveVolume;
            _238 = View_View_RealTimeReflectionCapture;
            _239 = View_View_HMDEyePaddingOffset;
            _240 = -View_View_ViewTilePosition;
            _241 = View_View_RelativePreViewTranslation;
            break;
        }
        else
        {
            _229 = InstancedView_InstancedView_TranslatedWorldToClip;
            _230 = InstancedView_InstancedView_TranslatedWorldCameraOrigin;
            _231 = InstancedView_InstancedView_OneOverPreExposure;
            _232 = InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
            _233 = InstancedView_InstancedView_SkyAtmosphereAerialPerspectiveStartDepthKm;
            _234 = InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
            _235 = InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
            _236 = InstancedView_InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
            _237 = InstancedView_InstancedView_SkyAtmosphereApplyCameraAerialPerspectiveVolume;
            _238 = InstancedView_InstancedView_RealTimeReflectionCapture;
            _239 = InstancedView_InstancedView_HMDEyePaddingOffset;
            _240 = -InstancedView_InstancedView_ViewTilePosition;
            _241 = InstancedView_InstancedView_RelativePreViewTranslation;
            break;
        }
    } while(false);
    uint _260 = 0u;
    if ((in_var_ATTRIBUTE13 & 2147483648u) != 0u)
    {
        _260 = uint(int(asuint(asfloat(View_PrimitiveSceneData.Load4(((in_var_ATTRIBUTE13 & 2147483647u) * 40u) * 16 + 0)).y))) + uint(gl_InstanceIndex);
    }
    else
    {
        _260 = InstanceCulling_InstanceIdsBuffer.Load((in_var_ATTRIBUTE13 + uint(gl_InstanceIndex)) * 4 + 0) & 268435455u;
    }
    uint _266 = asuint(asfloat(View_InstanceSceneData.Load4(_260 * 16 + 0)).x);
    uint _268 = (_266 << 12u) >> 12u;
    float3 _382 = 0.0f.xxx;
    float4x4 _383 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
    float3 _384 = 0.0f.xxx;
    float _385 = 0.0f;
    [branch]
    if (false || (_268 != 1048575u))
    {
        uint4 _282 = asuint(asfloat(View_InstanceSceneData.Load4((View_View_InstanceSceneDataSOAStride + _260) * 16 + 0)));
        uint _284 = (2u * View_View_InstanceSceneDataSOAStride) + _260;
        float4x4 _288 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
        _288[3] = float4(asfloat(View_InstanceSceneData.Load4(_284 * 16 + 0)).x, asfloat(View_InstanceSceneData.Load4(_284 * 16 + 0)).y, asfloat(View_InstanceSceneData.Load4(_284 * 16 + 0)).z, 0.0f.xxxx.w);
        float4x4 _289 = _288;
        _289[3].w = 1.0f;
        uint _290 = _282.x;
        uint _297 = _282.y;
        float _300 = float((_297 >> 0u) & 32767u);
        float2 _304 = (float3(float((_290 >> 0u) & 65535u), float((_290 >> 16u) & 65535u), _300).xy - 32768.0f.xx) * 3.0518509447574615478515625e-05f;
        float _306 = (_300 - 16384.0f) * 4.3161006033187732100486755371094e-05f;
        bool _308 = (_297 & 32768u) != 0u;
        float _309 = _304.x;
        float _310 = _304.y;
        float _311 = _309 + _310;
        float _312 = _309 - _310;
        float3 _318 = normalize(float3(_311, _312, 2.0f - dot(1.0f.xx, abs(float2(_311, _312)))));
        float4 _319 = float4(_318.x, _318.y, _318.z, 0.0f.xxxx.w);
        float4x4 _320 = _289;
        _320[2] = _319;
        float _323 = 1.0f / (1.0f + _318.z);
        float _324 = _318.x;
        float _325 = -_324;
        float _326 = _318.y;
        float _328 = (_325 * _326) * _323;
        float _340 = sqrt(1.0f - (_306 * _306));
        float3 _345 = (float3(1.0f - ((_324 * _324) * _323), _328, _325) * (_308 ? _306 : _340)) + (float3(_328, 1.0f - ((_326 * _326) * _323), -_326) * (_308 ? _340 : _306));
        float4 _346 = float4(_345.x, _345.y, _345.z, 0.0f.xxxx.w);
        float4x4 _347 = _320;
        _347[0] = _346;
        float3 _350 = cross(_318.xyz, _345.xyz);
        float4 _351 = float4(_350.x, _350.y, _350.z, 0.0f.xxxx.w);
        float4x4 _352 = _347;
        _352[1] = _351;
        uint _353 = _282.w;
        uint _358 = _282.z;
        float3 _366 = (float3(uint3(_358 >> 0u, _358 >> 16u, _353 >> 0u) & uint3(65535u, 65535u, 65535u)) - 32768.0f.xxx) * asfloat(((_353 >> 16u) - 15u) << 23u);
        float4x4 _369 = _352;
        _369[0] = _346 * _366.x;
        float4x4 _372 = _369;
        _372[1] = _351 * _366.y;
        float4x4 _375 = _372;
        _375[2] = _319 * _366.z;
        _382 = 1.0f.xxx / abs(_366).xyz;
        _383 = _375;
        _384 = asfloat(View_PrimitiveSceneData.Load4(((_268 * 40u) + 1u) * 16 + 0)).xyz;
        _385 = (((_266 >> 20u) & 1u) != 0u) ? (-1.0f) : 1.0f;
    }
    else
    {
        _382 = 0.0f.xxx;
        _383 = float4x4(0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx, 0.0f.xxxx);
        _384 = 0.0f.xxx;
        _385 = 0.0f;
    }
    uint _390 = 2u * (uint(LocalVF_LocalVF_VertexFetch_Parameters.w) + uint(gl_VertexIndex));
    float4 _395 = LocalVF_VertexFetch_PackedTangentsBuffer.Load(_390 + 1u);
    float _396 = _395.w;
    float3 _397 = _395.xyz;
    float3 _399 = cross(_397, LocalVF_VertexFetch_PackedTangentsBuffer.Load(_390).xyz) * _396;
    float3x3 _402 = _148;
    _402[0] = cross(_399, _397) * _396;
    float3x3 _403 = _402;
    _403[1] = _399;
    float3x3 _404 = _403;
    _404[2] = _397;
    float3x3 _414 = float3x3(_383[0].xyz, _383[1].xyz, _383[2].xyz);
    _414[0] = _383[0].xyz * _382.x;
    float3x3 _417 = _414;
    _417[1] = _383[1].xyz * _382.y;
    float3x3 _420 = _417;
    _420[2] = _383[2].xyz * _382.z;
    float3x3 _421 = mul(_404, _420);
    float4 _441 = float4(((_384 + _240) * 2097152.0f) + (((((in_var_ATTRIBUTE0.xxx * _383[0].xyz) + (in_var_ATTRIBUTE0.yyy * _383[1].xyz)) + (in_var_ATTRIBUTE0.zzz * _383[2].xyz)) + _383[3].xyz) + _241), 1.0f);
    float4 _443 = mul(float4(_441.x, _441.y, _441.z, _441.w), _229);
    float4 _460 = 0.0f.xxxx;
    float _461 = 0.0f;
    [branch]
    if (_166)
    {
        float _449 = 0.5f * _239;
        float4 _459 = _443;
        _459.x = (_443.x * _449) + ((_132[_168] * _443.w) * (1.0f - _449));
        _460 = _459;
        _461 = dot(_443, _135[_168]);
    }
    else
    {
        _460 = _443;
        _461 = 0.0f;
    }
    float3 _472 = _441.xyz;
    float3 _473 = _472 - _230;
    float3 _493 = (View_View_ViewTilePosition * 2097152.0f) + View_View_RelativeWorldCameraOrigin;
    float _494 = _493.z;
    float _495 = min(_494, OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters.z);
    float _498 = _473.z + (_494 - _495);
    float3 _499 = _473;
    _499.z = _498;
    float _500 = dot(_499, _499);
    float _501 = rsqrt(_500);
    float _502 = _500 * _501;
    float _510 = max(max(View_View_VolumetricFogMaxDistance * (length(_473) / dot(_473, View_View_ViewForward)), 0.0f), OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters.w);
    float _544 = 0.0f;
    float _545 = 0.0f;
    float _546 = 0.0f;
    float _547 = 0.0f;
    if (_510 > 0.0f)
    {
        float _514 = _510 * _501;
        float _515 = _514 * _498;
        float _516 = _495 + _515;
        _544 = (1.0f - _514) * _502;
        _545 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters2.z * exp2(-max(-127.0f, OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters2.y * (_516 - OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters2.w)));
        _546 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters3.x * exp2(-max(-127.0f, OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters.y * (_516 - OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters3.y)));
        _547 = _498 - _515;
    }
    else
    {
        _544 = _502;
        _545 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters2.x;
        _546 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters.x;
        _547 = _498;
    }
    float _551 = max(-127.0f, OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters.y * _547);
    float _565 = max(-127.0f, OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters2.y * _547);
    float _576 = (_546 * ((abs(_551) > 0.00999999977648258209228515625f) ? ((1.0f - exp2(-_551)) / _551) : (0.693147182464599609375f - (0.2402265071868896484375f * _551)))) + (_545 * ((abs(_565) > 0.00999999977648258209228515625f) ? ((1.0f - exp2(-_565)) / _565) : (0.693147182464599609375f - (0.2402265071868896484375f * _565))));
    float3 _618 = 0.0f.xxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters3.z > 0.0f)
    {
        float2 _603 = float2(dot(_499.xy, float2(OpaqueBasePass_OpaqueBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation.y, -OpaqueBasePass_OpaqueBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation.x)), dot(_499.xy, OpaqueBasePass_OpaqueBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation));
        float3 _604 = float3(_603.x, _603.y, _499.z);
        _618 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogColorParameter.xyz * lerp(OpaqueBasePass_Shared_Fog_FogInscatteringColorCubemap.SampleLevel(OpaqueBasePass_Shared_Fog_FogInscatteringColorSampler, _604, OpaqueBasePass_OpaqueBasePass_Shared_Fog_FogInscatteringTextureParameters.z).xyz, OpaqueBasePass_Shared_Fog_FogInscatteringColorCubemap.SampleLevel(OpaqueBasePass_Shared_Fog_FogInscatteringColorSampler, _604, 0.0f).xyz, clamp((_502 * OpaqueBasePass_OpaqueBasePass_Shared_Fog_FogInscatteringTextureParameters.x) + OpaqueBasePass_OpaqueBasePass_Shared_Fog_FogInscatteringTextureParameters.y, 0.0f, 1.0f).xxx);
    }
    else
    {
        _618 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogColorParameter.xyz;
    }
    float3 _646 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Fog_InscatteringLightDirection.w >= 0.0f) && (OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters3.z == 0.0f))
    {
        _646 = (OpaqueBasePass_OpaqueBasePass_Shared_Fog_DirectionalInscatteringColor.xyz * pow(clamp(dot(_499 * _501, OpaqueBasePass_OpaqueBasePass_Shared_Fog_InscatteringLightDirection.xyz), 0.0f, 1.0f), OpaqueBasePass_OpaqueBasePass_Shared_Fog_DirectionalInscatteringColor.w)) * (1.0f - clamp(exp2(-(_576 * max(_544 - OpaqueBasePass_OpaqueBasePass_Shared_Fog_InscatteringLightDirection.w, 0.0f))), 0.0f, 1.0f));
    }
    else
    {
        _646 = 0.0f.xxx;
    }
    bool _655 = (OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters3.w > 0.0f) && (_502 > OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogParameters3.w);
    bool3 _656 = _655.xxx;
    float _658 = _655 ? 1.0f : max(clamp(exp2(-(_576 * _544)), 0.0f, 1.0f), OpaqueBasePass_OpaqueBasePass_Shared_Fog_ExponentialFogColorParameter.w);
    float4 _665 = float4((_618 * (1.0f - _658)) + float3(_656.x ? 0.0f.xxx.x : _646.x, _656.y ? 0.0f.xxx.y : _646.y, _656.z ? 0.0f.xxx.z : _646.z), _658);
    float4 _742 = 0.0f.xxxx;
    if (_237 > 0.0f)
    {
        float3 _679 = (_472 * 9.9999997473787516355514526367188e-06f) - (_230 * 9.9999997473787516355514526367188e-06f);
        float _685 = sqrt((max(0.0f, length(_679) - _233) * _236) * _235);
        float _686 = _685 * _234;
        float _693 = 0.0f;
        if (_686 < 0.707106769084930419921875f)
        {
            _693 = clamp((_686 * _686) * 2.0f, 0.0f, 1.0f);
        }
        else
        {
            _693 = 1.0f;
        }
        float2 _721 = 0.0f.xx;
        if (_238 != 0.0f)
        {
            float3 _696 = normalize(_679);
            float _697 = _696.z;
            float _700 = sqrt(1.0f - (_697 * _697));
            float2 _703 = _150;
            _703.y = (_697 * 0.5f) + 0.5f;
            float _708 = acos(_696.x / _700);
            float2 _713 = _703;
            _713.x = (((_696.y / _700) < 0.0f) ? (6.283185482025146484375f - _708) : _708) * 0.15915493667125701904296875f;
            _721 = (_713 + (_232.zw * 0.5f)) * (_232.xy / (_232.xy + 1.0f.xx));
        }
        else
        {
            _721 = ((_460.xy / _460.ww) * float2(0.5f, -0.5f)) + 0.5f.xx;
        }
        float4 _726 = View_CameraAerialPerspectiveVolume.SampleLevel(View_CameraAerialPerspectiveVolumeSampler, float3(_721, _685), 0.0f);
        float3 _738 = _665.xyz + (((_726.xyz * _693).xyz * _231).xyz * _658);
        float4 _741 = float4(_738.x, _738.y, _738.z, _149.w);
        _741.w = _658 * (1.0f - (_693 * (1.0f - _726.w)));
        _742 = _741;
    }
    else
    {
        _742 = _665;
    }
    out_var_TEXCOORD10_centroid = float4(_421[0], 0.0f);
    out_var_TEXCOORD11_centroid = float4(_421[2], _396 * _385);
    out_var_PACKED_EYE_INDEX = _168;
    out_var_PRIMITIVE_ID = _268;
    out_var_TEXCOORD7 = _742;
    gl_Position = _460;
    gl_ClipDistance[0u] = _461;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_VertexIndex = int(stage_input.gl_VertexIndex);
    gl_InstanceIndex = int(stage_input.gl_InstanceIndex);
    in_var_ATTRIBUTE0 = stage_input.in_var_ATTRIBUTE0;
    in_var_ATTRIBUTE13 = stage_input.in_var_ATTRIBUTE13;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_ClipDistance0.x = gl_ClipDistance[0];
    stage_output.out_var_TEXCOORD10_centroid = out_var_TEXCOORD10_centroid;
    stage_output.out_var_TEXCOORD11_centroid = out_var_TEXCOORD11_centroid;
    stage_output.out_var_PACKED_EYE_INDEX = out_var_PACKED_EYE_INDEX;
    stage_output.out_var_PRIMITIVE_ID = out_var_PRIMITIVE_ID;
    stage_output.out_var_TEXCOORD7 = out_var_TEXCOORD7;
    return stage_output;
}
