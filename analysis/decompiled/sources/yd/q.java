package yd;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q extends rd.o implements qd.p<CharSequence, Integer, fd.e<? extends Integer, ? extends Integer>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ List<String> f19202h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f19203i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(List<String> list, boolean z10) {
        super(2);
        this.f19202h = list;
        this.f19203i = z10;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00de A[EDGE_INSN: B:56:0x00de->B:57:0x00df BREAK  A[LOOP:0: B:27:0x006a->B:38:0x009d]] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // qd.p
    public final fd.e<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
        Object next;
        fd.e eVar;
        String str;
        Object next2;
        String str2;
        CharSequence charSequence2 = charSequence;
        int iIntValue = num.intValue();
        p4.h.j(charSequence2, "$this$$receiver");
        List<String> list = this.f19202h;
        boolean z10 = this.f19203i;
        if (z10 || list.size() != 1) {
            if (iIntValue < 0) {
                iIntValue = 0;
            }
            vd.e eVar2 = new vd.e(iIntValue, charSequence2.length());
            if (!(charSequence2 instanceof String)) {
                int i10 = eVar2.f17022i;
                int i11 = eVar2.f17023j;
                if ((i11 > 0 && iIntValue <= i10) || (i11 < 0 && i10 <= iIntValue)) {
                    while (true) {
                        Iterator<T> it = list.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                            str = (String) next;
                        } while (!s.v0(str, 0, charSequence2, iIntValue, str.length(), z10));
                        String str3 = (String) next;
                        if (str3 == null) {
                            if (iIntValue == i10) {
                                eVar = null;
                                break;
                            }
                            iIntValue += i11;
                        } else {
                            eVar = new fd.e(Integer.valueOf(iIntValue), str3);
                            break;
                        }
                    }
                } else {
                    eVar = null;
                    break;
                }
            } else {
                int i12 = eVar2.f17022i;
                int i13 = eVar2.f17023j;
                if ((i13 > 0 && iIntValue <= i12) || (i13 < 0 && i12 <= iIntValue)) {
                    while (true) {
                        Iterator<T> it2 = list.iterator();
                        do {
                            if (!it2.hasNext()) {
                                next2 = null;
                                break;
                            }
                            next2 = it2.next();
                            str2 = (String) next2;
                        } while (!o.c0(str2, 0, (String) charSequence2, iIntValue, str2.length(), z10));
                        String str4 = (String) next2;
                        if (str4 == null) {
                            if (iIntValue == i12) {
                                eVar = null;
                                break;
                            }
                            iIntValue += i13;
                        } else {
                            eVar = new fd.e(Integer.valueOf(iIntValue), str4);
                            break;
                        }
                    }
                } else {
                    eVar = null;
                    break;
                }
            }
        } else {
            int size = list.size();
            if (size == 0) {
                throw new NoSuchElementException("List is empty.");
            }
            if (size != 1) {
                throw new IllegalArgumentException("List has more than one element.");
            }
            String str5 = list.get(0);
            int iP0 = s.p0(charSequence2, str5, iIntValue, false, 4);
            if (iP0 < 0) {
                eVar = null;
                break;
            }
            eVar = new fd.e(Integer.valueOf(iP0), str5);
        }
        if (eVar != null) {
            return new fd.e<>(eVar.f7388h, Integer.valueOf(((String) eVar.f7389i).length()));
        }
        return null;
    }
}
