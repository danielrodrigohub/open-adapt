package okhttp3;

import gd.z;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import okhttp3.internal._ChallengeCommonKt;
import okhttp3.internal._UtilJvmKt;
import p4.h;

/* JADX INFO: compiled from: Challenge.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Challenge {
    private final Map<String, String> authParams;
    private final String scheme;

    public Challenge(String str, Map<String, String> map) {
        String strLowercase;
        h.j(str, "scheme");
        h.j(map, "authParams");
        this.scheme = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key != null) {
                Locale locale = Locale.US;
                h.i(locale, "US");
                strLowercase = _UtilJvmKt.lowercase(key, locale);
            } else {
                strLowercase = null;
            }
            linkedHashMap.put(strLowercase, value);
        }
        Map<String, String> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        h.i(mapUnmodifiableMap, "unmodifiableMap<String?, String>(newAuthParams)");
        this.authParams = mapUnmodifiableMap;
    }

    /* JADX INFO: renamed from: -deprecated_authParams, reason: not valid java name */
    public final Map<String, String> m48deprecated_authParams() {
        return this.authParams;
    }

    /* JADX INFO: renamed from: -deprecated_charset, reason: not valid java name */
    public final Charset m49deprecated_charset() {
        return charset();
    }

    /* JADX INFO: renamed from: -deprecated_realm, reason: not valid java name */
    public final String m50deprecated_realm() {
        return realm();
    }

    /* JADX INFO: renamed from: -deprecated_scheme, reason: not valid java name */
    public final String m51deprecated_scheme() {
        return this.scheme;
    }

    public final Map<String, String> authParams() {
        return this.authParams;
    }

    public final Charset charset() {
        String str = this.authParams.get("charset");
        if (str != null) {
            try {
                Charset charsetForName = Charset.forName(str);
                h.i(charsetForName, "forName(charset)");
                return charsetForName;
            } catch (Exception unused) {
            }
        }
        return yd.a.f19175f;
    }

    public boolean equals(Object obj) {
        return _ChallengeCommonKt.commonEquals(this, obj);
    }

    public int hashCode() {
        return _ChallengeCommonKt.commonHashCode(this);
    }

    public final String realm() {
        return this.authParams.get("realm");
    }

    public final String scheme() {
        return this.scheme;
    }

    public String toString() {
        return _ChallengeCommonKt.commonToString(this);
    }

    public final Challenge withCharset(Charset charset) {
        h.j(charset, "charset");
        Map mapF = z.F(this.authParams);
        String strName = charset.name();
        h.i(strName, "charset.name()");
        mapF.put("charset", strName);
        return new Challenge(this.scheme, (Map<String, String>) mapF);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Challenge(String str, String str2) {
        h.j(str, "scheme");
        h.j(str2, "realm");
        Map mapSingletonMap = Collections.singletonMap("realm", str2);
        h.i(mapSingletonMap, "singletonMap(\"realm\", realm)");
        this(str, (Map<String, String>) mapSingletonMap);
    }
}
