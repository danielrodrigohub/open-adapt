package com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import java.util.List;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import okhttp3.internal.http2.Http2;
import p4.h;

/* JADX INFO: compiled from: OIDCAuthConfigurationJSON.kt */
/* JADX INFO: loaded from: classes.dex */
public final class OIDCAuthConfigurationJSON$$serializer implements GeneratedSerializer<OIDCAuthConfigurationJSON> {
    public static final OIDCAuthConfigurationJSON$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        OIDCAuthConfigurationJSON$$serializer oIDCAuthConfigurationJSON$$serializer = new OIDCAuthConfigurationJSON$$serializer();
        INSTANCE = oIDCAuthConfigurationJSON$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model.OIDCAuthConfigurationJSON", oIDCAuthConfigurationJSON$$serializer, 15);
        pluginGeneratedSerialDescriptor.addElement("authorization_endpoint", false);
        pluginGeneratedSerialDescriptor.addElement("claims_supported", false);
        pluginGeneratedSerialDescriptor.addElement("claims_parameter_supported", false);
        pluginGeneratedSerialDescriptor.addElement("grant_types_supported", false);
        pluginGeneratedSerialDescriptor.addElement("issuer", false);
        pluginGeneratedSerialDescriptor.addElement("jwks_uri", false);
        pluginGeneratedSerialDescriptor.addElement("response_types_supported", false);
        pluginGeneratedSerialDescriptor.addElement("scopes_supported", false);
        pluginGeneratedSerialDescriptor.addElement("subject_types_supported", false);
        pluginGeneratedSerialDescriptor.addElement("id_token_signing_alg_values_supported", false);
        pluginGeneratedSerialDescriptor.addElement("token_endpoint", false);
        pluginGeneratedSerialDescriptor.addElement("token_endpoint_auth_methods_supported", false);
        pluginGeneratedSerialDescriptor.addElement("ui_locales_supported", false);
        pluginGeneratedSerialDescriptor.addElement("userinfo_endpoint", false);
        pluginGeneratedSerialDescriptor.addElement("revoke_endpoint", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private OIDCAuthConfigurationJSON$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, new ArrayListSerializer(stringSerializer), BooleanSerializer.INSTANCE, new ArrayListSerializer(stringSerializer), stringSerializer, stringSerializer, new ArrayListSerializer(stringSerializer), new ArrayListSerializer(stringSerializer), new ArrayListSerializer(stringSerializer), new ArrayListSerializer(stringSerializer), stringSerializer, new ArrayListSerializer(stringSerializer), new ArrayListSerializer(stringSerializer), stringSerializer, stringSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public OIDCAuthConfigurationJSON deserialize(Decoder decoder) {
        Object objDecodeSerializableElement;
        String strDecodeStringElement;
        String strDecodeStringElement2;
        Object objDecodeSerializableElement2;
        Object objDecodeSerializableElement3;
        int i10;
        Object obj;
        String str;
        String str2;
        String strDecodeStringElement3;
        boolean z10;
        String str3;
        Object objDecodeSerializableElement4;
        Object obj2;
        Object objDecodeSerializableElement5;
        Object obj3;
        h.j(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        int i11 = 10;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement4 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            objDecodeSerializableElement5 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 1, new ArrayListSerializer(stringSerializer), null);
            boolean zDecodeBooleanElement = compositeDecoderBeginStructure.decodeBooleanElement(descriptor2, 2);
            Object objDecodeSerializableElement6 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 3, new ArrayListSerializer(stringSerializer), null);
            String strDecodeStringElement5 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 4);
            String strDecodeStringElement6 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 5);
            Object objDecodeSerializableElement7 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 6, new ArrayListSerializer(stringSerializer), null);
            Object objDecodeSerializableElement8 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 7, new ArrayListSerializer(stringSerializer), null);
            Object objDecodeSerializableElement9 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 8, new ArrayListSerializer(stringSerializer), null);
            objDecodeSerializableElement3 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 9, new ArrayListSerializer(stringSerializer), null);
            String strDecodeStringElement7 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 10);
            objDecodeSerializableElement2 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 11, new ArrayListSerializer(stringSerializer), null);
            objDecodeSerializableElement4 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 12, new ArrayListSerializer(stringSerializer), null);
            strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 13);
            str2 = strDecodeStringElement7;
            strDecodeStringElement = strDecodeStringElement6;
            obj2 = objDecodeSerializableElement6;
            obj = objDecodeSerializableElement9;
            strDecodeStringElement3 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 14);
            str3 = strDecodeStringElement4;
            z10 = zDecodeBooleanElement;
            obj3 = objDecodeSerializableElement8;
            objDecodeSerializableElement = objDecodeSerializableElement7;
            i10 = 32767;
            str = strDecodeStringElement5;
        } else {
            int i12 = 14;
            boolean z11 = true;
            int i13 = 0;
            Object objDecodeSerializableElement10 = null;
            String strDecodeStringElement8 = null;
            Object objDecodeSerializableElement11 = null;
            Object objDecodeSerializableElement12 = null;
            Object objDecodeSerializableElement13 = null;
            Object objDecodeSerializableElement14 = null;
            Object objDecodeSerializableElement15 = null;
            objDecodeSerializableElement = null;
            String strDecodeStringElement9 = null;
            strDecodeStringElement = null;
            String strDecodeStringElement10 = null;
            strDecodeStringElement2 = null;
            String strDecodeStringElement11 = null;
            Object objDecodeSerializableElement16 = null;
            boolean zDecodeBooleanElement2 = false;
            while (z11) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                        z11 = false;
                        i12 = 14;
                        break;
                    case 0:
                        strDecodeStringElement8 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
                        i13 |= 1;
                        i12 = 14;
                        i11 = 10;
                        break;
                    case 1:
                        objDecodeSerializableElement16 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 1, new ArrayListSerializer(StringSerializer.INSTANCE), objDecodeSerializableElement16);
                        i13 |= 2;
                        i12 = 14;
                        i11 = 10;
                        break;
                    case 2:
                        zDecodeBooleanElement2 = compositeDecoderBeginStructure.decodeBooleanElement(descriptor2, 2);
                        i13 |= 4;
                        i12 = 14;
                        i11 = 10;
                        break;
                    case 3:
                        objDecodeSerializableElement10 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 3, new ArrayListSerializer(StringSerializer.INSTANCE), objDecodeSerializableElement10);
                        i13 |= 8;
                        i12 = 14;
                        i11 = 10;
                        break;
                    case 4:
                        strDecodeStringElement9 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 4);
                        i13 |= 16;
                        i12 = 14;
                        i11 = 10;
                        break;
                    case 5:
                        strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 5);
                        i13 |= 32;
                        i12 = 14;
                        i11 = 10;
                        break;
                    case 6:
                        objDecodeSerializableElement = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 6, new ArrayListSerializer(StringSerializer.INSTANCE), objDecodeSerializableElement);
                        i13 |= 64;
                        i12 = 14;
                        i11 = 10;
                        break;
                    case 7:
                        objDecodeSerializableElement14 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 7, new ArrayListSerializer(StringSerializer.INSTANCE), objDecodeSerializableElement14);
                        i13 |= 128;
                        i12 = 14;
                        i11 = 10;
                        break;
                    case 8:
                        objDecodeSerializableElement15 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 8, new ArrayListSerializer(StringSerializer.INSTANCE), objDecodeSerializableElement15);
                        i13 |= 256;
                        i12 = 14;
                        i11 = 10;
                        break;
                    case 9:
                        objDecodeSerializableElement13 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 9, new ArrayListSerializer(StringSerializer.INSTANCE), objDecodeSerializableElement13);
                        i13 |= 512;
                        i12 = 14;
                        i11 = 10;
                        break;
                    case 10:
                        strDecodeStringElement10 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, i11);
                        i13 |= 1024;
                        i12 = 14;
                        break;
                    case 11:
                        objDecodeSerializableElement12 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 11, new ArrayListSerializer(StringSerializer.INSTANCE), objDecodeSerializableElement12);
                        i13 |= 2048;
                        i12 = 14;
                        break;
                    case 12:
                        objDecodeSerializableElement11 = compositeDecoderBeginStructure.decodeSerializableElement(descriptor2, 12, new ArrayListSerializer(StringSerializer.INSTANCE), objDecodeSerializableElement11);
                        i13 |= AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
                        i12 = 14;
                        break;
                    case 13:
                        strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 13);
                        i13 |= 8192;
                        break;
                    case 14:
                        strDecodeStringElement11 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, i12);
                        i13 |= Http2.INITIAL_MAX_FRAME_SIZE;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            objDecodeSerializableElement2 = objDecodeSerializableElement12;
            objDecodeSerializableElement3 = objDecodeSerializableElement13;
            i10 = i13;
            obj = objDecodeSerializableElement15;
            str = strDecodeStringElement9;
            str2 = strDecodeStringElement10;
            strDecodeStringElement3 = strDecodeStringElement11;
            z10 = zDecodeBooleanElement2;
            str3 = strDecodeStringElement8;
            objDecodeSerializableElement4 = objDecodeSerializableElement11;
            obj2 = objDecodeSerializableElement10;
            objDecodeSerializableElement5 = objDecodeSerializableElement16;
            obj3 = objDecodeSerializableElement14;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new OIDCAuthConfigurationJSON(i10, str3, (List) objDecodeSerializableElement5, z10, (List) obj2, str, strDecodeStringElement, (List) objDecodeSerializableElement, (List) obj3, (List) obj, (List) objDecodeSerializableElement3, str2, (List) objDecodeSerializableElement2, (List) objDecodeSerializableElement4, strDecodeStringElement2, strDecodeStringElement3, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, OIDCAuthConfigurationJSON oIDCAuthConfigurationJSON) {
        h.j(encoder, "encoder");
        h.j(oIDCAuthConfigurationJSON, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        OIDCAuthConfigurationJSON.write$Self(oIDCAuthConfigurationJSON, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
