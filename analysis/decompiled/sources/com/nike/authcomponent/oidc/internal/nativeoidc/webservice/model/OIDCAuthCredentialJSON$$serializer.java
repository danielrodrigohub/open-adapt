package com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model;

import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import p4.h;

/* JADX INFO: compiled from: OIDCAuthCredentialJSON.kt */
/* JADX INFO: loaded from: classes.dex */
public final class OIDCAuthCredentialJSON$$serializer implements GeneratedSerializer<OIDCAuthCredentialJSON> {
    public static final OIDCAuthCredentialJSON$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        OIDCAuthCredentialJSON$$serializer oIDCAuthCredentialJSON$$serializer = new OIDCAuthCredentialJSON$$serializer();
        INSTANCE = oIDCAuthCredentialJSON$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model.OIDCAuthCredentialJSON", oIDCAuthCredentialJSON$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("access_token", false);
        pluginGeneratedSerialDescriptor.addElement("refresh_token", false);
        pluginGeneratedSerialDescriptor.addElement("token_type", false);
        pluginGeneratedSerialDescriptor.addElement("expires_in", false);
        pluginGeneratedSerialDescriptor.addElement("id_token", false);
        pluginGeneratedSerialDescriptor.addElement("expirationDateMillis", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private OIDCAuthCredentialJSON$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, IntSerializer.INSTANCE, stringSerializer, LongSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public OIDCAuthCredentialJSON deserialize(Decoder decoder) {
        long jDecodeLongElement;
        int iDecodeIntElement;
        String strDecodeStringElement;
        String str;
        int i10;
        String str2;
        String str3;
        h.j(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
            String strDecodeStringElement3 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 1);
            String strDecodeStringElement4 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 2);
            str = strDecodeStringElement2;
            i10 = 63;
            iDecodeIntElement = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 3);
            strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 4);
            str2 = strDecodeStringElement4;
            str3 = strDecodeStringElement3;
            jDecodeLongElement = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 5);
        } else {
            String strDecodeStringElement5 = null;
            String strDecodeStringElement6 = null;
            String strDecodeStringElement7 = null;
            String strDecodeStringElement8 = null;
            boolean z10 = true;
            long jDecodeLongElement2 = 0;
            int i11 = 0;
            int iDecodeIntElement2 = 0;
            while (z10) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                switch (iDecodeElementIndex) {
                    case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                        z10 = false;
                        continue;
                    case 0:
                        strDecodeStringElement5 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
                        i11 |= 1;
                        continue;
                    case 1:
                        strDecodeStringElement8 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 1);
                        i11 |= 2;
                        break;
                    case 2:
                        strDecodeStringElement7 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 2);
                        i11 |= 4;
                        break;
                    case 3:
                        iDecodeIntElement2 = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 3);
                        i11 |= 8;
                        break;
                    case 4:
                        strDecodeStringElement6 = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 4);
                        i11 |= 16;
                        break;
                    case 5:
                        jDecodeLongElement2 = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 5);
                        i11 |= 32;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            jDecodeLongElement = jDecodeLongElement2;
            iDecodeIntElement = iDecodeIntElement2;
            strDecodeStringElement = strDecodeStringElement6;
            str = strDecodeStringElement5;
            i10 = i11;
            String str4 = strDecodeStringElement8;
            str2 = strDecodeStringElement7;
            str3 = str4;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new OIDCAuthCredentialJSON(i10, str, str3, str2, iDecodeIntElement, strDecodeStringElement, jDecodeLongElement, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, OIDCAuthCredentialJSON oIDCAuthCredentialJSON) {
        h.j(encoder, "encoder");
        h.j(oIDCAuthCredentialJSON, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        OIDCAuthCredentialJSON.write$Self(oIDCAuthCredentialJSON, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
