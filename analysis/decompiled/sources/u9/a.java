package u9;

import androidx.appcompat.widget.o;
import java.util.Map;

/* JADX INFO: compiled from: AnalyticsEvent.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f16091a;

    /* JADX INFO: renamed from: u9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AnalyticsEvent.kt */
    public static final class C0279a extends a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0279a(String str, Map map, int i10) {
            super(map);
            o.d(i10, "priority");
        }
    }

    public a(Map map) {
        this.f16091a = map;
    }
}
