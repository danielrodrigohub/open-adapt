package j2;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import de.d0;
import de.f;
import de.g;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: compiled from: JsonUtf8Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends c {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final g f9249s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final g f9250t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final g f9251u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final g f9252v;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final f f9253m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final de.c f9254n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f9255o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f9256p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f9257q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f9258r;

    static {
        g.a aVar = g.f6227k;
        f9249s = aVar.c("'\\");
        f9250t = aVar.c("\"\\");
        f9251u = aVar.c("{}[]:, \n\t\r\f/\\;#=");
        f9252v = aVar.c("\n\r");
        aVar.c("*/");
    }

    public d(f fVar) {
        this.f9253m = fVar;
        this.f9254n = ((d0) fVar).f6213i;
        p0(6);
    }

    public final String A0() throws IOException {
        long jS = this.f9253m.S(f9251u);
        return jS != -1 ? this.f9254n.q0(jS) : this.f9254n.p0();
    }

    public final char B0() throws IOException {
        int i10;
        int i11;
        if (!this.f9253m.o(1L)) {
            t0("Unterminated escape sequence");
            throw null;
        }
        byte b10 = this.f9254n.readByte();
        if (b10 == 10 || b10 == 34 || b10 == 39 || b10 == 47 || b10 == 92) {
            return (char) b10;
        }
        if (b10 == 98) {
            return '\b';
        }
        if (b10 == 102) {
            return '\f';
        }
        if (b10 == 110) {
            return '\n';
        }
        if (b10 == 114) {
            return '\r';
        }
        if (b10 == 116) {
            return '\t';
        }
        if (b10 != 117) {
            StringBuilder sbC = a0.b.c("Invalid escape sequence: \\");
            sbC.append((char) b10);
            t0(sbC.toString());
            throw null;
        }
        if (!this.f9253m.o(4L)) {
            StringBuilder sbC2 = a0.b.c("Unterminated escape sequence at path ");
            sbC2.append(h0());
            throw new EOFException(sbC2.toString());
        }
        char c10 = 0;
        for (int i12 = 0; i12 < 4; i12++) {
            byte bH0 = this.f9254n.h0(i12);
            char c11 = (char) (c10 << 4);
            if (bH0 < 48 || bH0 > 57) {
                if (bH0 >= 97 && bH0 <= 102) {
                    i10 = bH0 - 97;
                } else {
                    if (bH0 < 65 || bH0 > 70) {
                        StringBuilder sbC3 = a0.b.c("\\u");
                        sbC3.append(this.f9254n.q0(4L));
                        t0(sbC3.toString());
                        throw null;
                    }
                    i10 = bH0 - 65;
                }
                i11 = i10 + 10;
            } else {
                i11 = bH0 - 48;
            }
            c10 = (char) (i11 + c11);
        }
        this.f9254n.a(4L);
        return c10;
    }

    public final void C0(g gVar) throws IOException {
        while (true) {
            long jS = this.f9253m.S(gVar);
            if (jS == -1) {
                t0("Unterminated string");
                throw null;
            }
            if (this.f9254n.h0(jS) != 92) {
                this.f9254n.a(jS + 1);
                return;
            } else {
                this.f9254n.a(jS + 1);
                B0();
            }
        }
    }

    public final void D0() throws IOException {
        long jS = this.f9253m.S(f9251u);
        de.c cVar = this.f9254n;
        if (jS == -1) {
            jS = cVar.f6199i;
        }
        cVar.a(jS);
    }

    @Override // j2.c
    public final void Y() throws IOException {
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        if (iV0 == 1) {
            p0(3);
            this.f9255o = 0;
        } else {
            StringBuilder sbC = a0.b.c("Expected BEGIN_OBJECT but was ");
            sbC.append(com.nike.adapt.adk.model.a.e(o0()));
            sbC.append(" at path ");
            sbC.append(h0());
            throw new a(sbC.toString());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f9255o = 0;
        this.f9244i[0] = 8;
        this.f9243h = 1;
        this.f9254n.x();
        this.f9253m.close();
    }

    @Override // j2.c
    public final void f0() throws IOException {
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        if (iV0 != 4) {
            StringBuilder sbC = a0.b.c("Expected END_ARRAY but was ");
            sbC.append(com.nike.adapt.adk.model.a.e(o0()));
            sbC.append(" at path ");
            sbC.append(h0());
            throw new a(sbC.toString());
        }
        int i10 = this.f9243h - 1;
        this.f9243h = i10;
        int[] iArr = this.f9246k;
        int i11 = i10 - 1;
        iArr[i11] = iArr[i11] + 1;
        this.f9255o = 0;
    }

    @Override // j2.c
    public final void g0() throws IOException {
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        if (iV0 != 2) {
            StringBuilder sbC = a0.b.c("Expected END_OBJECT but was ");
            sbC.append(com.nike.adapt.adk.model.a.e(o0()));
            sbC.append(" at path ");
            sbC.append(h0());
            throw new a(sbC.toString());
        }
        int i10 = this.f9243h - 1;
        this.f9243h = i10;
        this.f9245j[i10] = null;
        int[] iArr = this.f9246k;
        int i11 = i10 - 1;
        iArr[i11] = iArr[i11] + 1;
        this.f9255o = 0;
    }

    @Override // j2.c
    public final boolean i0() throws IOException {
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        return (iV0 == 2 || iV0 == 4 || iV0 == 18) ? false : true;
    }

    @Override // j2.c
    public final boolean j0() throws IOException {
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        if (iV0 == 5) {
            this.f9255o = 0;
            int[] iArr = this.f9246k;
            int i10 = this.f9243h - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        }
        if (iV0 == 6) {
            this.f9255o = 0;
            int[] iArr2 = this.f9246k;
            int i11 = this.f9243h - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return false;
        }
        StringBuilder sbC = a0.b.c("Expected a boolean but was ");
        sbC.append(com.nike.adapt.adk.model.a.e(o0()));
        sbC.append(" at path ");
        sbC.append(h0());
        throw new a(sbC.toString());
    }

    @Override // j2.c
    public final double k0() throws IOException {
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        if (iV0 == 16) {
            this.f9255o = 0;
            int[] iArr = this.f9246k;
            int i10 = this.f9243h - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f9256p;
        }
        if (iV0 == 17) {
            this.f9258r = this.f9254n.q0(this.f9257q);
        } else if (iV0 == 9) {
            this.f9258r = z0(f9250t);
        } else if (iV0 == 8) {
            this.f9258r = z0(f9249s);
        } else if (iV0 == 10) {
            this.f9258r = A0();
        } else if (iV0 != 11) {
            StringBuilder sbC = a0.b.c("Expected a double but was ");
            sbC.append(com.nike.adapt.adk.model.a.e(o0()));
            sbC.append(" at path ");
            sbC.append(h0());
            throw new a(sbC.toString());
        }
        this.f9255o = 11;
        try {
            double d10 = Double.parseDouble(this.f9258r);
            if (Double.isNaN(d10) || Double.isInfinite(d10)) {
                throw new b("JSON forbids NaN and infinities: " + d10 + " at path " + h0());
            }
            this.f9258r = null;
            this.f9255o = 0;
            int[] iArr2 = this.f9246k;
            int i11 = this.f9243h - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return d10;
        } catch (NumberFormatException unused) {
            StringBuilder sbC2 = a0.b.c("Expected a double but was ");
            sbC2.append(this.f9258r);
            sbC2.append(" at path ");
            sbC2.append(h0());
            throw new a(sbC2.toString());
        }
    }

    @Override // j2.c
    public final int l0() throws IOException {
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        if (iV0 == 16) {
            long j10 = this.f9256p;
            int i10 = (int) j10;
            if (j10 == i10) {
                this.f9255o = 0;
                int[] iArr = this.f9246k;
                int i11 = this.f9243h - 1;
                iArr[i11] = iArr[i11] + 1;
                return i10;
            }
            StringBuilder sbC = a0.b.c("Expected an int but was ");
            sbC.append(this.f9256p);
            sbC.append(" at path ");
            sbC.append(h0());
            throw new a(sbC.toString());
        }
        if (iV0 == 17) {
            this.f9258r = this.f9254n.q0(this.f9257q);
        } else if (iV0 == 9 || iV0 == 8) {
            String strZ0 = iV0 == 9 ? z0(f9250t) : z0(f9249s);
            this.f9258r = strZ0;
            try {
                int i12 = Integer.parseInt(strZ0);
                this.f9255o = 0;
                int[] iArr2 = this.f9246k;
                int i13 = this.f9243h - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return i12;
            } catch (NumberFormatException unused) {
            }
        } else if (iV0 != 11) {
            StringBuilder sbC2 = a0.b.c("Expected an int but was ");
            sbC2.append(com.nike.adapt.adk.model.a.e(o0()));
            sbC2.append(" at path ");
            sbC2.append(h0());
            throw new a(sbC2.toString());
        }
        this.f9255o = 11;
        try {
            double d10 = Double.parseDouble(this.f9258r);
            int i14 = (int) d10;
            if (i14 != d10) {
                StringBuilder sbC3 = a0.b.c("Expected an int but was ");
                sbC3.append(this.f9258r);
                sbC3.append(" at path ");
                sbC3.append(h0());
                throw new a(sbC3.toString());
            }
            this.f9258r = null;
            this.f9255o = 0;
            int[] iArr3 = this.f9246k;
            int i15 = this.f9243h - 1;
            iArr3[i15] = iArr3[i15] + 1;
            return i14;
        } catch (NumberFormatException unused2) {
            StringBuilder sbC4 = a0.b.c("Expected an int but was ");
            sbC4.append(this.f9258r);
            sbC4.append(" at path ");
            sbC4.append(h0());
            throw new a(sbC4.toString());
        }
    }

    @Override // j2.c
    public final String m0() throws IOException {
        String strZ0;
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        if (iV0 == 14) {
            strZ0 = A0();
        } else if (iV0 == 13) {
            strZ0 = z0(f9250t);
        } else if (iV0 == 12) {
            strZ0 = z0(f9249s);
        } else {
            if (iV0 != 15) {
                StringBuilder sbC = a0.b.c("Expected a name but was ");
                sbC.append(com.nike.adapt.adk.model.a.e(o0()));
                sbC.append(" at path ");
                sbC.append(h0());
                throw new a(sbC.toString());
            }
            strZ0 = this.f9258r;
        }
        this.f9255o = 0;
        this.f9245j[this.f9243h - 1] = strZ0;
        return strZ0;
    }

    @Override // j2.c
    public final String n0() throws IOException {
        String strQ0;
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        if (iV0 == 10) {
            strQ0 = A0();
        } else if (iV0 == 9) {
            strQ0 = z0(f9250t);
        } else if (iV0 == 8) {
            strQ0 = z0(f9249s);
        } else if (iV0 == 11) {
            strQ0 = this.f9258r;
            this.f9258r = null;
        } else if (iV0 == 16) {
            strQ0 = Long.toString(this.f9256p);
        } else {
            if (iV0 != 17) {
                StringBuilder sbC = a0.b.c("Expected a string but was ");
                sbC.append(com.nike.adapt.adk.model.a.e(o0()));
                sbC.append(" at path ");
                sbC.append(h0());
                throw new a(sbC.toString());
            }
            strQ0 = this.f9254n.q0(this.f9257q);
        }
        this.f9255o = 0;
        int[] iArr = this.f9246k;
        int i10 = this.f9243h - 1;
        iArr[i10] = iArr[i10] + 1;
        return strQ0;
    }

    @Override // j2.c
    public final int o0() throws IOException {
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        switch (iV0) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
            case 15:
                return 5;
            case 16:
            case 17:
                return 7;
            case 18:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    @Override // j2.c
    public final int q0(c.a aVar) throws IOException {
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        if (iV0 < 12 || iV0 > 15) {
            return -1;
        }
        if (iV0 == 15) {
            return w0(this.f9258r, aVar);
        }
        int iV = this.f9253m.V(aVar.f9248b);
        if (iV != -1) {
            this.f9255o = 0;
            this.f9245j[this.f9243h - 1] = aVar.f9247a[iV];
            return iV;
        }
        String str = this.f9245j[this.f9243h - 1];
        String strM0 = m0();
        int iW0 = w0(strM0, aVar);
        if (iW0 == -1) {
            this.f9255o = 15;
            this.f9258r = strM0;
            this.f9245j[this.f9243h - 1] = str;
        }
        return iW0;
    }

    @Override // j2.c
    public final void r0() throws IOException {
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        if (iV0 == 14) {
            D0();
        } else if (iV0 == 13) {
            C0(f9250t);
        } else if (iV0 == 12) {
            C0(f9249s);
        } else if (iV0 != 15) {
            StringBuilder sbC = a0.b.c("Expected a name but was ");
            sbC.append(com.nike.adapt.adk.model.a.e(o0()));
            sbC.append(" at path ");
            sbC.append(h0());
            throw new a(sbC.toString());
        }
        this.f9255o = 0;
        this.f9245j[this.f9243h - 1] = SafeJsonPrimitive.NULL_STRING;
    }

    @Override // j2.c
    public final void s0() throws IOException {
        int i10 = 0;
        do {
            int iV0 = this.f9255o;
            if (iV0 == 0) {
                iV0 = v0();
            }
            if (iV0 == 3) {
                p0(1);
            } else {
                if (iV0 == 1) {
                    p0(3);
                } else if (iV0 == 4) {
                    i10--;
                    if (i10 < 0) {
                        StringBuilder sbC = a0.b.c("Expected a value but was ");
                        sbC.append(com.nike.adapt.adk.model.a.e(o0()));
                        sbC.append(" at path ");
                        sbC.append(h0());
                        throw new a(sbC.toString());
                    }
                    this.f9243h--;
                } else if (iV0 == 2) {
                    i10--;
                    if (i10 < 0) {
                        StringBuilder sbC2 = a0.b.c("Expected a value but was ");
                        sbC2.append(com.nike.adapt.adk.model.a.e(o0()));
                        sbC2.append(" at path ");
                        sbC2.append(h0());
                        throw new a(sbC2.toString());
                    }
                    this.f9243h--;
                } else if (iV0 == 14 || iV0 == 10) {
                    D0();
                } else if (iV0 == 9 || iV0 == 13) {
                    C0(f9250t);
                } else if (iV0 == 8 || iV0 == 12) {
                    C0(f9249s);
                } else if (iV0 == 17) {
                    this.f9254n.a(this.f9257q);
                } else if (iV0 == 18) {
                    StringBuilder sbC3 = a0.b.c("Expected a value but was ");
                    sbC3.append(com.nike.adapt.adk.model.a.e(o0()));
                    sbC3.append(" at path ");
                    sbC3.append(h0());
                    throw new a(sbC3.toString());
                }
                this.f9255o = 0;
            }
            i10++;
            this.f9255o = 0;
        } while (i10 != 0);
        int[] iArr = this.f9246k;
        int i11 = this.f9243h;
        int i12 = i11 - 1;
        iArr[i12] = iArr[i12] + 1;
        this.f9245j[i11 - 1] = SafeJsonPrimitive.NULL_STRING;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("JsonReader(");
        sbC.append(this.f9253m);
        sbC.append(")");
        return sbC.toString();
    }

    public final void u0() throws IOException {
        t0("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:137:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:149:0x01d4 A[DONT_INVERT, PHI: r2
      0x01d4: PHI (r2v21 char) = (r2v20 char), (r2v23 char) binds: [B:136:0x01ae, B:148:0x01d3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:150:0x01d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:163:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:165:0x01fb A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:167:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:174:0x020f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:175:0x0210  */
    /* JADX WARN: Code duplicated, block: B:177:0x021e  */
    /* JADX WARN: Code duplicated, block: B:179:0x0224  */
    /* JADX WARN: Code duplicated, block: B:234:0x020c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:235:0x0135 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x0124 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:88:0x0125  */
    /* JADX WARN: Code duplicated, block: B:92:0x0138  */
    /* JADX WARN: Code duplicated, block: B:94:0x0143  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final int v0() throws IOException {
        String str;
        String str2;
        int i10;
        byte bH0;
        boolean z10;
        int i11;
        char c10;
        int i12;
        char c11;
        int i13;
        byte bH1;
        char c12;
        char c13;
        int[] iArr = this.f9244i;
        int i14 = this.f9243h;
        int i15 = iArr[i14 - 1];
        char c14 = 2;
        if (i15 == 1) {
            iArr[i14 - 1] = 2;
        } else if (i15 == 2) {
            int iY0 = y0(true);
            this.f9254n.readByte();
            if (iY0 != 44) {
                if (iY0 == 59) {
                    u0();
                    throw null;
                }
                if (iY0 == 93) {
                    this.f9255o = 4;
                    return 4;
                }
                t0("Unterminated array");
                throw null;
            }
        } else {
            if (i15 == 3 || i15 == 5) {
                iArr[i14 - 1] = 4;
                if (i15 == 5) {
                    int iY1 = y0(true);
                    this.f9254n.readByte();
                    if (iY1 != 44) {
                        if (iY1 == 59) {
                            u0();
                            throw null;
                        }
                        if (iY1 == 125) {
                            this.f9255o = 2;
                            return 2;
                        }
                        t0("Unterminated object");
                        throw null;
                    }
                }
                int iY2 = y0(true);
                if (iY2 == 34) {
                    this.f9254n.readByte();
                    this.f9255o = 13;
                    return 13;
                }
                if (iY2 == 39) {
                    this.f9254n.readByte();
                    u0();
                    throw null;
                }
                if (iY2 != 125) {
                    u0();
                    throw null;
                }
                if (i15 == 5) {
                    t0("Expected name");
                    throw null;
                }
                this.f9254n.readByte();
                this.f9255o = 2;
                return 2;
            }
            if (i15 == 4) {
                iArr[i14 - 1] = 5;
                int iY3 = y0(true);
                this.f9254n.readByte();
                if (iY3 != 58) {
                    if (iY3 != 61) {
                        t0("Expected ':'");
                        throw null;
                    }
                    u0();
                    throw null;
                }
            } else if (i15 == 6) {
                iArr[i14 - 1] = 7;
            } else {
                if (i15 == 7) {
                    if (y0(false) == -1) {
                        this.f9255o = 18;
                        return 18;
                    }
                    u0();
                    throw null;
                }
                if (i15 == 8) {
                    throw new IllegalStateException("JsonReader is closed");
                }
            }
        }
        int iY4 = y0(true);
        if (iY4 == 34) {
            this.f9254n.readByte();
            this.f9255o = 9;
            return 9;
        }
        if (iY4 == 39) {
            u0();
            throw null;
        }
        if (iY4 != 44 && iY4 != 59) {
            if (iY4 == 91) {
                this.f9254n.readByte();
                this.f9255o = 3;
                return 3;
            }
            if (iY4 != 93) {
                if (iY4 == 123) {
                    this.f9254n.readByte();
                    this.f9255o = 1;
                    return 1;
                }
                byte bH2 = this.f9254n.h0(0L);
                if (bH2 == 116 || bH2 == 84) {
                    str = "true";
                    str2 = "TRUE";
                    i10 = 5;
                } else {
                    if (bH2 != 102 && bH2 != 70) {
                        if (bH2 == 110 || bH2 == 78) {
                            str = SafeJsonPrimitive.NULL_STRING;
                            str2 = "NULL";
                            i10 = 7;
                        } else {
                            i10 = 0;
                        }
                        if (i10 != 0) {
                            return i10;
                        }
                        long j10 = 0;
                        z10 = true;
                        i11 = 0;
                        c10 = 0;
                        boolean z11 = false;
                        while (true) {
                            i12 = i11 + 1;
                            if (this.f9253m.o(i12)) {
                                bH1 = this.f9254n.h0(i11);
                                if (bH1 != 43) {
                                    if (bH1 != 69 || bH1 == 101) {
                                        if (c10 != 2 || c10 == 4) {
                                            c10 = 5;
                                        } else {
                                            i13 = 0;
                                        }
                                    } else if (bH1 != 45) {
                                        if (bH1 != 46) {
                                            if (bH1 < 48 || bH1 > 57) {
                                                if (!x0(bH1)) {
                                                    c11 = 2;
                                                }
                                            } else if (c10 == 1 || c10 == 0) {
                                                j10 = -(bH1 - 48);
                                                c10 = 2;
                                            } else if (c10 == 2) {
                                                if (j10 != 0) {
                                                    long j11 = (10 * j10) - ((long) (bH1 - 48));
                                                    z10 = (j10 > -922337203685477580L || (j10 == -922337203685477580L && j11 < j10)) & z10;
                                                    j10 = j11;
                                                }
                                            } else if (c10 == 3) {
                                                c10 = 4;
                                            } else if (c10 == 5 || c10 == 6) {
                                                c10 = 7;
                                            }
                                        } else if (c10 == 2) {
                                            c13 = 3;
                                            c10 = c13;
                                        }
                                        i13 = 0;
                                    } else {
                                        c12 = 6;
                                        if (c10 == 0) {
                                            c10 = 1;
                                            z11 = true;
                                        } else {
                                            if (c10 != 5) {
                                                i13 = 0;
                                            }
                                            c13 = c12;
                                            c10 = c13;
                                        }
                                    }
                                    if (i13 != 0) {
                                        return i13;
                                    }
                                    if (x0(this.f9254n.h0(0L))) {
                                        u0();
                                        throw null;
                                    }
                                    t0("Expected value");
                                    throw null;
                                }
                                c12 = 6;
                                if (c10 != 5) {
                                    i13 = 0;
                                    if (i13 != 0) {
                                        return i13;
                                    }
                                    if (x0(this.f9254n.h0(0L))) {
                                        t0("Expected value");
                                        throw null;
                                    }
                                    u0();
                                    throw null;
                                }
                                c13 = c12;
                                c10 = c13;
                                i11 = i12;
                                c14 = 2;
                            } else {
                                c11 = c14;
                            }
                            if (c10 != c11) {
                                if (c10 != c11 || c10 == 4 || c10 == 7) {
                                    this.f9257q = i11;
                                    i13 = 17;
                                    this.f9255o = 17;
                                } else {
                                    i13 = 0;
                                }
                            } else if (z10 || ((j10 == Long.MIN_VALUE && !z11) || (j10 == 0 && z11))) {
                                c11 = 2;
                                if (c10 != c11) {
                                }
                                this.f9257q = i11;
                                i13 = 17;
                                this.f9255o = 17;
                            } else {
                                if (!z11) {
                                    j10 = -j10;
                                }
                                this.f9256p = j10;
                                this.f9254n.a(i11);
                                i13 = 16;
                                this.f9255o = 16;
                            }
                            if (i13 != 0) {
                                return i13;
                            }
                            if (x0(this.f9254n.h0(0L))) {
                                t0("Expected value");
                                throw null;
                            }
                            u0();
                            throw null;
                        }
                    }
                    str = "false";
                    str2 = "FALSE";
                    i10 = 6;
                }
                int length = str.length();
                int i16 = 1;
                while (true) {
                    if (i16 >= length) {
                        if (!this.f9253m.o(length + 1) || !x0(this.f9254n.h0(length))) {
                            this.f9254n.a(length);
                            this.f9255o = i10;
                            break;
                        }
                    } else {
                        int i17 = i16 + 1;
                        if (this.f9253m.o(i17) && ((bH0 = this.f9254n.h0(i16)) == str.charAt(i16) || bH0 == str2.charAt(i16))) {
                            i16 = i17;
                        }
                    }
                    i10 = 0;
                    break;
                }
                if (i10 != 0) {
                    return i10;
                }
                long j12 = 0;
                z10 = true;
                i11 = 0;
                c10 = 0;
                boolean z12 = false;
                while (true) {
                    i12 = i11 + 1;
                    if (this.f9253m.o(i12)) {
                        c11 = c14;
                    } else {
                        bH1 = this.f9254n.h0(i11);
                        if (bH1 != 43) {
                            if (bH1 != 69) {
                                if (c10 != 2) {
                                }
                                c10 = 5;
                            } else {
                                if (c10 != 2) {
                                }
                                c10 = 5;
                            }
                            if (i13 != 0) {
                                return i13;
                            }
                            if (x0(this.f9254n.h0(0L))) {
                                t0("Expected value");
                                throw null;
                            }
                            u0();
                            throw null;
                        }
                        c12 = 6;
                        if (c10 != 5) {
                            i13 = 0;
                            if (i13 != 0) {
                                return i13;
                            }
                            if (x0(this.f9254n.h0(0L))) {
                                t0("Expected value");
                                throw null;
                            }
                            u0();
                            throw null;
                        }
                        c13 = c12;
                        c10 = c13;
                        i11 = i12;
                        c14 = 2;
                    }
                    if (c10 != c11) {
                        if (c10 != c11) {
                        }
                        this.f9257q = i11;
                        i13 = 17;
                        this.f9255o = 17;
                    } else {
                        if (z10) {
                        }
                        c11 = 2;
                        if (c10 != c11) {
                        }
                        this.f9257q = i11;
                        i13 = 17;
                        this.f9255o = 17;
                    }
                    if (i13 != 0) {
                        return i13;
                    }
                    if (x0(this.f9254n.h0(0L))) {
                        t0("Expected value");
                        throw null;
                    }
                    u0();
                    throw null;
                }
            }
            if (i15 == 1) {
                this.f9254n.readByte();
                this.f9255o = 4;
                return 4;
            }
        }
        if (i15 == 1 || i15 == 2) {
            u0();
            throw null;
        }
        t0("Unexpected value");
        throw null;
    }

    public final int w0(String str, c.a aVar) {
        int length = aVar.f9247a.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (str.equals(aVar.f9247a[i10])) {
                this.f9255o = 0;
                this.f9245j[this.f9243h - 1] = str;
                return i10;
            }
        }
        return -1;
    }

    @Override // j2.c
    public final void x() throws IOException {
        int iV0 = this.f9255o;
        if (iV0 == 0) {
            iV0 = v0();
        }
        if (iV0 == 3) {
            p0(1);
            this.f9246k[this.f9243h - 1] = 0;
            this.f9255o = 0;
        } else {
            StringBuilder sbC = a0.b.c("Expected BEGIN_ARRAY but was ");
            sbC.append(com.nike.adapt.adk.model.a.e(o0()));
            sbC.append(" at path ");
            sbC.append(h0());
            throw new a(sbC.toString());
        }
    }

    public final boolean x0(int i10) throws IOException {
        if (i10 == 9 || i10 == 10 || i10 == 12 || i10 == 13 || i10 == 32) {
            return false;
        }
        if (i10 != 35) {
            if (i10 == 44) {
                return false;
            }
            if (i10 != 47 && i10 != 61) {
                if (i10 == 123 || i10 == 125 || i10 == 58) {
                    return false;
                }
                if (i10 != 59) {
                    switch (i10) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        u0();
        throw null;
    }

    public final int y0(boolean z10) throws IOException {
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!this.f9253m.o(i11)) {
                if (z10) {
                    throw new EOFException("End of input");
                }
                return -1;
            }
            byte bH0 = this.f9254n.h0(i10);
            if (bH0 != 10 && bH0 != 32 && bH0 != 13 && bH0 != 9) {
                this.f9254n.a(i11 - 1);
                if (bH0 == 47) {
                    if (!this.f9253m.o(2L)) {
                        return bH0;
                    }
                    u0();
                    throw null;
                }
                if (bH0 != 35) {
                    return bH0;
                }
                u0();
                throw null;
            }
            i10 = i11;
        }
    }

    public final String z0(g gVar) throws IOException {
        StringBuilder sb2 = null;
        while (true) {
            long jS = this.f9253m.S(gVar);
            if (jS == -1) {
                t0("Unterminated string");
                throw null;
            }
            if (this.f9254n.h0(jS) != 92) {
                if (sb2 == null) {
                    String strQ0 = this.f9254n.q0(jS);
                    this.f9254n.readByte();
                    return strQ0;
                }
                sb2.append(this.f9254n.q0(jS));
                this.f9254n.readByte();
                return sb2.toString();
            }
            if (sb2 == null) {
                sb2 = new StringBuilder();
            }
            sb2.append(this.f9254n.q0(jS));
            this.f9254n.readByte();
            sb2.append(B0());
        }
    }
}
