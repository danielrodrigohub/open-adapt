package com.newrelic.mobile.fbs;

import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.flatbuffers.Table;
import com.newrelic.mobile.fbs.hex.HandledException;
import com.newrelic.mobile.fbs.jserror.JsError;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class HexAgentData extends Table {
    public static void addApplicationInfo(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(5, i10, 0);
    }

    public static void addBoolAttributes(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(3, i10, 0);
    }

    public static void addDoubleAttributes(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(2, i10, 0);
    }

    public static void addHandledExceptions(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(4, i10, 0);
    }

    public static void addJsErrors(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(7, i10, 0);
    }

    public static void addLongAttributes(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(1, i10, 0);
    }

    public static void addRequestInfo(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(6, i10, 0);
    }

    public static void addStringAttributes(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.addOffset(0, i10, 0);
    }

    public static int createBoolAttributesVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int createDoubleAttributesVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int createHandledExceptionsVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int createHexAgentData(FlatBufferBuilder flatBufferBuilder, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        flatBufferBuilder.startObject(8);
        addJsErrors(flatBufferBuilder, i17);
        addRequestInfo(flatBufferBuilder, i16);
        addApplicationInfo(flatBufferBuilder, i15);
        addHandledExceptions(flatBufferBuilder, i14);
        addBoolAttributes(flatBufferBuilder, i13);
        addDoubleAttributes(flatBufferBuilder, i12);
        addLongAttributes(flatBufferBuilder, i11);
        addStringAttributes(flatBufferBuilder, i10);
        return endHexAgentData(flatBufferBuilder);
    }

    public static int createJsErrorsVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int createLongAttributesVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int createStringAttributesVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int endHexAgentData(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endObject();
    }

    public static void finishHexAgentDataBuffer(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.finish(i10);
    }

    public static void finishSizePrefixedHexAgentDataBuffer(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.finishSizePrefixed(i10);
    }

    public static HexAgentData getRootAsHexAgentData(ByteBuffer byteBuffer) {
        return getRootAsHexAgentData(byteBuffer, new HexAgentData());
    }

    public static void startBoolAttributesVector(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startVector(4, i10, 4);
    }

    public static void startDoubleAttributesVector(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startVector(4, i10, 4);
    }

    public static void startHandledExceptionsVector(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startVector(4, i10, 4);
    }

    public static void startHexAgentData(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startObject(8);
    }

    public static void startJsErrorsVector(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startVector(4, i10, 4);
    }

    public static void startLongAttributesVector(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startVector(4, i10, 4);
    }

    public static void startStringAttributesVector(FlatBufferBuilder flatBufferBuilder, int i10) {
        flatBufferBuilder.startVector(4, i10, 4);
    }

    public HexAgentData __assign(int i10, ByteBuffer byteBuffer) {
        __init(i10, byteBuffer);
        return this;
    }

    public void __init(int i10, ByteBuffer byteBuffer) {
        this.bb_pos = i10;
        this.f5636bb = byteBuffer;
        int i11 = i10 - byteBuffer.getInt(i10);
        this.vtable_start = i11;
        this.vtable_size = this.f5636bb.getShort(i11);
    }

    public ApplicationInfo applicationInfo() {
        return applicationInfo(new ApplicationInfo());
    }

    public BoolSessionAttribute boolAttributes(int i10) {
        return boolAttributes(new BoolSessionAttribute(), i10);
    }

    public BoolSessionAttribute boolAttributesByKey(String str) {
        int i__offset = __offset(10);
        if (i__offset != 0) {
            return BoolSessionAttribute.__lookup_by_key(null, __vector(i__offset), str, this.f5636bb);
        }
        return null;
    }

    public int boolAttributesLength() {
        int i__offset = __offset(10);
        if (i__offset != 0) {
            return __vector_len(i__offset);
        }
        return 0;
    }

    public DoubleSessionAttribute doubleAttributes(int i10) {
        return doubleAttributes(new DoubleSessionAttribute(), i10);
    }

    public DoubleSessionAttribute doubleAttributesByKey(String str) {
        int i__offset = __offset(8);
        if (i__offset != 0) {
            return DoubleSessionAttribute.__lookup_by_key(null, __vector(i__offset), str, this.f5636bb);
        }
        return null;
    }

    public int doubleAttributesLength() {
        int i__offset = __offset(8);
        if (i__offset != 0) {
            return __vector_len(i__offset);
        }
        return 0;
    }

    public HandledException handledExceptions(int i10) {
        return handledExceptions(new HandledException(), i10);
    }

    public int handledExceptionsLength() {
        int i__offset = __offset(12);
        if (i__offset != 0) {
            return __vector_len(i__offset);
        }
        return 0;
    }

    public JsError jsErrors(int i10) {
        return jsErrors(new JsError(), i10);
    }

    public int jsErrorsLength() {
        int i__offset = __offset(18);
        if (i__offset != 0) {
            return __vector_len(i__offset);
        }
        return 0;
    }

    public LongSessionAttribute longAttributes(int i10) {
        return longAttributes(new LongSessionAttribute(), i10);
    }

    public LongSessionAttribute longAttributesByKey(String str) {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return LongSessionAttribute.__lookup_by_key(null, __vector(i__offset), str, this.f5636bb);
        }
        return null;
    }

    public int longAttributesLength() {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return __vector_len(i__offset);
        }
        return 0;
    }

    public RequestInformation requestInfo() {
        return requestInfo(new RequestInformation());
    }

    public StringSessionAttribute stringAttributes(int i10) {
        return stringAttributes(new StringSessionAttribute(), i10);
    }

    public StringSessionAttribute stringAttributesByKey(String str) {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return StringSessionAttribute.__lookup_by_key(null, __vector(i__offset), str, this.f5636bb);
        }
        return null;
    }

    public int stringAttributesLength() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return __vector_len(i__offset);
        }
        return 0;
    }

    public static HexAgentData getRootAsHexAgentData(ByteBuffer byteBuffer, HexAgentData hexAgentData) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return hexAgentData.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }

    public ApplicationInfo applicationInfo(ApplicationInfo applicationInfo) {
        int i__offset = __offset(14);
        if (i__offset != 0) {
            return applicationInfo.__assign(__indirect(i__offset + this.bb_pos), this.f5636bb);
        }
        return null;
    }

    public BoolSessionAttribute boolAttributes(BoolSessionAttribute boolSessionAttribute, int i10) {
        int i__offset = __offset(10);
        if (i__offset == 0) {
            return null;
        }
        return boolSessionAttribute.__assign(__indirect((i10 * 4) + __vector(i__offset)), this.f5636bb);
    }

    public BoolSessionAttribute boolAttributesByKey(BoolSessionAttribute boolSessionAttribute, String str) {
        int i__offset = __offset(10);
        if (i__offset != 0) {
            return BoolSessionAttribute.__lookup_by_key(boolSessionAttribute, __vector(i__offset), str, this.f5636bb);
        }
        return null;
    }

    public DoubleSessionAttribute doubleAttributes(DoubleSessionAttribute doubleSessionAttribute, int i10) {
        int i__offset = __offset(8);
        if (i__offset == 0) {
            return null;
        }
        return doubleSessionAttribute.__assign(__indirect((i10 * 4) + __vector(i__offset)), this.f5636bb);
    }

    public DoubleSessionAttribute doubleAttributesByKey(DoubleSessionAttribute doubleSessionAttribute, String str) {
        int i__offset = __offset(8);
        if (i__offset != 0) {
            return DoubleSessionAttribute.__lookup_by_key(doubleSessionAttribute, __vector(i__offset), str, this.f5636bb);
        }
        return null;
    }

    public HandledException handledExceptions(HandledException handledException, int i10) {
        int i__offset = __offset(12);
        if (i__offset == 0) {
            return null;
        }
        return handledException.__assign(__indirect((i10 * 4) + __vector(i__offset)), this.f5636bb);
    }

    public JsError jsErrors(JsError jsError, int i10) {
        int i__offset = __offset(18);
        if (i__offset == 0) {
            return null;
        }
        return jsError.__assign(__indirect((i10 * 4) + __vector(i__offset)), this.f5636bb);
    }

    public LongSessionAttribute longAttributes(LongSessionAttribute longSessionAttribute, int i10) {
        int i__offset = __offset(6);
        if (i__offset == 0) {
            return null;
        }
        return longSessionAttribute.__assign(__indirect((i10 * 4) + __vector(i__offset)), this.f5636bb);
    }

    public LongSessionAttribute longAttributesByKey(LongSessionAttribute longSessionAttribute, String str) {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return LongSessionAttribute.__lookup_by_key(longSessionAttribute, __vector(i__offset), str, this.f5636bb);
        }
        return null;
    }

    public RequestInformation requestInfo(RequestInformation requestInformation) {
        int i__offset = __offset(16);
        if (i__offset != 0) {
            return requestInformation.__assign(__indirect(i__offset + this.bb_pos), this.f5636bb);
        }
        return null;
    }

    public StringSessionAttribute stringAttributes(StringSessionAttribute stringSessionAttribute, int i10) {
        int i__offset = __offset(4);
        if (i__offset == 0) {
            return null;
        }
        return stringSessionAttribute.__assign(__indirect((i10 * 4) + __vector(i__offset)), this.f5636bb);
    }

    public StringSessionAttribute stringAttributesByKey(StringSessionAttribute stringSessionAttribute, String str) {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return StringSessionAttribute.__lookup_by_key(stringSessionAttribute, __vector(i__offset), str, this.f5636bb);
        }
        return null;
    }
}
