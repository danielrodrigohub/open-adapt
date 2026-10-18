package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: compiled from: SavedStateHandle.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Class<? extends Object>[] f2176f = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f2177a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<String, b1.b.InterfaceC0051b> f2178b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, Object> f2179c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<String, MutableStateFlow<Object>> f2180d = new LinkedHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c0 f2181e = new c0(this);
}
