package okhttp3.internal.cache2;

import de.c;
import java.io.IOException;
import java.nio.channels.FileChannel;
import p4.h;

/* JADX INFO: compiled from: FileOperator.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FileOperator {
    private final FileChannel fileChannel;

    public FileOperator(FileChannel fileChannel) {
        h.j(fileChannel, "fileChannel");
        this.fileChannel = fileChannel;
    }

    public final void read(long j10, c cVar, long j11) throws IOException {
        h.j(cVar, "sink");
        if (j11 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j11 > 0) {
            long jTransferTo = this.fileChannel.transferTo(j10, j11, cVar);
            j10 += jTransferTo;
            j11 -= jTransferTo;
        }
    }

    public final void write(long j10, c cVar, long j11) throws IOException {
        h.j(cVar, "source");
        if (j11 < 0 || j11 > cVar.f6199i) {
            throw new IndexOutOfBoundsException();
        }
        while (j11 > 0) {
            long jTransferFrom = this.fileChannel.transferFrom(cVar, j10, j11);
            j10 += jTransferFrom;
            j11 -= jTransferFrom;
        }
    }
}
