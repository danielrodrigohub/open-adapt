package yd;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: Regex.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Pattern f19196h;

    public g(String str) {
        p4.h.j(str, "pattern");
        Pattern patternCompile = Pattern.compile(str);
        p4.h.i(patternCompile, "compile(pattern)");
        this.f19196h = patternCompile;
    }

    public final boolean a(CharSequence charSequence) {
        p4.h.j(charSequence, "input");
        return this.f19196h.matcher(charSequence).matches();
    }

    public final List b(CharSequence charSequence) {
        p4.h.j(charSequence, "input");
        int iEnd = 0;
        s.y0(0);
        Matcher matcher = this.f19196h.matcher(charSequence);
        if (!matcher.find()) {
            return androidx.lifecycle.o.y(charSequence.toString());
        }
        ArrayList arrayList = new ArrayList(10);
        do {
            arrayList.add(charSequence.subSequence(iEnd, matcher.start()).toString());
            iEnd = matcher.end();
        } while (matcher.find());
        arrayList.add(charSequence.subSequence(iEnd, charSequence.length()).toString());
        return arrayList;
    }

    public final String toString() {
        String string = this.f19196h.toString();
        p4.h.i(string, "nativePattern.toString()");
        return string;
    }
}
