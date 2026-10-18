package gb;

import androidx.appcompat.widget.o;
import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.Map;
import p4.h;
import q.g;

/* JADX INFO: compiled from: Telemetry.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, Object> f7931c;

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;)V */
    public a(String str, int i10, Map map) {
        h.j(str, "message");
        o.d(i10, AnalyticsAttribute.TYPE_ATTRIBUTE);
        h.j(map, "attributes");
        this.f7929a = str;
        this.f7930b = i10;
        this.f7931c = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return h.c(this.f7929a, aVar.f7929a) && this.f7930b == aVar.f7930b && h.c(this.f7931c, aVar.f7931c);
    }

    public final int hashCode() {
        return this.f7931c.hashCode() + ((g.a(this.f7930b) + (this.f7929a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        String str = this.f7929a;
        int i10 = this.f7930b;
        Map<String, Object> map = this.f7931c;
        StringBuilder sbE = a4.g.e("Telemetry(message=", str, ", type=");
        sbE.append(d.f(i10));
        sbE.append(", attributes=");
        sbE.append(map);
        sbE.append(")");
        return sbE.toString();
    }
}
