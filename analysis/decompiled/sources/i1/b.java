package i1;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: VersionedParcelParcel.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseIntArray f8656d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Parcel f8657e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f8658f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f8659g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f8660h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8661i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8662j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8663k;

    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new p.a(), new p.a(), new p.a());
    }

    @Override // i1.a
    public final void a() {
        int i10 = this.f8661i;
        if (i10 >= 0) {
            int i11 = this.f8656d.get(i10);
            int iDataPosition = this.f8657e.dataPosition();
            this.f8657e.setDataPosition(i11);
            this.f8657e.writeInt(iDataPosition - i11);
            this.f8657e.setDataPosition(iDataPosition);
        }
    }

    @Override // i1.a
    public final a b() {
        Parcel parcel = this.f8657e;
        int iDataPosition = parcel.dataPosition();
        int i10 = this.f8662j;
        if (i10 == this.f8658f) {
            i10 = this.f8659g;
        }
        return new b(parcel, iDataPosition, i10, f.d(new StringBuilder(), this.f8660h, "  "), this.f8653a, this.f8654b, this.f8655c);
    }

    @Override // i1.a
    public final boolean f() {
        return this.f8657e.readInt() != 0;
    }

    @Override // i1.a
    public final byte[] g() {
        int i10 = this.f8657e.readInt();
        if (i10 < 0) {
            return null;
        }
        byte[] bArr = new byte[i10];
        this.f8657e.readByteArray(bArr);
        return bArr;
    }

    @Override // i1.a
    public final CharSequence h() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f8657e);
    }

    @Override // i1.a
    public final boolean i(int i10) {
        while (this.f8662j < this.f8659g) {
            int i11 = this.f8663k;
            if (i11 == i10) {
                return true;
            }
            if (String.valueOf(i11).compareTo(String.valueOf(i10)) > 0) {
                return false;
            }
            this.f8657e.setDataPosition(this.f8662j);
            int i12 = this.f8657e.readInt();
            this.f8663k = this.f8657e.readInt();
            this.f8662j += i12;
        }
        return this.f8663k == i10;
    }

    @Override // i1.a
    public final int j() {
        return this.f8657e.readInt();
    }

    @Override // i1.a
    public final <T extends Parcelable> T l() {
        return (T) this.f8657e.readParcelable(b.class.getClassLoader());
    }

    @Override // i1.a
    public final String n() {
        return this.f8657e.readString();
    }

    @Override // i1.a
    public final void p(int i10) {
        a();
        this.f8661i = i10;
        this.f8656d.put(i10, this.f8657e.dataPosition());
        t(0);
        t(i10);
    }

    @Override // i1.a
    public final void q(boolean z10) {
        this.f8657e.writeInt(z10 ? 1 : 0);
    }

    @Override // i1.a
    public final void r(byte[] bArr) {
        if (bArr == null) {
            this.f8657e.writeInt(-1);
        } else {
            this.f8657e.writeInt(bArr.length);
            this.f8657e.writeByteArray(bArr);
        }
    }

    @Override // i1.a
    public final void s(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f8657e, 0);
    }

    @Override // i1.a
    public final void t(int i10) {
        this.f8657e.writeInt(i10);
    }

    @Override // i1.a
    public final void v(Parcelable parcelable) {
        this.f8657e.writeParcelable(parcelable, 0);
    }

    @Override // i1.a
    public final void x(String str) {
        this.f8657e.writeString(str);
    }

    public b(Parcel parcel, int i10, int i11, String str, p.a<String, Method> aVar, p.a<String, Method> aVar2, p.a<String, Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.f8656d = new SparseIntArray();
        this.f8661i = -1;
        this.f8663k = -1;
        this.f8657e = parcel;
        this.f8658f = i10;
        this.f8659g = i11;
        this.f8662j = i10;
        this.f8660h = str;
    }
}
