package kotlinx.serialization.json.internal;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.Objects;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.modules.SerializersModule;
import p4.h;

/* JADX INFO: compiled from: StreamingJsonEncoder.kt */
/* JADX INFO: loaded from: classes.dex */
public final class StreamingJsonEncoder extends AbstractEncoder implements JsonEncoder {
    private final Composer composer;
    private final JsonConfiguration configuration;
    private boolean forceQuoting;
    private final Json json;
    private final WriteMode mode;
    private final JsonEncoder[] modeReuseCache;
    private final SerializersModule serializersModule;
    private boolean writePolymorphic;

    /* JADX INFO: compiled from: StreamingJsonEncoder.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WriteMode.values().length];
            iArr[WriteMode.LIST.ordinal()] = 1;
            iArr[WriteMode.MAP.ordinal()] = 2;
            iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public StreamingJsonEncoder(Composer composer, Json json, WriteMode writeMode, JsonEncoder[] jsonEncoderArr) {
        h.j(composer, "composer");
        h.j(json, "json");
        h.j(writeMode, "mode");
        this.composer = composer;
        this.json = json;
        this.mode = writeMode;
        this.modeReuseCache = jsonEncoderArr;
        this.serializersModule = getJson().getSerializersModule();
        this.configuration = getJson().getConfiguration();
        int iOrdinal = writeMode.ordinal();
        if (jsonEncoderArr != null) {
            if (jsonEncoderArr[iOrdinal] == null && jsonEncoderArr[iOrdinal] == this) {
                return;
            }
            jsonEncoderArr[iOrdinal] = this;
        }
    }

    private final void encodeTypeInfo(SerialDescriptor serialDescriptor) {
        this.composer.nextItem();
        encodeString(this.configuration.getClassDiscriminator());
        this.composer.print(':');
        this.composer.space();
        encodeString(serialDescriptor.getSerialName());
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public CompositeEncoder beginStructure(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "descriptor");
        WriteMode writeModeSwitchMode = WriteModeKt.switchMode(getJson(), serialDescriptor);
        char c10 = writeModeSwitchMode.begin;
        if (c10 != 0) {
            this.composer.print(c10);
            this.composer.indent();
        }
        if (this.writePolymorphic) {
            this.writePolymorphic = false;
            encodeTypeInfo(serialDescriptor);
        }
        if (this.mode == writeModeSwitchMode) {
            return this;
        }
        JsonEncoder[] jsonEncoderArr = this.modeReuseCache;
        JsonEncoder jsonEncoder = jsonEncoderArr == null ? null : jsonEncoderArr[writeModeSwitchMode.ordinal()];
        return jsonEncoder == null ? new StreamingJsonEncoder(this.composer, getJson(), writeModeSwitchMode, this.modeReuseCache) : jsonEncoder;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeBoolean(boolean z10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(z10));
        } else {
            this.composer.print(z10);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeByte(byte b10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf((int) b10));
        } else {
            this.composer.print(b10);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeChar(char c10) {
        encodeString(String.valueOf(c10));
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeDouble(double d10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(d10));
        } else {
            this.composer.print(d10);
        }
        if (this.configuration.getAllowSpecialFloatingPointValues()) {
            return;
        }
        if (!((Double.isInfinite(d10) || Double.isNaN(d10)) ? false : true)) {
            throw JsonExceptionsKt.InvalidFloatingPointEncoded(Double.valueOf(d10), this.composer.f9809sb.toString());
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder
    public boolean encodeElement(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "descriptor");
        int i11 = WhenMappings.$EnumSwitchMapping$0[this.mode.ordinal()];
        if (i11 != 1) {
            boolean z10 = false;
            if (i11 != 2) {
                if (i11 != 3) {
                    if (!this.composer.getWritingFirst()) {
                        this.composer.print(',');
                    }
                    this.composer.nextItem();
                    encodeString(serialDescriptor.getElementName(i10));
                    this.composer.print(':');
                    this.composer.space();
                } else {
                    if (i10 == 0) {
                        this.forceQuoting = true;
                    }
                    if (i10 == 1) {
                        this.composer.print(',');
                        this.composer.space();
                        this.forceQuoting = false;
                    }
                }
            } else if (this.composer.getWritingFirst()) {
                this.forceQuoting = true;
                this.composer.nextItem();
            } else {
                if (i10 % 2 == 0) {
                    this.composer.print(',');
                    this.composer.nextItem();
                    z10 = true;
                } else {
                    this.composer.print(':');
                    this.composer.space();
                }
                this.forceQuoting = z10;
            }
        } else {
            if (!this.composer.getWritingFirst()) {
                this.composer.print(',');
            }
            this.composer.nextItem();
        }
        return true;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeEnum(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "enumDescriptor");
        encodeString(serialDescriptor.getElementName(i10));
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeFloat(float f10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(f10));
        } else {
            this.composer.print(f10);
        }
        if (this.configuration.getAllowSpecialFloatingPointValues()) {
            return;
        }
        if (!((Float.isInfinite(f10) || Float.isNaN(f10)) ? false : true)) {
            throw JsonExceptionsKt.InvalidFloatingPointEncoded(Float.valueOf(f10), this.composer.f9809sb.toString());
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public Encoder encodeInline(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "inlineDescriptor");
        return StreamingJsonEncoderKt.isUnsignedNumber(serialDescriptor) ? new StreamingJsonEncoder(new ComposerForUnsignedNumbers(this.composer.f9809sb, getJson()), getJson(), this.mode, (JsonEncoder[]) null) : super.encodeInline(serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeInt(int i10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(i10));
        } else {
            this.composer.print(i10);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeLong(long j10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(j10));
        } else {
            this.composer.print(j10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
        this.composer.print(SafeJsonPrimitive.NULL_STRING);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public <T> void encodeSerializableValue(SerializationStrategy<? super T> serializationStrategy, T t10) {
        h.j(serializationStrategy, "serializer");
        if (!(serializationStrategy instanceof AbstractPolymorphicSerializer) || getJson().getConfiguration().getUseArrayPolymorphism()) {
            serializationStrategy.serialize(this, t10);
            return;
        }
        Objects.requireNonNull(t10, "null cannot be cast to non-null type kotlin.Any");
        SerializationStrategy serializationStrategyFindActualSerializer = PolymorphicKt.findActualSerializer(this, serializationStrategy, t10);
        this.writePolymorphic = true;
        serializationStrategyFindActualSerializer.serialize(this, t10);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeShort(short s10) {
        if (this.forceQuoting) {
            encodeString(String.valueOf((int) s10));
        } else {
            this.composer.print(s10);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeString(String str) {
        h.j(str, "value");
        this.composer.printQuoted(str);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public void endStructure(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "descriptor");
        if (this.mode.end != 0) {
            this.composer.unIndent();
            this.composer.nextItem();
            this.composer.print(this.mode.end);
        }
    }

    @Override // kotlinx.serialization.json.JsonEncoder
    public Json getJson() {
        return this.json;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public SerializersModule getSerializersModule() {
        return this.serializersModule;
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public boolean shouldEncodeElementDefault(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "descriptor");
        return this.configuration.getEncodeDefaults();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StreamingJsonEncoder(JsonStringBuilder jsonStringBuilder, Json json, WriteMode writeMode, JsonEncoder[] jsonEncoderArr) {
        this(new Composer(jsonStringBuilder, json), json, writeMode, jsonEncoderArr);
        h.j(jsonStringBuilder, "output");
        h.j(json, "json");
        h.j(writeMode, "mode");
        h.j(jsonEncoderArr, "modeReuseCache");
    }
}
