package kotlinx.serialization.json.internal;

import fd.l;
import kotlinx.serialization.json.Json;
import p4.h;

/* JADX INFO: compiled from: Composers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ComposerForUnsignedNumbers extends Composer {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerForUnsignedNumbers(JsonStringBuilder jsonStringBuilder, Json json) {
        super(jsonStringBuilder, json);
        h.j(jsonStringBuilder, "sb");
        h.j(json, "json");
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(long j10) {
        super.print(l.b(j10));
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(byte b10) {
        super.print(String.valueOf(b10 & 255));
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(short s10) {
        super.print(String.valueOf(s10 & 65535));
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(int i10) {
        super.print(String.valueOf(((long) i10) & 4294967295L));
    }
}
