package r0;

import android.text.Editable;
import android.text.Selection;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.TextView;

/* JADX INFO: compiled from: EmojiInputConnection.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends InputConnectionWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f14182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f14183b;

    /* JADX INFO: compiled from: EmojiInputConnection.java */
    public static class a {
        public final boolean a(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
            int iMin;
            Object obj = androidx.emoji2.text.a.f1800a;
            if (editable == null || inputConnection == null || i10 < 0 || i11 < 0) {
                return false;
            }
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart == -1 || selectionEnd == -1 || selectionStart != selectionEnd) {
                return false;
            }
            if (z10) {
                int iMax = Math.max(i10, 0);
                int length = editable.length();
                if (selectionStart >= 0 && length >= selectionStart && iMax >= 0) {
                    loop0: while (true) {
                        boolean z11 = false;
                        while (true) {
                            if (iMax == 0) {
                                break loop0;
                            }
                            selectionStart--;
                            if (selectionStart < 0) {
                                if (!z11) {
                                    selectionStart = 0;
                                    break loop0;
                                }
                                break;
                            }
                            char cCharAt = editable.charAt(selectionStart);
                            if (z11) {
                                if (Character.isHighSurrogate(cCharAt)) {
                                    iMax--;
                                }
                            } else if (!Character.isSurrogate(cCharAt)) {
                                iMax--;
                            } else if (!Character.isHighSurrogate(cCharAt)) {
                                z11 = true;
                            }
                            selectionStart = -1;
                            break;
                        }
                    }
                }
                selectionStart = -1;
                break;
                int iMax2 = Math.max(i11, 0);
                iMin = editable.length();
                if (selectionEnd >= 0 && iMin >= selectionEnd && iMax2 >= 0) {
                    loop2: while (true) {
                        boolean z12 = false;
                        while (true) {
                            if (iMax2 != 0) {
                                if (selectionEnd >= iMin) {
                                    if (!z12) {
                                        break loop2;
                                    }
                                    break loop2;
                                }
                                char cCharAt2 = editable.charAt(selectionEnd);
                                if (z12) {
                                    if (Character.isLowSurrogate(cCharAt2)) {
                                        iMax2--;
                                        selectionEnd++;
                                    }
                                } else if (!Character.isSurrogate(cCharAt2)) {
                                    iMax2--;
                                    selectionEnd++;
                                } else if (!Character.isLowSurrogate(cCharAt2)) {
                                    selectionEnd++;
                                    z12 = true;
                                }
                                iMin = -1;
                                break loop2;
                            }
                            iMin = selectionEnd;
                            break loop2;
                        }
                    }
                }
                iMin = -1;
                break loop2;
                if (selectionStart == -1 || iMin == -1) {
                    return false;
                }
            } else {
                selectionStart = Math.max(selectionStart - i10, 0);
                iMin = Math.min(selectionEnd + i11, editable.length());
            }
            androidx.emoji2.text.c[] cVarArr = (androidx.emoji2.text.c[]) editable.getSpans(selectionStart, iMin, androidx.emoji2.text.c.class);
            if (cVarArr == null || cVarArr.length <= 0) {
                return false;
            }
            for (androidx.emoji2.text.c cVar : cVarArr) {
                int spanStart = editable.getSpanStart(cVar);
                int spanEnd = editable.getSpanEnd(cVar);
                selectionStart = Math.min(spanStart, selectionStart);
                iMin = Math.max(spanEnd, iMin);
            }
            int iMax3 = Math.max(selectionStart, 0);
            int iMin2 = Math.min(iMin, editable.length());
            inputConnection.beginBatchEdit();
            editable.delete(iMax3, iMin2);
            inputConnection.endBatchEdit();
            return true;
        }
    }

    public c(TextView textView, InputConnection inputConnection) {
        a aVar = new a();
        super(inputConnection, false);
        this.f14182a = textView;
        this.f14183b = aVar;
        Object obj = androidx.emoji2.text.a.f1800a;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i10, int i11) {
        return this.f14183b.a(this, this.f14182a.getEditableText(), i10, i11, false) || super.deleteSurroundingText(i10, i11);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i10, int i11) {
        return this.f14183b.a(this, this.f14182a.getEditableText(), i10, i11, true) || super.deleteSurroundingTextInCodePoints(i10, i11);
    }
}
