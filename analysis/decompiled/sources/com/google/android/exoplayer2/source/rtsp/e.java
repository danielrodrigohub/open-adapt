package com.google.android.exoplayer2.source.rtsp;

import com.newrelic.agent.android.util.Constants;
import g0.n;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import m5.g0;
import u6.m;
import u6.q;
import u6.q0;
import u6.t;
import u6.v;
import u6.w;

/* JADX INFO: compiled from: RtspHeaders.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w<String, String> f4702a;

    static {
        new a().c();
    }

    public e(a aVar) {
        w<String, String> wVar;
        Collection collectionEntrySet = aVar.f4703a.f16020a.entrySet();
        if (((AbstractCollection) collectionEntrySet).isEmpty()) {
            wVar = q.f15970m;
        } else {
            m.a<Map.Entry> aVar2 = (m.a) collectionEntrySet;
            Object[] objArrCopyOf = new Object[aVar2.size() * 2];
            int i10 = 0;
            int size = 0;
            for (Map.Entry entry : aVar2) {
                Object key = entry.getKey();
                v vVarS = v.s((Collection) entry.getValue());
                if (!vVarS.isEmpty()) {
                    int i11 = i10 + 1;
                    int i12 = i11 * 2;
                    objArrCopyOf = i12 > objArrCopyOf.length ? Arrays.copyOf(objArrCopyOf, t.b.a(objArrCopyOf.length, i12)) : objArrCopyOf;
                    u6.h.a(key, vVarS);
                    int i13 = i10 * 2;
                    objArrCopyOf[i13] = key;
                    objArrCopyOf[i13 + 1] = vVarS;
                    size += vVarS.size();
                    i10 = i11;
                }
            }
            wVar = new w<>(q0.j(i10, objArrCopyOf), size);
        }
        this.f4702a = wVar;
    }

    public static String a(String str) {
        if (androidx.activity.k.d(str, "Accept")) {
            return "Accept";
        }
        if (androidx.activity.k.d(str, "Allow")) {
            return "Allow";
        }
        if (androidx.activity.k.d(str, "Authorization")) {
            return "Authorization";
        }
        if (androidx.activity.k.d(str, "Bandwidth")) {
            return "Bandwidth";
        }
        if (androidx.activity.k.d(str, "Blocksize")) {
            return "Blocksize";
        }
        if (androidx.activity.k.d(str, "Cache-Control")) {
            return "Cache-Control";
        }
        if (androidx.activity.k.d(str, "Connection")) {
            return "Connection";
        }
        if (androidx.activity.k.d(str, "Content-Base")) {
            return "Content-Base";
        }
        if (androidx.activity.k.d(str, Constants.Network.CONTENT_ENCODING_HEADER)) {
            return Constants.Network.CONTENT_ENCODING_HEADER;
        }
        if (androidx.activity.k.d(str, "Content-Language")) {
            return "Content-Language";
        }
        if (androidx.activity.k.d(str, Constants.Network.CONTENT_LENGTH_HEADER)) {
            return Constants.Network.CONTENT_LENGTH_HEADER;
        }
        if (androidx.activity.k.d(str, "Content-Location")) {
            return "Content-Location";
        }
        if (androidx.activity.k.d(str, Constants.Network.CONTENT_TYPE_HEADER)) {
            return Constants.Network.CONTENT_TYPE_HEADER;
        }
        if (androidx.activity.k.d(str, "CSeq")) {
            return "CSeq";
        }
        if (androidx.activity.k.d(str, "Date")) {
            return "Date";
        }
        if (androidx.activity.k.d(str, "Expires")) {
            return "Expires";
        }
        if (androidx.activity.k.d(str, "Location")) {
            return "Location";
        }
        if (androidx.activity.k.d(str, "Proxy-Authenticate")) {
            return "Proxy-Authenticate";
        }
        if (androidx.activity.k.d(str, "Proxy-Require")) {
            return "Proxy-Require";
        }
        if (androidx.activity.k.d(str, "Public")) {
            return "Public";
        }
        if (androidx.activity.k.d(str, "Range")) {
            return "Range";
        }
        if (androidx.activity.k.d(str, "RTP-Info")) {
            return "RTP-Info";
        }
        if (androidx.activity.k.d(str, "RTCP-Interval")) {
            return "RTCP-Interval";
        }
        if (androidx.activity.k.d(str, "Scale")) {
            return "Scale";
        }
        if (androidx.activity.k.d(str, "Session")) {
            return "Session";
        }
        if (androidx.activity.k.d(str, "Speed")) {
            return "Speed";
        }
        if (androidx.activity.k.d(str, "Supported")) {
            return "Supported";
        }
        if (androidx.activity.k.d(str, "Timestamp")) {
            return "Timestamp";
        }
        if (androidx.activity.k.d(str, "Transport")) {
            return "Transport";
        }
        if (androidx.activity.k.d(str, Constants.Network.USER_AGENT_HEADER)) {
            return Constants.Network.USER_AGENT_HEADER;
        }
        if (androidx.activity.k.d(str, "Via")) {
            return "Via";
        }
        return androidx.activity.k.d(str, "WWW-Authenticate") ? "WWW-Authenticate" : str;
    }

    public final String b(String str) {
        v<String> vVarG = this.f4702a.g(a(str));
        if (vVarG.isEmpty()) {
            return null;
        }
        return (String) n.b(vVarG);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            return this.f4702a.equals(((e) obj).f4702a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4702a.hashCode();
    }

    /* JADX INFO: compiled from: RtspHeaders.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final w.a<String, String> f4703a;

        public a() {
            this.f4703a = new w.a<>();
        }

        public final a a(String str, String str2) {
            w.a<String, String> aVar = this.f4703a;
            String strA = e.a(str.trim());
            String strTrim = str2.trim();
            Objects.requireNonNull(aVar);
            u6.h.a(strA, strTrim);
            Collection<String> arrayList = aVar.f16020a.get(strA);
            if (arrayList == null) {
                Map<String, Collection<String>> map = aVar.f16020a;
                arrayList = new ArrayList<>();
                map.put(strA, arrayList);
            }
            arrayList.add(strTrim);
            return this;
        }

        public final a b(List<String> list) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                String str = list.get(i10);
                int i11 = g0.f10384a;
                String[] strArrSplit = str.split(":\\s?", 2);
                if (strArrSplit.length == 2) {
                    a(strArrSplit[0], strArrSplit[1]);
                }
            }
            return this;
        }

        public final e c() {
            return new e(this);
        }

        public a(String str, String str2, int i10) {
            this();
            a(Constants.Network.USER_AGENT_HEADER, str);
            a("CSeq", String.valueOf(i10));
            if (str2 != null) {
                a("Session", str2);
            }
        }
    }
}
