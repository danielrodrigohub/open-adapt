package nb;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p4.h;
import z9.c;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'i' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: TelemetryExecutors.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b f12034i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ b[] f12035j;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Executor f12036h;

    static {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(c.f19441c);
        h.i(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor …     ) { it.run() }\n    }");
        b bVar = new b(executorServiceNewSingleThreadExecutor);
        f12034i = bVar;
        f12035j = new b[]{bVar};
    }

    public b(Executor executor) {
        super("INSERT", 0);
        this.f12036h = executor;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f12035j.clone();
    }
}
