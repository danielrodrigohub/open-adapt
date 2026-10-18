package v2;

import android.text.TextUtils;
import com.newrelic.agent.android.util.Constants;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: LazyHeaders.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<String, List<h>> f16159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Map<String, String> f16160c;

    /* JADX INFO: compiled from: LazyHeaders.java */
    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Map<String, List<h>> f16161b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Map<String, List<h>> f16162a = f16161b;

        static {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
                int length = property.length();
                StringBuilder sb2 = new StringBuilder(property.length());
                for (int i10 = 0; i10 < length; i10++) {
                    char cCharAt = property.charAt(i10);
                    if ((cCharAt > 31 || cCharAt == '\t') && cCharAt < 127) {
                        sb2.append(cCharAt);
                    } else {
                        sb2.append('?');
                    }
                }
                property = sb2.toString();
            }
            HashMap map = new HashMap(2);
            if (!TextUtils.isEmpty(property)) {
                map.put(Constants.Network.USER_AGENT_HEADER, Collections.singletonList(new b(property)));
            }
            f16161b = Collections.unmodifiableMap(map);
        }
    }

    /* JADX INFO: compiled from: LazyHeaders.java */
    public static final class b implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f16163a;

        public b(String str) {
            this.f16163a = str;
        }

        @Override // v2.h
        public final String a() {
            return this.f16163a;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f16163a.equals(((b) obj).f16163a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f16163a.hashCode();
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("StringHeaderFactory{value='");
            sbC.append(this.f16163a);
            sbC.append('\'');
            sbC.append('}');
            return sbC.toString();
        }
    }

    public i(Map<String, List<h>> map) {
        this.f16159b = Collections.unmodifiableMap(map);
    }

    @Override // v2.g
    public final Map<String, String> a() {
        if (this.f16160c == null) {
            synchronized (this) {
                if (this.f16160c == null) {
                    this.f16160c = Collections.unmodifiableMap(b());
                }
            }
        }
        return this.f16160c;
    }

    public final Map<String, String> b() {
        HashMap map = new HashMap();
        for (Map.Entry<String, List<h>> entry : this.f16159b.entrySet()) {
            List<h> value = entry.getValue();
            StringBuilder sb2 = new StringBuilder();
            int size = value.size();
            for (int i10 = 0; i10 < size; i10++) {
                String strA = value.get(i10).a();
                if (!TextUtils.isEmpty(strA)) {
                    sb2.append(strA);
                    if (i10 != value.size() - 1) {
                        sb2.append(',');
                    }
                }
            }
            String string = sb2.toString();
            if (!TextUtils.isEmpty(string)) {
                map.put(entry.getKey(), string);
            }
        }
        return map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof i) {
            return this.f16159b.equals(((i) obj).f16159b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f16159b.hashCode();
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("LazyHeaders{headers=");
        sbC.append(this.f16159b);
        sbC.append('}');
        return sbC.toString();
    }
}
