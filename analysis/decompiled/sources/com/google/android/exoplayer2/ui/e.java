package com.google.android.exoplayer2.ui;

import android.text.Html;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: SpannedToHtmlConverter.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f4929a = Pattern.compile("(&#13;)?&#10;");

    /* JADX INFO: compiled from: SpannedToHtmlConverter.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f4930a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map<String, String> f4931b;

        public b(String str, Map map, a aVar) {
            this.f4930a = str;
            this.f4931b = map;
        }
    }

    /* JADX INFO: compiled from: SpannedToHtmlConverter.java */
    public static final class c {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Comparator<c> f4932e = j5.g.f9311k;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Comparator<c> f4933f = j5.f.f9307k;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f4934a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f4935b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f4936c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f4937d;

        public c(int i10, int i11, String str, String str2) {
            this.f4934a = i10;
            this.f4935b = i11;
            this.f4936c = str;
            this.f4937d = str2;
        }
    }

    /* JADX INFO: compiled from: SpannedToHtmlConverter.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<c> f4938a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List<c> f4939b = new ArrayList();
    }

    public static String a(CharSequence charSequence) {
        return f4929a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }
}
