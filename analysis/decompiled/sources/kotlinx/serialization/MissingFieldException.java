package kotlinx.serialization;

import a0.b;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: SerializationException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MissingFieldException extends SerializationException {
    public MissingFieldException(String str, Throwable th) {
        super(str, th);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MissingFieldException(List<String> list, String str) {
        StringBuilder sb2;
        String str2;
        h.j(list, "fieldNames");
        h.j(str, "serialName");
        if (list.size() == 1) {
            sb2 = b.c("Field '");
            sb2.append(list.get(0));
            sb2.append("' is required for type with serial name '");
            sb2.append(str);
            str2 = "', but it was missing";
        } else {
            sb2 = new StringBuilder();
            sb2.append("Fields ");
            sb2.append(list);
            sb2.append(" are required for type with serial name '");
            sb2.append(str);
            str2 = "', but they were missing";
        }
        sb2.append(str2);
        this(sb2.toString(), (Throwable) null);
    }
}
