package kotlinx.serialization;

import p4.h;

/* JADX INFO: compiled from: SerializationException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class UnknownFieldException extends SerializationException {
    public UnknownFieldException(String str) {
        super(str);
    }

    public UnknownFieldException(int i10) {
        this(h.B("An unknown field for index ", Integer.valueOf(i10)));
    }
}
