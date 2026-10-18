package a1;

import android.database.Cursor;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.spi.AbstractInterruptibleChannel;
import java.util.ArrayList;

/* JADX INFO: compiled from: DBUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static void a(d1.b bVar) {
        ArrayList<String> arrayList = new ArrayList();
        e1.a aVar = (e1.a) bVar;
        Cursor cursorB0 = aVar.b0("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (cursorB0.moveToNext()) {
            try {
                arrayList.add(cursorB0.getString(0));
            } catch (Throwable th) {
                cursorB0.close();
                throw th;
            }
        }
        cursorB0.close();
        for (String str : arrayList) {
            if (str.startsWith("room_fts_content_sync_")) {
                aVar.k("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }

    public static int b(File file) throws IOException {
        AbstractInterruptibleChannel abstractInterruptibleChannel = null;
        try {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            FileChannel channel = new FileInputStream(file).getChannel();
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(byteBufferAllocate) != 4) {
                throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
            }
            byteBufferAllocate.rewind();
            int i10 = byteBufferAllocate.getInt();
            channel.close();
            return i10;
        } catch (Throwable th) {
            if (0 != 0) {
                abstractInterruptibleChannel.close();
            }
            throw th;
        }
    }
}
