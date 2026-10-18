package kotlinx.serialization.json;

import androidx.lifecycle.o;
import fd.d;
import java.lang.annotation.Annotation;
import java.util.List;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import p4.h;
import qd.a;
import rd.x;

/* JADX INFO: compiled from: JsonElementSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonElementSerializersKt {
    public static final JsonDecoder asJsonDecoder(Decoder decoder) {
        h.j(decoder, "<this>");
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder != null) {
            return jsonDecoder;
        }
        throw new IllegalStateException(h.B("This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got ", x.a(decoder.getClass())));
    }

    public static final JsonEncoder asJsonEncoder(Encoder encoder) {
        h.j(encoder, "<this>");
        JsonEncoder jsonEncoder = encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null;
        if (jsonEncoder != null) {
            return jsonEncoder;
        }
        throw new IllegalStateException(h.B("This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got ", x.a(encoder.getClass())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor defer(a<? extends SerialDescriptor> aVar) {
        return new SerialDescriptor(aVar) { // from class: kotlinx.serialization.json.JsonElementSerializersKt.defer.1
            public final /* synthetic */ a<SerialDescriptor> $deferred;
            private final d original$delegate;

            /* JADX WARN: Multi-variable type inference failed */
            {
                this.$deferred = aVar;
                this.original$delegate = o.x(aVar);
            }

            private final SerialDescriptor getOriginal() {
                return (SerialDescriptor) this.original$delegate.getValue();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public List<Annotation> getElementAnnotations(int i10) {
                return getOriginal().getElementAnnotations(i10);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public SerialDescriptor getElementDescriptor(int i10) {
                return getOriginal().getElementDescriptor(i10);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public int getElementIndex(String str) {
                h.j(str, "name");
                return getOriginal().getElementIndex(str);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public String getElementName(int i10) {
                return getOriginal().getElementName(i10);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public int getElementsCount() {
                return getOriginal().getElementsCount();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public SerialKind getKind() {
                return getOriginal().getKind();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public String getSerialName() {
                return getOriginal().getSerialName();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public boolean isInline() {
                return SerialDescriptor.DefaultImpls.isInline(this);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public boolean isNullable() {
                return SerialDescriptor.DefaultImpls.isNullable(this);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void verify(Encoder encoder) {
        asJsonEncoder(encoder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void verify(Decoder decoder) {
        asJsonDecoder(decoder);
    }
}
